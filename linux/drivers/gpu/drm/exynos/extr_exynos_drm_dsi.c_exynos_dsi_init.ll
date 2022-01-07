; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, %struct.exynos_dsi_driver_data* }
%struct.exynos_dsi_driver_data = type { i64*, i64 }

@RESET_TYPE = common dso_local global i64 0, align 8
@DSIM_FUNCRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_dsi*)* @exynos_dsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_init(%struct.exynos_dsi* %0) #0 {
  %2 = alloca %struct.exynos_dsi*, align 8
  %3 = alloca %struct.exynos_dsi_driver_data*, align 8
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %2, align 8
  %4 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %5 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %4, i32 0, i32 1
  %6 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %5, align 8
  store %struct.exynos_dsi_driver_data* %6, %struct.exynos_dsi_driver_data** %3, align 8
  %7 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %8 = call i32 @exynos_dsi_reset(%struct.exynos_dsi* %7)
  %9 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %10 = call i32 @exynos_dsi_enable_irq(%struct.exynos_dsi* %9)
  %11 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %3, align 8
  %12 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @RESET_TYPE, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DSIM_FUNCRST, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %21 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %22 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @BIT(i32 %23)
  %25 = sub nsw i64 %24, 1
  %26 = call i32 @exynos_dsi_enable_lane(%struct.exynos_dsi* %20, i64 %25)
  br label %27

27:                                               ; preds = %19, %1
  %28 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %29 = call i32 @exynos_dsi_enable_clock(%struct.exynos_dsi* %28)
  %30 = load %struct.exynos_dsi_driver_data*, %struct.exynos_dsi_driver_data** %3, align 8
  %31 = getelementptr inbounds %struct.exynos_dsi_driver_data, %struct.exynos_dsi_driver_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %36 = call i32 @exynos_dsi_wait_for_reset(%struct.exynos_dsi* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %39 = call i32 @exynos_dsi_set_phy_ctrl(%struct.exynos_dsi* %38)
  %40 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %41 = call i32 @exynos_dsi_init_link(%struct.exynos_dsi* %40)
  ret i32 0
}

declare dso_local i32 @exynos_dsi_reset(%struct.exynos_dsi*) #1

declare dso_local i32 @exynos_dsi_enable_irq(%struct.exynos_dsi*) #1

declare dso_local i32 @exynos_dsi_enable_lane(%struct.exynos_dsi*, i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @exynos_dsi_enable_clock(%struct.exynos_dsi*) #1

declare dso_local i32 @exynos_dsi_wait_for_reset(%struct.exynos_dsi*) #1

declare dso_local i32 @exynos_dsi_set_phy_ctrl(%struct.exynos_dsi*) #1

declare dso_local i32 @exynos_dsi_init_link(%struct.exynos_dsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
