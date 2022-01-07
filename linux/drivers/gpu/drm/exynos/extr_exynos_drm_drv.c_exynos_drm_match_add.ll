; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_match_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_match_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_driver_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.component_match = type { i32 }
%struct.device = type { i32 }

@exynos_drm_drivers = common dso_local global %struct.exynos_drm_driver_info* null, align 8
@DRM_COMPONENT_DRIVER = common dso_local global i32 0, align 4
@DRM_FIMC_DEVICE = common dso_local global i32 0, align 4
@compare_dev = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.component_match* (%struct.device*)* @exynos_drm_match_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.component_match* @exynos_drm_match_add(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.component_match*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_drm_driver_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  store %struct.component_match* null, %struct.component_match** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %62, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %8
  %14 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %14, i64 %16
  store %struct.exynos_drm_driver_info* %17, %struct.exynos_drm_driver_info** %5, align 8
  store %struct.device* null, %struct.device** %6, align 8
  %18 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %5, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DRM_COMPONENT_DRIVER, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22, %13
  br label %62

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %57, %30
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %5, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call %struct.device* @platform_find_device_by_driver(%struct.device* %32, i32* %36)
  store %struct.device* %37, %struct.device** %7, align 8
  %38 = icmp ne %struct.device* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = call i32 @put_device(%struct.device* %40)
  %42 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %5, align 8
  %43 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DRM_FIMC_DEVICE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i64 @exynos_drm_check_fimc_device(%struct.device* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %39
  %53 = load %struct.device*, %struct.device** %2, align 8
  %54 = load i32, i32* @compare_dev, align 4
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = call i32 @component_match_add(%struct.device* %53, %struct.component_match** %3, i32 %54, %struct.device* %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %58, %struct.device** %6, align 8
  br label %31

59:                                               ; preds = %31
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @put_device(%struct.device* %60)
  br label %62

62:                                               ; preds = %59, %29
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %8

65:                                               ; preds = %8
  %66 = load %struct.component_match*, %struct.component_match** %3, align 8
  %67 = icmp ne %struct.component_match* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.component_match* @ERR_PTR(i32 %71)
  br label %73

73:                                               ; preds = %69, %68
  %74 = phi %struct.component_match* [ %66, %68 ], [ %72, %69 ]
  ret %struct.component_match* %74
}

declare dso_local i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info*) #1

declare dso_local %struct.device* @platform_find_device_by_driver(%struct.device*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i64 @exynos_drm_check_fimc_device(%struct.device*) #1

declare dso_local i32 @component_match_add(%struct.device*, %struct.component_match**, i32, %struct.device*) #1

declare dso_local %struct.component_match* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
