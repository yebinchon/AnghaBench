; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fbdev.c_exynos_drm_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__, %struct.exynos_drm_private* }
%struct.TYPE_2__ = type { i32 }
%struct.exynos_drm_private = type { %struct.drm_fb_helper* }
%struct.drm_fb_helper = type { i32 }
%struct.exynos_drm_fbdev = type { %struct.drm_fb_helper }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exynos_drm_fb_helper_funcs = common dso_local global i32 0, align 4
@MAX_CONNECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to initialize drm fb helper.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to register drm_fb_helper_connector.\0A\00", align 1
@PREFERRED_BPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to set up hw configuration.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_drm_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.exynos_drm_fbdev*, align 8
  %5 = alloca %struct.exynos_drm_private*, align 8
  %6 = alloca %struct.drm_fb_helper*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 2
  %10 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %9, align 8
  store %struct.exynos_drm_private* %10, %struct.exynos_drm_private** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.exynos_drm_fbdev* @kzalloc(i32 4, i32 %18)
  store %struct.exynos_drm_fbdev* %19, %struct.exynos_drm_fbdev** %4, align 8
  %20 = load %struct.exynos_drm_fbdev*, %struct.exynos_drm_fbdev** %4, align 8
  %21 = icmp ne %struct.exynos_drm_fbdev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %75

25:                                               ; preds = %17
  %26 = load %struct.exynos_drm_fbdev*, %struct.exynos_drm_fbdev** %4, align 8
  %27 = getelementptr inbounds %struct.exynos_drm_fbdev, %struct.exynos_drm_fbdev* %26, i32 0, i32 0
  store %struct.drm_fb_helper* %27, %struct.drm_fb_helper** %6, align 8
  %28 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %5, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %28, i32 0, i32 0
  store %struct.drm_fb_helper* %27, %struct.drm_fb_helper** %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %32 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %30, %struct.drm_fb_helper* %31, i32* @exynos_drm_fb_helper_funcs)
  %33 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %34 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %35 = load i32, i32* @MAX_CONNECTOR, align 4
  %36 = call i32 @drm_fb_helper_init(%struct.drm_device* %33, %struct.drm_fb_helper* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @DRM_DEV_ERROR(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %69

44:                                               ; preds = %25
  %45 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %46 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @DRM_DEV_ERROR(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %66

54:                                               ; preds = %44
  %55 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %56 = load i32, i32* @PREFERRED_BPP, align 4
  %57 = call i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DRM_DEV_ERROR(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %66

65:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %75

66:                                               ; preds = %60, %49
  %67 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %6, align 8
  %68 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %67)
  br label %69

69:                                               ; preds = %66, %39
  %70 = load %struct.exynos_drm_private*, %struct.exynos_drm_private** %5, align 8
  %71 = getelementptr inbounds %struct.exynos_drm_private, %struct.exynos_drm_private* %70, i32 0, i32 0
  store %struct.drm_fb_helper* null, %struct.drm_fb_helper** %71, align 8
  %72 = load %struct.exynos_drm_fbdev*, %struct.exynos_drm_fbdev** %4, align 8
  %73 = call i32 @kfree(%struct.exynos_drm_fbdev* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %65, %22, %16
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.exynos_drm_fbdev* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.drm_fb_helper*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.drm_fb_helper*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

declare dso_local i32 @kfree(%struct.exynos_drm_fbdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
