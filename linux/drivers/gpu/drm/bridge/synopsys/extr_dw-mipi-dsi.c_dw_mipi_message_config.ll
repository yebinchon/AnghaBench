; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_message_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_message_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32 }
%struct.mipi_dsi_msg = type { i32 }

@MIPI_DSI_MSG_USE_LPM = common dso_local global i32 0, align 4
@MIPI_DSI_MSG_REQ_ACK = common dso_local global i32 0, align 4
@ACK_RQST_EN = common dso_local global i32 0, align 4
@CMD_MODE_ALL_LP = common dso_local global i32 0, align 4
@DSI_LPCLK_CTRL = common dso_local global i32 0, align 4
@PHY_TXREQUESTCLKHS = common dso_local global i32 0, align 4
@DSI_CMD_MODE_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*, %struct.mipi_dsi_msg*)* @dw_mipi_message_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_message_config(%struct.dw_mipi_dsi* %0, %struct.mipi_dsi_msg* %1) #0 {
  %3 = alloca %struct.dw_mipi_dsi*, align 8
  %4 = alloca %struct.mipi_dsi_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %3, align 8
  store %struct.mipi_dsi_msg* %1, %struct.mipi_dsi_msg** %4, align 8
  %7 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MIPI_DSI_MSG_USE_LPM, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.mipi_dsi_msg*, %struct.mipi_dsi_msg** %4, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_msg, %struct.mipi_dsi_msg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MIPI_DSI_MSG_REQ_ACK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @ACK_RQST_EN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @CMD_MODE_ALL_LP, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %31 = load i32, i32* @DSI_LPCLK_CTRL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @PHY_TXREQUESTCLKHS, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ 0, %34 ], [ %36, %35 ]
  %39 = call i32 @dsi_write(%struct.dw_mipi_dsi* %30, i32 %31, i32 %38)
  %40 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %41 = load i32, i32* @DSI_CMD_MODE_CFG, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dsi_write(%struct.dw_mipi_dsi* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
