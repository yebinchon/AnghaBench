; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_dphy_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_dphy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i64 }

@DSI_PHY_RSTZ = common dso_local global i32 0, align 4
@PHY_ENFORCEPLL = common dso_local global i32 0, align 4
@PHY_ENABLECLK = common dso_local global i32 0, align 4
@PHY_UNRSTZ = common dso_local global i32 0, align 4
@PHY_UNSHUTDOWNZ = common dso_local global i32 0, align 4
@DSI_PHY_STATUS = common dso_local global i64 0, align 8
@PHY_LOCK = common dso_local global i32 0, align 4
@PHY_STATUS_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to wait phy lock state\0A\00", align 1
@PHY_STOP_STATE_CLK_LANE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to wait phy clk lane stop state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*)* @dw_mipi_dsi_dphy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_dphy_enable(%struct.dw_mipi_dsi* %0) #0 {
  %2 = alloca %struct.dw_mipi_dsi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %2, align 8
  %5 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %6 = load i32, i32* @DSI_PHY_RSTZ, align 4
  %7 = load i32, i32* @PHY_ENFORCEPLL, align 4
  %8 = load i32, i32* @PHY_ENABLECLK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @PHY_UNRSTZ, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PHY_UNSHUTDOWNZ, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @dsi_write(%struct.dw_mipi_dsi* %5, i32 %6, i32 %13)
  %15 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %16 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DSI_PHY_STATUS, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PHY_LOCK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @PHY_STATUS_TIMEOUT_US, align 4
  %25 = call i32 @readl_poll_timeout(i64 %19, i32 %20, i32 %23, i32 1000, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %1
  %31 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %32 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DSI_PHY_STATUS, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @PHY_STOP_STATE_CLK_LANE, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @PHY_STATUS_TIMEOUT_US, align 4
  %41 = call i32 @readl_poll_timeout(i64 %35, i32 %36, i32 %39, i32 1000, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %30
  ret void
}

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
