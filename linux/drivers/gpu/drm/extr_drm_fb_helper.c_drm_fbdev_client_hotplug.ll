; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fbdev_client_hotplug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fbdev_client_hotplug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_client_dev = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_fb_helper = type { i32*, i32*, i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"No connectors found, will not create framebuffer!\0A\00", align 1
@drm_fb_helper_generic_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"fbdev: Failed to setup generic emulation (ret=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_client_dev*)* @drm_fbdev_client_hotplug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_fbdev_client_hotplug(%struct.drm_client_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_client_dev*, align 8
  %4 = alloca %struct.drm_fb_helper*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_client_dev* %0, %struct.drm_client_dev** %3, align 8
  %7 = load %struct.drm_client_dev*, %struct.drm_client_dev** %3, align 8
  %8 = call %struct.drm_fb_helper* @drm_fb_helper_from_client(%struct.drm_client_dev* %7)
  store %struct.drm_fb_helper* %8, %struct.drm_fb_helper** %4, align 8
  %9 = load %struct.drm_client_dev*, %struct.drm_client_dev** %3, align 8
  %10 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %18 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %84

22:                                               ; preds = %16, %1
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @drm_fb_helper_hotplug_event(i64 %30)
  store i32 %31, i32* %2, align 4
  br label %84

32:                                               ; preds = %22
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @DRM_DEV_DEBUG(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %84

43:                                               ; preds = %32
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %46 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %44, %struct.drm_fb_helper* %45, i32* @drm_fb_helper_generic_funcs)
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %49 = call i32 @drm_fb_helper_init(%struct.drm_device* %47, %struct.drm_fb_helper* %48, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %73

53:                                               ; preds = %43
  %54 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %55 = call i32 @drm_drv_uses_atomic_modeset(%struct.drm_device* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %59 = call i32 @drm_helper_disable_unused_functions(%struct.drm_device* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %62 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %63 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %61, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %70

69:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %84

70:                                               ; preds = %68
  %71 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %72 = call i32 @drm_fbdev_cleanup(%struct.drm_fb_helper* %71)
  br label %73

73:                                               ; preds = %70, %52
  %74 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %75 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %4, align 8
  %77 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %76, i32 0, i32 0
  store i32* null, i32** %77, align 8
  %78 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %79 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @DRM_DEV_ERROR(i32 %80, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %73, %69, %38, %27, %21
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.drm_fb_helper* @drm_fb_helper_from_client(%struct.drm_client_dev*) #1

declare dso_local i32 @drm_fb_helper_hotplug_event(i64) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.drm_fb_helper*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fbdev_cleanup(%struct.drm_fb_helper*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
