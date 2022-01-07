; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_dphy_timing_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_dphy_timing_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32 }

@DSI_VERSION = common dso_local global i32 0, align 4
@VERSION = common dso_local global i32 0, align 4
@HWVER_131 = common dso_local global i32 0, align 4
@DSI_PHY_TMR_CFG = common dso_local global i32 0, align 4
@DSI_PHY_TMR_RD_CFG = common dso_local global i32 0, align 4
@DSI_PHY_TMR_LPCLK_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*)* @dw_mipi_dsi_dphy_timing_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_dphy_timing_config(%struct.dw_mipi_dsi* %0) #0 {
  %2 = alloca %struct.dw_mipi_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %2, align 8
  %4 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %5 = load i32, i32* @DSI_VERSION, align 4
  %6 = call i32 @dsi_read(%struct.dw_mipi_dsi* %4, i32 %5)
  %7 = load i32, i32* @VERSION, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @HWVER_131, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %14 = load i32, i32* @DSI_PHY_TMR_CFG, align 4
  %15 = call i32 @PHY_HS2LP_TIME_V131(i32 64)
  %16 = call i32 @PHY_LP2HS_TIME_V131(i32 64)
  %17 = or i32 %15, %16
  %18 = call i32 @dsi_write(%struct.dw_mipi_dsi* %13, i32 %14, i32 %17)
  %19 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %20 = load i32, i32* @DSI_PHY_TMR_RD_CFG, align 4
  %21 = call i32 @MAX_RD_TIME_V131(i32 10000)
  %22 = call i32 @dsi_write(%struct.dw_mipi_dsi* %19, i32 %20, i32 %21)
  br label %32

23:                                               ; preds = %1
  %24 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %25 = load i32, i32* @DSI_PHY_TMR_CFG, align 4
  %26 = call i32 @PHY_HS2LP_TIME(i32 64)
  %27 = call i32 @PHY_LP2HS_TIME(i32 64)
  %28 = or i32 %26, %27
  %29 = call i32 @MAX_RD_TIME(i32 10000)
  %30 = or i32 %28, %29
  %31 = call i32 @dsi_write(%struct.dw_mipi_dsi* %24, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %23, %12
  %33 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %34 = load i32, i32* @DSI_PHY_TMR_LPCLK_CFG, align 4
  %35 = call i32 @PHY_CLKHS2LP_TIME(i32 64)
  %36 = call i32 @PHY_CLKLP2HS_TIME(i32 64)
  %37 = or i32 %35, %36
  %38 = call i32 @dsi_write(%struct.dw_mipi_dsi* %33, i32 %34, i32 %37)
  ret void
}

declare dso_local i32 @dsi_read(%struct.dw_mipi_dsi*, i32) #1

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

declare dso_local i32 @PHY_HS2LP_TIME_V131(i32) #1

declare dso_local i32 @PHY_LP2HS_TIME_V131(i32) #1

declare dso_local i32 @MAX_RD_TIME_V131(i32) #1

declare dso_local i32 @PHY_HS2LP_TIME(i32) #1

declare dso_local i32 @PHY_LP2HS_TIME(i32) #1

declare dso_local i32 @MAX_RD_TIME(i32) #1

declare dso_local i32 @PHY_CLKHS2LP_TIME(i32) #1

declare dso_local i32 @PHY_CLKLP2HS_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
