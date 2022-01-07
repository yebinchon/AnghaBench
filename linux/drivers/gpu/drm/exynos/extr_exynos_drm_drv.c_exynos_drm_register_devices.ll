; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_register_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_register_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_driver_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }

@exynos_drm_drivers = common dso_local global %struct.exynos_drm_driver_info* null, align 8
@DRM_VIRTUAL_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @exynos_drm_register_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_register_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_driver_info*, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %40, %0
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %5
  %11 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %11, i64 %13
  store %struct.exynos_drm_driver_info* %14, %struct.exynos_drm_driver_info** %4, align 8
  %15 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %4, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DRM_VIRTUAL_DEVICE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %10
  br label %40

27:                                               ; preds = %19
  %28 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.platform_device* @platform_device_register_simple(i32 %33, i32 -1, i32* null, i32 0)
  store %struct.platform_device* %34, %struct.platform_device** %2, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %36 = call i64 @IS_ERR(%struct.platform_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %44

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %5

43:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %48

44:                                               ; preds = %38
  %45 = call i32 (...) @exynos_drm_unregister_devices()
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = call i32 @PTR_ERR(%struct.platform_device* %46)
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info*) #1

declare dso_local %struct.platform_device* @platform_device_register_simple(i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @exynos_drm_unregister_devices(...) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
