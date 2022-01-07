; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_unregister_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_unregister_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_driver_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@exynos_drm_drivers = common dso_local global %struct.exynos_drm_driver_info* null, align 8
@DRM_VIRTUAL_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos_drm_unregister_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_unregister_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.exynos_drm_driver_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %5 = call i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info* %4)
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %42, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %7
  %11 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %11, i64 %13
  store %struct.exynos_drm_driver_info* %14, %struct.exynos_drm_driver_info** %2, align 8
  %15 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %2, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %2, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DRM_VIRTUAL_DEVICE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %10
  br label %42

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %35, %27
  %29 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %2, align 8
  %30 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call %struct.device* @platform_find_device_by_driver(i32* null, i32* %32)
  store %struct.device* %33, %struct.device** %3, align 8
  %34 = icmp ne %struct.device* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 @put_device(%struct.device* %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 @to_platform_device(%struct.device* %38)
  %40 = call i32 @platform_device_unregister(i32 %39)
  br label %28

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %1, align 4
  br label %7

45:                                               ; preds = %7
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info*) #1

declare dso_local %struct.device* @platform_find_device_by_driver(i32*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
