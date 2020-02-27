Pod::Spec.new do |s|
  s.name = 'UtilsKit'
  s.version = '1.0.3'
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2012 - 2019 RGMC . All rights reserved.
      LICENSE
  }
  s.homepage = "https://github.com/rgmc95/UtilsKit"
  s.author = "Romain Gjura & Michael Coqueret"
  s.summary = "Swift Utilities"
  s.swift_version = '5.1'
  s.source =  { :git => "https://github.com/rgmc95/UtilsKit.git", :tag => "1.0.3" }
  s.default_subspec = 'Core'

  s.ios.deployment_target = '10.0'

  s.subspec 'Core' do |core|
    core.source_files = 'UtilsKit/Helpers/**/*.{h,m,swift}',  'UtilsKit/UI/**/*.{h,m,swift}'
  end

  s.subspec 'CoreExtension' do |ext|
    ext.dependency "UtilsKit/Core"
    ext.pod_target_xcconfig = { 'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => 'APP_EXTENSION' }
  end

  s.subspec 'CoreData' do |ext|
    ext.dependency "UtilsKit/Core"
    ext.source_files = 'UtilsKit/CoreData/**/*.{h,m,swift}'
  end

  s.subspec 'Network' do |ext|
    ext.dependency "UtilsKit/CoreData"
    ext.source_files = 'UtilsKit/Network/**/*.{h,m,swift}'
  end

end

