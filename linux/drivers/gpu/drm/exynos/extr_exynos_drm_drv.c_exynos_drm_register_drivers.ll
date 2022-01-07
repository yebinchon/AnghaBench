; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_register_drivers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_register_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_driver_info = type { i32 }

@exynos_drm_drivers = common dso_local global %struct.exynos_drm_driver_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @exynos_drm_register_drivers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_register_drivers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_drm_driver_info*, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %29, %0
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %11, i64 %13
  store %struct.exynos_drm_driver_info* %14, %struct.exynos_drm_driver_info** %4, align 8
  %15 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %4, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %29

20:                                               ; preds = %10
  %21 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %4, align 8
  %22 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @platform_driver_register(i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %33

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %5

32:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %36

33:                                               ; preds = %27
  %34 = call i32 (...) @exynos_drm_unregister_drivers()
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info*) #1

declare dso_local i32 @platform_driver_register(i32) #1

declare dso_local i32 @exynos_drm_unregister_drivers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
