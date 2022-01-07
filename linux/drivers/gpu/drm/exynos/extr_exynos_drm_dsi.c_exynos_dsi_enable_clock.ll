; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_enable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_enable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to configure DSI PLL\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"hs_clk = %lu, byte_clk = %lu, esc_clk = %lu\0A\00", align 1
@DSIM_CLKCTRL_REG = common dso_local global i32 0, align 4
@DSIM_ESC_PRESCALER_MASK = common dso_local global i32 0, align 4
@DSIM_LANE_ESC_CLK_EN_CLK = common dso_local global i32 0, align 4
@DSIM_LANE_ESC_CLK_EN_DATA_MASK = common dso_local global i32 0, align 4
@DSIM_PLL_BYPASS = common dso_local global i32 0, align 4
@DSIM_BYTE_CLK_SRC_MASK = common dso_local global i32 0, align 4
@DSIM_ESC_CLKEN = common dso_local global i32 0, align 4
@DSIM_BYTE_CLKEN = common dso_local global i32 0, align 4
@DSIM_TX_REQUEST_HSCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_dsi*)* @exynos_dsi_enable_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dsi_enable_clock(%struct.exynos_dsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_dsi*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %3, align 8
  %9 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %10 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %11 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @exynos_dsi_set_pll(%struct.exynos_dsi* %9, i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %18 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %93

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = udiv i64 %24, 8
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %28 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @DIV_ROUND_UP(i64 %26, i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = udiv i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @MHZ, align 4
  %36 = mul nsw i32 20, %35
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = udiv i64 %42, %43
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %39, %23
  %46 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %47 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %50, i64 %51)
  %53 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %54 = load i32, i32* @DSIM_CLKCTRL_REG, align 4
  %55 = call i32 @exynos_dsi_read(%struct.exynos_dsi* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @DSIM_ESC_PRESCALER_MASK, align 4
  %57 = load i32, i32* @DSIM_LANE_ESC_CLK_EN_CLK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @DSIM_LANE_ESC_CLK_EN_DATA_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DSIM_PLL_BYPASS, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @DSIM_BYTE_CLK_SRC_MASK, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @DSIM_ESC_CLKEN, align 4
  %69 = load i32, i32* @DSIM_BYTE_CLKEN, align 4
  %70 = or i32 %68, %69
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @DSIM_ESC_PRESCALER(i64 %71)
  %73 = or i32 %70, %72
  %74 = load i32, i32* @DSIM_LANE_ESC_CLK_EN_CLK, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %77 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @BIT(i32 %78)
  %80 = sub nsw i64 %79, 1
  %81 = call i32 @DSIM_LANE_ESC_CLK_EN_DATA(i64 %80)
  %82 = or i32 %75, %81
  %83 = call i32 @DSIM_BYTE_CLK_SRC(i32 0)
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DSIM_TX_REQUEST_HSCLK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.exynos_dsi*, %struct.exynos_dsi** %3, align 8
  %90 = load i32, i32* @DSIM_CLKCTRL_REG, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %89, i32 %90, i32 %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %45, %16
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @exynos_dsi_set_pll(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @exynos_dsi_read(%struct.exynos_dsi*, i32) #1

declare dso_local i32 @DSIM_ESC_PRESCALER(i64) #1

declare dso_local i32 @DSIM_LANE_ESC_CLK_EN_DATA(i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @DSIM_BYTE_CLK_SRC(i32) #1

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
