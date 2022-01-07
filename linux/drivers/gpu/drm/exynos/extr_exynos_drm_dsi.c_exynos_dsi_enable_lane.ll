; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_enable_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_enable_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i64 }

@DSIM_CONFIG_REG = common dso_local global i32 0, align 4
@DSIM_LANE_EN_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_dsi*, i32)* @exynos_dsi_enable_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_enable_lane(%struct.exynos_dsi* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_dsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %7 = load i32, i32* @DSIM_CONFIG_REG, align 4
  %8 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @DSIM_NUM_OF_DATA_LANE(i64 %12)
  %14 = load i32, i32* @DSIM_LANE_EN_CLK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @DSIM_LANE_EN(i32 %16)
  %18 = or i32 %15, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %22 = load i32, i32* @DSIM_CONFIG_REG, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @exynos_dsi_read(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @DSIM_NUM_OF_DATA_LANE(i64) #1

declare dso_local i32 @DSIM_LANE_EN(i32) #1

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
