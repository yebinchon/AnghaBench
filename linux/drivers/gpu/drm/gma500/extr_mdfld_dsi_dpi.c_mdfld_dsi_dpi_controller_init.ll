; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_controller_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_dpi.c_mdfld_dsi_dpi_controller_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdfld_dsi_config = type { i32, i32, i32, i32, %struct.drm_display_mode*, %struct.drm_device* }
%struct.drm_display_mode = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32 }
%struct.mdfld_dsi_dpi_timing = type { i32, i32, i32, i32, i32, i32, i32 }

@DSI_DPI_VIRT_CHANNEL_OFFSET = common dso_local global i32 0, align 4
@DSI_DPI_COLOR_FORMAT_RGB565 = common dso_local global i32 0, align 4
@DSI_DPI_COLOR_FORMAT_RGB666 = common dso_local global i32 0, align 4
@DSI_DPI_COLOR_FORMAT_RGB888 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unsupported color format, bpp = %d\0A\00", align 1
@DSI_HS_TX_TIMEOUT_MASK = common dso_local global i32 0, align 4
@DSI_LP_RX_TIMEOUT_MASK = common dso_local global i32 0, align 4
@DSI_TURN_AROUND_TIMEOUT_MASK = common dso_local global i32 0, align 4
@DSI_RESET_TIMER_MASK = common dso_local global i32 0, align 4
@DSI_DPI_TIMING_MASK = common dso_local global i32 0, align 4
@DSI_DPI_COMPLETE_LAST_LINE = common dso_local global i32 0, align 4
@TC35876X = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdfld_dsi_dpi_controller_init(%struct.mdfld_dsi_config* %0, i32 %1) #0 {
  %3 = alloca %struct.mdfld_dsi_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mdfld_dsi_dpi_timing, align 4
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  store %struct.mdfld_dsi_config* %0, %struct.mdfld_dsi_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %11 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %10, i32 0, i32 5
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %14 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %17 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %16, i32 0, i32 4
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %17, align 8
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @MIPI_DEVICE_READY_REG(i32 %19)
  %21 = call i32 @REG_FLD_MOD(i32 %20, i32 0, i32 0, i32 0)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @MIPI_CTRL_REG(i32 %22)
  %24 = call i32 @REG_WRITE(i32 %23, i32 24)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @MIPI_INTR_EN_REG(i32 %25)
  %27 = call i32 @REG_WRITE(i32 %26, i32 -1)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %30 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DSI_DPI_VIRT_CHANNEL_OFFSET, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %37 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %51 [
    i32 16, label %39
    i32 18, label %43
    i32 24, label %47
  ]

39:                                               ; preds = %2
  %40 = load i32, i32* @DSI_DPI_COLOR_FORMAT_RGB565, align 4
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %56

43:                                               ; preds = %2
  %44 = load i32, i32* @DSI_DPI_COLOR_FORMAT_RGB666, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %56

47:                                               ; preds = %2
  %48 = load i32, i32* @DSI_DPI_COLOR_FORMAT_RGB888, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %56

