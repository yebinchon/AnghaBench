; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_dpi_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_dpi_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@DPI_COLOR_CODING_24BIT = common dso_local global i32 0, align 4
@DPI_COLOR_CODING_18BIT_2 = common dso_local global i32 0, align 4
@LOOSELY18_EN = common dso_local global i32 0, align 4
@DPI_COLOR_CODING_18BIT_1 = common dso_local global i32 0, align 4
@DPI_COLOR_CODING_16BIT_1 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@DSI_DPI_VCID = common dso_local global i32 0, align 4
@DSI_DPI_COLOR_CODING = common dso_local global i32 0, align 4
@DSI_DPI_CFG_POL = common dso_local global i32 0, align 4
@DSI_DPI_LP_CMD_TIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mipi_dsi*, %struct.drm_display_mode*)* @dw_mipi_dsi_dpi_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mipi_dsi_dpi_config(%struct.dw_mipi_dsi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.dw_mipi_dsi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %20 [
    i32 128, label %10
    i32 130, label %12
    i32 129, label %16
    i32 131, label %18
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @DPI_COLOR_CODING_24BIT, align 4
  store i32 %11, i32* %6, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i32, i32* @DPI_COLOR_CODING_18BIT_2, align 4
  %14 = load i32, i32* @LOOSELY18_EN, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @DPI_COLOR_CODING_18BIT_1, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @DPI_COLOR_CODING_16BIT_1, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %2, %18, %16, %12, %10
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @VSYNC_ACTIVE_LOW, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @HSYNC_ACTIVE_LOW, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %44 = load i32, i32* @DSI_DPI_VCID, align 4
  %45 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %46 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DPI_VCID(i32 %47)
  %49 = call i32 @dsi_write(%struct.dw_mipi_dsi* %43, i32 %44, i32 %48)
  %50 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %51 = load i32, i32* @DSI_DPI_COLOR_CODING, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dsi_write(%struct.dw_mipi_dsi* %50, i32 %51, i32 %52)
  %54 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %55 = load i32, i32* @DSI_DPI_CFG_POL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dsi_write(%struct.dw_mipi_dsi* %54, i32 %55, i32 %56)
  %58 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %59 = load i32, i32* @DSI_DPI_LP_CMD_TIM, align 4
  %60 = call i32 @OUTVACT_LPCMD_TIME(i32 4)
  %61 = call i32 @INVACT_LPCMD_TIME(i32 4)
  %62 = or i32 %60, %61
  %63 = call i32 @dsi_write(%struct.dw_mipi_dsi* %58, i32 %59, i32 %62)
  ret void
}

declare dso_local i32 @dsi_write(%struct.dw_mipi_dsi*, i32, i32) #1

declare dso_local i32 @DPI_VCID(i32) #1

declare dso_local i32 @OUTVACT_LPCMD_TIME(i32) #1

declare dso_local i32 @INVACT_LPCMD_TIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
