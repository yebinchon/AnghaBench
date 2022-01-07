; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fbdev_generic_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fbdev_generic_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_fb_helper = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"fb_helper is already set!\0A\00", align 1
@drm_fbdev_emulation = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"fbdev\00", align 1
@drm_fbdev_client_funcs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to register client: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"client hotplug ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fbdev_generic_setup(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @WARN(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @drm_fbdev_emulation, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.drm_fb_helper* @kzalloc(i32 8, i32 %16)
  store %struct.drm_fb_helper* %17, %struct.drm_fb_helper** %6, align 8
  %18 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %19 = icmp ne %struct.drm_fb_helper* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %70

23:                                               ; preds = %15
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %26 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %25, i32 0, i32 1
  %27 = call i32 @drm_client_init(%struct.drm_device* %24, i32* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* @drm_fbdev_client_funcs)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %32 = call i32 @kfree(%struct.drm_fb_helper* %31)
  %33 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @DRM_DEV_ERROR(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %70

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %39
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 32, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %54 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %56 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %55, i32 0, i32 1
  %57 = call i32 @drm_fbdev_client_hotplug(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @DRM_DEV_DEBUG(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %51
  %67 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %68 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %67, i32 0, i32 1
  %69 = call i32 @drm_client_register(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %30, %20, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local %struct.drm_fb_helper* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_client_init(%struct.drm_device*, i32*, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.drm_fb_helper*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @drm_fbdev_client_hotplug(i32*) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @drm_client_register(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
