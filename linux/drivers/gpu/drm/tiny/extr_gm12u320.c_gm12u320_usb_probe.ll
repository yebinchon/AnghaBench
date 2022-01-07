; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_gm12u320.c_gm12u320_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.usb_device_id = type { i32 }
%struct.gm12u320_device = type { i32, i32, %struct.drm_device, %struct.TYPE_7__, i32 }
%struct.drm_device = type { %struct.TYPE_8__, %struct.gm12u320_device* }
%struct.TYPE_8__ = type { i32*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gm12u320_fb_update_work = common dso_local global i32 0, align 4
@gm12u320_drm_driver = common dso_local global i32 0, align 4
@GM12U320_USER_WIDTH = common dso_local global i8* null, align 8
@GM12U320_HEIGHT = common dso_local global i8* null, align 8
@gm12u320_mode_config_funcs = common dso_local global i32 0, align 4
@gm12u320_pipe_funcs = common dso_local global i32 0, align 4
@gm12u320_pipe_formats = common dso_local global i32 0, align 4
@gm12u320_pipe_modifiers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @gm12u320_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gm12u320_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.gm12u320_device*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %132

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.gm12u320_device* @kzalloc(i32 72, i32 %20)
  store %struct.gm12u320_device* %21, %struct.gm12u320_device** %6, align 8
  %22 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %23 = icmp eq %struct.gm12u320_device* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %132

27:                                               ; preds = %19
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = call i32 @interface_to_usbdev(%struct.usb_interface* %28)
  %30 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %31 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %33 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i32, i32* @gm12u320_fb_update_work, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %38 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %42 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @init_waitqueue_head(i32* %43)
  %45 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %46 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %45, i32 0, i32 2
  store %struct.drm_device* %46, %struct.drm_device** %7, align 8
  %47 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %48 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %49 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %48, i32 0, i32 0
  %50 = call i32 @drm_dev_init(%struct.drm_device* %47, i32* @gm12u320_drm_driver, i32* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %27
  %54 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %55 = call i32 @kfree(%struct.gm12u320_device* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %132

57:                                               ; preds = %27
  %58 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %59 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 1
  store %struct.gm12u320_device* %58, %struct.gm12u320_device** %60, align 8
  %61 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %62 = call i32 @drm_mode_config_init(%struct.drm_device* %61)
  %63 = load i8*, i8** @GM12U320_USER_WIDTH, align 8
  %64 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %65 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  store i8* %63, i8** %66, align 8
  %67 = load i8*, i8** @GM12U320_USER_WIDTH, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i8* %67, i8** %70, align 8
  %71 = load i8*, i8** @GM12U320_HEIGHT, align 8
  %72 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i8* %71, i8** %74, align 8
  %75 = load i8*, i8** @GM12U320_HEIGHT, align 8
  %76 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  %79 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32* @gm12u320_mode_config_funcs, i32** %81, align 8
  %82 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %83 = call i32 @gm12u320_usb_alloc(%struct.gm12u320_device* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %57
  br label %128

87:                                               ; preds = %57
  %88 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %89 = call i32 @gm12u320_set_ecomode(%struct.gm12u320_device* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %128

93:                                               ; preds = %87
  %94 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %95 = call i32 @gm12u320_conn_init(%struct.gm12u320_device* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %128

99:                                               ; preds = %93
  %100 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %101 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %100, i32 0, i32 2
  %102 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %103 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %102, i32 0, i32 1
  %104 = load i32, i32* @gm12u320_pipe_formats, align 4
  %105 = load i32, i32* @gm12u320_pipe_formats, align 4
  %106 = call i32 @ARRAY_SIZE(i32 %105)
  %107 = load i32, i32* @gm12u320_pipe_modifiers, align 4
  %108 = load %struct.gm12u320_device*, %struct.gm12u320_device** %6, align 8
  %109 = getelementptr inbounds %struct.gm12u320_device, %struct.gm12u320_device* %108, i32 0, i32 0
  %110 = call i32 @drm_simple_display_pipe_init(%struct.drm_device* %101, i32* %103, i32* @gm12u320_pipe_funcs, i32 %104, i32 %106, i32 %107, i32* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %128

114:                                              ; preds = %99
  %115 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %116 = call i32 @drm_mode_config_reset(%struct.drm_device* %115)
  %117 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %118 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %119 = call i32 @usb_set_intfdata(%struct.usb_interface* %117, %struct.drm_device* %118)
  %120 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %121 = call i32 @drm_dev_register(%struct.drm_device* %120, i32 0)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %128

125:                                              ; preds = %114
  %126 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %127 = call i32 @drm_fbdev_generic_setup(%struct.drm_device* %126, i32 0)
  store i32 0, i32* %3, align 4
  br label %132

128:                                              ; preds = %124, %113, %98, %92, %86
  %129 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %130 = call i32 @drm_dev_put(%struct.drm_device* %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %125, %53, %24, %16
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.gm12u320_device* @kzalloc(i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @drm_dev_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.gm12u320_device*) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @gm12u320_usb_alloc(%struct.gm12u320_device*) #1

declare dso_local i32 @gm12u320_set_ecomode(%struct.gm12u320_device*) #1

declare dso_local i32 @gm12u320_conn_init(%struct.gm12u320_device*) #1

declare dso_local i32 @drm_simple_display_pipe_init(%struct.drm_device*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
