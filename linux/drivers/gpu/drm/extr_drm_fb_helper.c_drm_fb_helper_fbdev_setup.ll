; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fbdev_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_fbdev_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_fb_helper = type { i32 }
%struct.drm_fb_helper_funcs = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"fbdev: Failed to initialize (ret=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"fbdev: Failed to set configuration (ret=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_fbdev_setup(%struct.drm_device* %0, %struct.drm_fb_helper* %1, %struct.drm_fb_helper_funcs* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_fb_helper*, align 8
  %9 = alloca %struct.drm_fb_helper_funcs*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_fb_helper* %1, %struct.drm_fb_helper** %8, align 8
  store %struct.drm_fb_helper_funcs* %2, %struct.drm_fb_helper_funcs** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %15, %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 32, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %26 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %27 = load %struct.drm_fb_helper_funcs*, %struct.drm_fb_helper_funcs** %9, align 8
  %28 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %25, %struct.drm_fb_helper* %26, %struct.drm_fb_helper_funcs* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %30 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %31 = call i32 @drm_fb_helper_init(%struct.drm_device* %29, %struct.drm_fb_helper* %30, i32 0)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @DRM_DEV_ERROR(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %65

41:                                               ; preds = %24
  %42 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %43 = call i32 @drm_drv_uses_atomic_modeset(%struct.drm_device* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %47 = call i32 @drm_helper_disable_unused_functions(%struct.drm_device* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %8, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %49, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @DRM_DEV_ERROR(i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %61

60:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %65

61:                                               ; preds = %54
  %62 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %63 = call i32 @drm_fb_helper_fbdev_teardown(%struct.drm_device* %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %60, %34
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.drm_fb_helper*, %struct.drm_fb_helper_funcs*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.drm_fb_helper*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @drm_drv_uses_atomic_modeset(%struct.drm_device*) #1

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fb_helper_fbdev_teardown(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