51:                                               ; preds = %2
  %52 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %53 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %51, %47, %43, %39
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @MIPI_DSI_FUNC_PRG_REG(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @REG_WRITE(i32 %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @MIPI_HS_TX_TIMEOUT_REG(i32 %61)
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %71 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 8, %74
  %76 = sdiv i32 %73, %75
  %77 = load i32, i32* @DSI_HS_TX_TIMEOUT_MASK, align 4
  %78 = and i32 %76, %77
  %79 = call i32 @REG_WRITE(i32 %62, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @MIPI_LP_RX_TIMEOUT_REG(i32 %80)
  %82 = load i32, i32* @DSI_LP_RX_TIMEOUT_MASK, align 4
  %83 = and i32 65535, %82
  %84 = call i32 @REG_WRITE(i32 %81, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @MIPI_TURN_AROUND_TIMEOUT_REG(i32 %85)
  %87 = load i32, i32* @DSI_TURN_AROUND_TIMEOUT_MASK, align 4
  %88 = and i32 20, %87
  %89 = call i32 @REG_WRITE(i32 %86, i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @MIPI_DEVICE_RESET_TIMER_REG(i32 %90)
  %92 = load i32, i32* @DSI_RESET_TIMER_MASK, align 4
  %93 = and i32 65535, %92
  %94 = call i32 @REG_WRITE(i32 %91, i32 %93)
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @MIPI_DPI_RESOLUTION_REG(i32 %95)
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %102 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %100, %103
  %105 = call i32 @REG_WRITE(i32 %96, i32 %104)
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %107 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %108 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %111 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @mdfld_dsi_dpi_timing_calculation(%struct.drm_display_mode* %106, %struct.mdfld_dsi_dpi_timing* %7, i32 %109, i32 %112)
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @MIPI_HSYNC_COUNT_REG(i32 %114)
  %116 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %7, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @REG_WRITE(i32 %115, i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @MIPI_HBP_COUNT_REG(i32 %121)
  %123 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %7, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %126 = and i32 %124, %125
  %127 = call i32 @REG_WRITE(i32 %122, i32 %126)
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @MIPI_HFP_COUNT_REG(i32 %128)
  %130 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %7, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %133 = and i32 %131, %132
  %134 = call i32 @REG_WRITE(i32 %129, i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @MIPI_HACTIVE_COUNT_REG(i32 %135)
  %137 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %7, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %140 = and i32 %138, %139
  %141 = call i32 @REG_WRITE(i32 %136, i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @MIPI_VSYNC_COUNT_REG(i32 %142)
  %144 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %7, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %147 = and i32 %145, %146
  %148 = call i32 @REG_WRITE(i32 %143, i32 %147)
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @MIPI_VBP_COUNT_REG(i32 %149)
  %151 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %7, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %154 = and i32 %152, %153
  %155 = call i32 @REG_WRITE(i32 %150, i32 %154)
  %156 = load i32, i32* %4, align 4
  %157 = call i32 @MIPI_VFP_COUNT_REG(i32 %156)
  %158 = getelementptr inbounds %struct.mdfld_dsi_dpi_timing, %struct.mdfld_dsi_dpi_timing* %7, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @DSI_DPI_TIMING_MASK, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @REG_WRITE(i32 %157, i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = call i32 @MIPI_HIGH_LOW_SWITCH_COUNT_REG(i32 %163)
  %165 = call i32 @REG_WRITE(i32 %164, i32 70)
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @MIPI_INIT_COUNT_REG(i32 %166)
  %168 = call i32 @REG_WRITE(i32 %167, i32 2000)
  %169 = load %struct.mdfld_dsi_config*, %struct.mdfld_dsi_config** %3, align 8
  %170 = getelementptr inbounds %struct.mdfld_dsi_config, %struct.mdfld_dsi_config* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @DSI_DPI_COMPLETE_LAST_LINE, align 4
  %173 = or i32 %171, %172
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @MIPI_VIDEO_MODE_FORMAT_REG(i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @REG_WRITE(i32 %175, i32 %176)
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @MIPI_EOT_DISABLE_REG(i32 %178)
  %180 = call i32 @REG_WRITE(i32 %179, i32 0)
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @MIPI_LP_BYTECLK_REG(i32 %181)
  %183 = call i32 @REG_WRITE(i32 %182, i32 4)
  %184 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i64 @mdfld_get_panel_type(%struct.drm_device* %184, i32 %185)
  %187 = load i64, i64* @TC35876X, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %56
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @MIPI_DPHY_PARAM_REG(i32 %190)
  %192 = call i32 @REG_WRITE(i32 %191, i32 705454088)
  br label %197

193:                                              ; preds = %56
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @MIPI_DPHY_PARAM_REG(i32 %194)
  %196 = call i32 @REG_WRITE(i32 %195, i32 353121288)
  br label %197

197:                                              ; preds = %193, %189
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @MIPI_CLK_LANE_SWITCH_TIME_CNT_REG(i32 %198)
  %200 = call i32 @REG_WRITE(i32 %199, i32 655380)
  %201 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %202 = load i32, i32* %4, align 4
  %203 = call i64 @mdfld_get_panel_type(%struct.drm_device* %201, i32 %202)
  %204 = load i64, i64* @TC35876X, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %208 = call i32 @tc35876x_set_bridge_reset_state(%struct.drm_device* %207, i32 0)
  br label %209

209:                                              ; preds = %206, %197
  %210 = load i32, i32* %4, align 4
  %211 = call i32 @MIPI_DEVICE_READY_REG(i32 %210)
  %212 = call i32 @REG_FLD_MOD(i32 %211, i32 1, i32 0, i32 0)
  ret void
}

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @MIPI_DEVICE_READY_REG(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @MIPI_CTRL_REG(i32) #1

declare dso_local i32 @MIPI_INTR_EN_REG(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @MIPI_DSI_FUNC_PRG_REG(i32) #1

declare dso_local i32 @MIPI_HS_TX_TIMEOUT_REG(i32) #1

declare dso_local i32 @MIPI_LP_RX_TIMEOUT_REG(i32) #1

declare dso_local i32 @MIPI_TURN_AROUND_TIMEOUT_REG(i32) #1

declare dso_local i32 @MIPI_DEVICE_RESET_TIMER_REG(i32) #1

declare dso_local i32 @MIPI_DPI_RESOLUTION_REG(i32) #1

declare dso_local i32 @mdfld_dsi_dpi_timing_calculation(%struct.drm_display_mode*, %struct.mdfld_dsi_dpi_timing*, i32, i32) #1

declare dso_local i32 @MIPI_HSYNC_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_HBP_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_HFP_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_HACTIVE_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_VSYNC_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_VBP_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_VFP_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_HIGH_LOW_SWITCH_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_INIT_COUNT_REG(i32) #1

declare dso_local i32 @MIPI_VIDEO_MODE_FORMAT_REG(i32) #1

declare dso_local i32 @MIPI_EOT_DISABLE_REG(i32) #1

declare dso_local i32 @MIPI_LP_BYTECLK_REG(i32) #1

declare dso_local i64 @mdfld_get_panel_type(%struct.drm_device*, i32) #1

declare dso_local i32 @MIPI_DPHY_PARAM_REG(i32) #1

declare dso_local i32 @MIPI_CLK_LANE_SWITCH_TIME_CNT_REG(i32) #1

declare dso_local i32 @tc35876x_set_bridge_reset_state(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
