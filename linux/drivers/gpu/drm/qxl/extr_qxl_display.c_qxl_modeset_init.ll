; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_modeset_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_modeset_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64, i8* }

@qxl_mode_funcs = common dso_local global i32 0, align 4
@qxl_num_crtc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qxl_modeset_init(%struct.qxl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  %6 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %7 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %6, i32 0, i32 0
  %8 = call i32 @drm_mode_config_init(%struct.TYPE_8__* %7)
  %9 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %10 = call i32 @qxl_create_monitors_object(%struct.qxl_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %17 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 5
  store i8* bitcast (i32* @qxl_mode_funcs to i8*), i8** %19, align 8
  %20 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %21 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %25 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %29 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 8192, i32* %31, align 8
  %32 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %33 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 8192, i32* %35, align 4
  %36 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %37 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %40 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %44 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %43, i32 0, i32 0
  %45 = call i32 @drm_mode_create_suggested_offset_properties(%struct.TYPE_8__* %44)
  %46 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %47 = call i32 @qxl_mode_create_hotplug_mode_update_property(%struct.qxl_device* %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %61, %15
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @qxl_num_crtc, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %54 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %53, i32 0, i32 0
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @qdev_crtc_init(%struct.TYPE_8__* %54, i32 %55)
  %57 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %58 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @qdev_output_init(%struct.TYPE_8__* %58, i32 %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %66 = call i32 @qxl_display_read_client_monitors_config(%struct.qxl_device* %65)
  %67 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %68 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %67, i32 0, i32 0
  %69 = call i32 @drm_mode_config_reset(%struct.TYPE_8__* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %64, %13
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @drm_mode_config_init(%struct.TYPE_8__*) #1

declare dso_local i32 @qxl_create_monitors_object(%struct.qxl_device*) #1

declare dso_local i32 @drm_mode_create_suggested_offset_properties(%struct.TYPE_8__*) #1

declare dso_local i32 @qxl_mode_create_hotplug_mode_update_property(%struct.qxl_device*) #1

declare dso_local i32 @qdev_crtc_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @qdev_output_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @qxl_display_read_client_monitors_config(%struct.qxl_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
