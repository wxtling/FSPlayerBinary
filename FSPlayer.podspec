Pod::Spec.new do |spec|
  spec.name         = "FSPlayer"
  spec.version      = "1.0.3"
  spec.summary      = "FSPlayer is a free (as in freedom) media player for iOS and macOS and tvOS apps."
  spec.description  = <<-DESC
                      FSPlayer is a free (as in freedom) media player for iOS and macOS and tvOS apps.

                      It supports a wide variety of media file formats, audio and video codecs, and subtitle types.
                      DESC
  spec.homepage     = "https://github.com/debugly/fsplayer"
  spec.documentation_url = "https://github.com/debugly/fsplayer"
  spec.social_media_url = "https://github.com/debugly/fsplayer"
  spec.license      = { :type => "LGPL", :file => "FSPlayer/LICENSE" }
  spec.author       = { "MattReach" => "qianlongxu@gmail.com" }
  spec.platforms    = { 
    :ios => "12.0", 
    :osx => "10.11", 
    :tvos => "12.0" 
  }
  spec.source       = { :http => "https://github.com/debugly/fsplayer/releases/download/1.0.3/FSPlayer.zip" }
  
  # 保留的文件
  spec.preserve_paths = [
    "FSPlayer/README.md",
    "FSPlayer/CHANGELOG.md",
    "FSPlayer/LICENSE"
  ]
  
  # 主要的框架文件
  spec.vendored_frameworks = "FSPlayer.xcframework"
  
  # 系统库依赖
  spec.libraries = [
    "z",
    "iconv",
    "xml2",
    "bz2",
    "c++",
    "lzma"
  ]
  
  # 通用框架依赖
  spec.frameworks = [
    "AVFoundation",
    "AudioToolbox",
    "CoreMedia",
    "CoreVideo",
    "VideoToolbox",
    "Metal"
  ]
  
  # macOS特定框架
  spec.osx.frameworks = [
    "Cocoa",
    "AudioUnit",
    "OpenGL",
    "GLKit",
    "CoreImage"
  ]
  
  # tvOS特定框架
  spec.tvos.frameworks = [
    "UIKit",
    "OpenGLES"
  ]
  
  # iOS特定框架
  spec.ios.frameworks = [
    "UIKit",
    "OpenGLES"
  ]
end