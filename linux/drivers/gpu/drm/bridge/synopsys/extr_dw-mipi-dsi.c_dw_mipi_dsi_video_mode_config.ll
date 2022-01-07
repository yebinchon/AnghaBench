; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_video_mode_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_video_mode_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32, i64, i64 }

@ENABLE_LOW_POWER = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@VID_MODE_TYPE_BURST = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@VID_MODE_TYPE_NON_BURST_SYNC_PULSES = common dso_local global i32 0, align 4
@VID_MODE_TYPE_NON_BURST_SYNC_EVENTS = common dso_local global i32 0, align 4
@DSI_VID_MODE_CFG = common dso_local global i32 0, align 4
@VID_MODE_VPG_ENABLE = common dso_local global i32 0, align 4
@VID_MODE_VPG_HORIZONTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*)* @dw_mipi_dsi_video_mode_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_video_mode_config(%struct.dw_mipi_dsi* %0) #0 {
  %2 = alloca %struct.dw_mipi_dsi*, align 8
  %3 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %2, align 8
  %4 = load i32, i32* @ENABLE_LOW_POWER, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %6 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @VID_MODE_TYPE_BURST, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %17 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @VID_MODE_TYPE_NON_BURST_SYNC_PULSES, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %15
  %27 = load i32, i32* @VID_MODE_TYPE_NON_BURST_SYNC_EVENTS, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %11
  %32 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %2, align 8
  %33 = load i32, i32* @DSI_VID_MODE_CFG, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dsi_write(%struct.dw_mipi_dsi* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
