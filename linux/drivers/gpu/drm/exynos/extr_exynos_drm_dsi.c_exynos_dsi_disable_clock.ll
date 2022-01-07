; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_disable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_disable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32 }

@DSIM_CLKCTRL_REG = common dso_local global i32 0, align 4
@DSIM_LANE_ESC_CLK_EN_CLK = common dso_local global i32 0, align 4
@DSIM_LANE_ESC_CLK_EN_DATA_MASK = common dso_local global i32 0, align 4
@DSIM_ESC_CLKEN = common dso_local global i32 0, align 4
@DSIM_BYTE_CLKEN = common dso_local global i32 0, align 4
@DSIM_PLLCTRL_REG = common dso_local global i32 0, align 4
@DSIM_PLL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_dsi*)* @exynos_dsi_disable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_disable_clock(%struct.exynos_dsi* %0) #0 {
  %2 = alloca %struct.exynos_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %2, align 8
  %4 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %5 = load i32, i32* @DSIM_CLKCTRL_REG, align 4
  %6 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @DSIM_LANE_ESC_CLK_EN_CLK, align 4
  %8 = load i32, i32* @DSIM_LANE_ESC_CLK_EN_DATA_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DSIM_ESC_CLKEN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DSIM_BYTE_CLKEN, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %18 = load i32, i32* @DSIM_CLKCTRL_REG, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %17, i32 %18, i32 %19)
  %21 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %22 = load i32, i32* @DSIM_PLLCTRL_REG, align 4
  %23 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @DSIM_PLL_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %29 = load i32, i32* @DSIM_PLLCTRL_REG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @exynos_dsi_read(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
