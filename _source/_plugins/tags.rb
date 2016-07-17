module Jekyll
  class IconsTag < Liquid::Tag
    def initialize(tag_name, icons, tokens)
      super
      arguments = icons.split(",")
      @icons  = arguments[0].strip

      if arguments.size > 1
        @filetype = arguments[1].strip
      else
        @filetype = "png"
      end
    end

    def render(context)
      %|<img src="/assets/images/icons/#{@icons}.#{@filetype}" class="icon">|
    end

    Liquid::Template.register_tag "icons", self
  end

  class SharesTag < Liquid::Tag
    def initialize(tag_name, shares, tokens)
      super
      arguments = shares.split(",")
      @path     = arguments[0].strip
      @shares  = arguments[1].strip

      if arguments.size > 2
        @filetype = arguments[2].strip
      else
        @filetype = "png"
      end
    end

    def render(context)
      %|<img src="/assets/images/shares/#{@path}/#{@shares}.#{@filetype}">|
    end

    Liquid::Template.register_tag "shares", self
  end

  class ProjectTag < Liquid::Tag
    def initialize(tag_name, project, tokens)
      super
      arguments = project.split(",")
      @path     = arguments[0].strip
      @project  = arguments[1].strip

      if arguments.size > 2
        @filetype = arguments[2].strip
      else
        @filetype = "png"
      end
    end

    def render(context)
      %|<img src="/assets/images/projects/#{@path}/#{@project}.#{@filetype}">|
    end

    Liquid::Template.register_tag "project", self
  end
end