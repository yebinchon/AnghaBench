; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_unregister_drivers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_drv.c_exynos_drm_unregister_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_driver_info = type { i32 }

@exynos_drm_drivers = common dso_local global %struct.exynos_drm_driver_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exynos_drm_unregister_drivers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_drm_unregister_drivers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.exynos_drm_driver_info*, align 8
  %3 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %4 = call i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info* %3)
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %24, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** @exynos_drm_drivers, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %10, i64 %12
  store %struct.exynos_drm_driver_info* %13, %struct.exynos_drm_driver_info** %2, align 8
  %14 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %2, align 8
  %15 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %9
  br label %24

19:                                               ; preds = %9
  %20 = load %struct.exynos_drm_driver_info*, %struct.exynos_drm_driver_info** %2, align 8
  %21 = getelementptr inbounds %struct.exynos_drm_driver_info, %struct.exynos_drm_driver_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @platform_driver_unregister(i32 %22)
  br label %24

24:                                               ; preds = %19, %18
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %1, align 4
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.exynos_drm_driver_info*) #1

declare dso_local i32 @platform_driver_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
