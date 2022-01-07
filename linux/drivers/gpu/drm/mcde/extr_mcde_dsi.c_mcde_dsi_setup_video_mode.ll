; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_setup_video_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_dsi.c_mcde_dsi_setup_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde_dsi = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_BURST_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_SYNC_PULSE_ACTIVE = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_SYNC_PULSE_HORIZONTAL = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_16 = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_HEADER_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_VID_PIXEL_MODE_16BITS = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_18 = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS = common dso_local global i32 0, align 4
@MIPI_DSI_PIXEL_STREAM_3BYTE_18 = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS_LOOSE = common dso_local global i32 0, align 4
@MIPI_DSI_PACKED_PIXEL_STREAM_24 = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_VID_PIXEL_MODE_24BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown pixel mode\0A\00", align 1
@DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_LP_0 = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0 = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_MAIN_CTL = common dso_local global i64 0, align 8
@DSI_VID_VSIZE_VSA_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_VSIZE_VFP_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_VSIZE_VACT_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_VSIZE_VBP_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_VSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"hfp: %u, hbp: %u, hsa: %u\0A\00", align 1
@DSI_VID_HSIZE1_HSA_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_HSIZE1_HBP_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_HSIZE1_HFP_LENGTH_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_HSIZE1 = common dso_local global i64 0, align 8
@DSI_VID_HSIZE2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"calculated bytes per line: %llu\0A\00", align 1
@DSI_VID_BLKSIZE2_BLKLINE_PULSE_PCK_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_BLKSIZE2 = common dso_local global i64 0, align 8
@DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_BLKSIZE1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"line duration %u\0A\00", align 1
@DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_DPHY_TIME = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"blkeol pck: %u, duration: %u\0A\00", align 1
@DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT = common dso_local global i32 0, align 4
@DSI_VID_VCA_SETTING2 = common dso_local global i64 0, align 8
@DSI_VID_PCK_TIME = common dso_local global i64 0, align 8
@DSI_VID_VCA_SETTING1 = common dso_local global i64 0, align 8
@DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL = common dso_local global i64 0, align 8
@DSI_MCTL_MAIN_DATA_CTL_IF1_MODE = common dso_local global i32 0, align 4
@DSI_CMD_MODE_CTL = common dso_local global i64 0, align 8
@DSI_CMD_MODE_CTL_IF1_LP_EN = common dso_local global i32 0, align 4
@DSI_VID_MODE_STS_CTL = common dso_local global i64 0, align 8
@DSI_VID_MODE_STS_CTL_ERR_MISSING_VSYNC = common dso_local global i32 0, align 4
@DSI_VID_MODE_STS_CTL_ERR_MISSING_DATA = common dso_local global i32 0, align 4
@DSI_MCTL_MAIN_DATA_CTL_VID_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcde_dsi*, %struct.drm_display_mode*)* @mcde_dsi_setup_video_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcde_dsi_setup_video_mode(%struct.mcde_dsi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.mcde_dsi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mcde_dsi* %0, %struct.mcde_dsi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %15 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %16 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %19)
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %22 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @DSI_VID_MAIN_CTL_BURST_MODE, align 4
  %31 = load i32, i32* %14, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %35 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32, i32* @DSI_VID_MAIN_CTL_SYNC_PULSE_ACTIVE, align 4
  %44 = load i32, i32* %14, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @DSI_VID_MAIN_CTL_SYNC_PULSE_HORIZONTAL, align 4
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %42, %33
  %50 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %51 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %91 [
    i32 131, label %55
    i32 129, label %64
    i32 130, label %73
    i32 128, label %82
  ]

55:                                               ; preds = %49
  %56 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_16, align 4
  %57 = load i32, i32* @DSI_VID_MAIN_CTL_HEADER_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* @DSI_VID_MAIN_CTL_VID_PIXEL_MODE_16BITS, align 4
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  br label %96

64:                                               ; preds = %49
  %65 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_18, align 4
  %66 = load i32, i32* @DSI_VID_MAIN_CTL_HEADER_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %14, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* @DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS, align 4
  %71 = load i32, i32* %14, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %14, align 4
  br label %96

73:                                               ; preds = %49
  %74 = load i32, i32* @MIPI_DSI_PIXEL_STREAM_3BYTE_18, align 4
  %75 = load i32, i32* @DSI_VID_MAIN_CTL_HEADER_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @DSI_VID_MAIN_CTL_VID_PIXEL_MODE_18BITS_LOOSE, align 4
  %80 = load i32, i32* %14, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %96

82:                                               ; preds = %49
  %83 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_24, align 4
  %84 = load i32, i32* @DSI_VID_MAIN_CTL_HEADER_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* @DSI_VID_MAIN_CTL_VID_PIXEL_MODE_24BITS, align 4
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  br label %96

91:                                               ; preds = %49
  %92 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %93 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %514

96:                                               ; preds = %82, %73, %64, %55
  %97 = load i32, i32* @DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_LP_0, align 4
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* @DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0, align 4
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* @DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT, align 4
  %104 = shl i32 1, %103
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %109 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DSI_VID_MAIN_CTL, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i32 @writel(i32 %107, i64 %112)
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DSI_VID_VSIZE_VSA_LENGTH_SHIFT, align 4
  %118 = shl i32 %116, %117
  store i32 %118, i32* %14, align 4
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %123 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %121, %124
  %126 = load i32, i32* @DSI_VID_VSIZE_VFP_LENGTH_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* %14, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  %137 = load i32, i32* @DSI_VID_VSIZE_VACT_LENGTH_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = load i32, i32* %14, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %14, align 4
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = load i32, i32* @DSI_VID_VSIZE_VBP_LENGTH_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %154 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @DSI_VID_VSIZE, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @writel(i32 %152, i64 %157)
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %163 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %161, %164
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sub nsw i32 %167, 6
  %169 = sub nsw i32 %168, 2
  store i32 %169, i32* %7, align 4
  %170 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %171 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %170, i32 0, i32 2
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %202

178:                                              ; preds = %96
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %180 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %183 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %181, %184
  %186 = load i32, i32* %5, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sub nsw i32 %187, 4
  %189 = sub nsw i32 %188, 6
  store i32 %189, i32* %8, align 4
  %190 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %191 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %194 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %192, %195
  %197 = load i32, i32* %5, align 4
  %198 = mul nsw i32 %196, %197
  %199 = sub nsw i32 %198, 4
  %200 = sub nsw i32 %199, 4
  %201 = sub nsw i32 %200, 6
  store i32 %201, i32* %9, align 4
  br label %215

202:                                              ; preds = %96
  %203 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %204 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %207 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %205, %208
  %210 = load i32, i32* %5, align 4
  %211 = mul nsw i32 %209, %210
  %212 = sub nsw i32 %211, 4
  %213 = sub nsw i32 %212, 4
  %214 = sub nsw i32 %213, 6
  store i32 %214, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %215

215:                                              ; preds = %202, %178
  %216 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %217 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %218, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %219, i32 %220, i32 %221)
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* @DSI_VID_HSIZE1_HSA_LENGTH_SHIFT, align 4
  %225 = shl i32 %223, %224
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @DSI_VID_HSIZE1_HBP_LENGTH_SHIFT, align 4
  %228 = shl i32 %226, %227
  %229 = load i32, i32* %14, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @DSI_VID_HSIZE1_HFP_LENGTH_SHIFT, align 4
  %233 = shl i32 %231, %232
  %234 = load i32, i32* %14, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %14, align 4
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %238 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @DSI_VID_HSIZE1, align 8
  %241 = add nsw i64 %239, %240
  %242 = call i32 @writel(i32 %236, i64 %241)
  %243 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %244 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %5, align 4
  %247 = sdiv i32 %246, 8
  %248 = mul nsw i32 %245, %247
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %251 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @DSI_VID_HSIZE2, align 8
  %254 = add nsw i64 %252, %253
  %255 = call i32 @writel(i32 %249, i64 %254)
  %256 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %257 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %260 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %258, %261
  store i32 %262, i32* %6, align 4
  %263 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %264 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sdiv i32 %265, 8
  %267 = load i32, i32* %6, align 4
  %268 = mul nsw i32 %267, %266
  store i32 %268, i32* %6, align 4
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @do_div(i32 %269, i32 1000000)
  %271 = load i32, i32* %6, align 4
  %272 = call i32 @do_div(i32 %271, i32 1000000)
  %273 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %274 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %273, i32 0, i32 2
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %6, align 4
  %279 = mul nsw i32 %278, %277
  store i32 %279, i32* %6, align 4
  %280 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %281 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %6, align 4
  %284 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %282, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %283)
  %285 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %286 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %285, i32 0, i32 2
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %314

293:                                              ; preds = %215
  %294 = load i32, i32* %6, align 4
  %295 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %296 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %299 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 4
  %301 = sub nsw i32 %297, %300
  %302 = sub nsw i32 %294, %301
  %303 = sub nsw i32 %302, 6
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @DSI_VID_BLKSIZE2_BLKLINE_PULSE_PCK_SHIFT, align 4
  %306 = shl i32 %304, %305
  store i32 %306, i32* %14, align 4
  %307 = load i32, i32* %14, align 4
  %308 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %309 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @DSI_VID_BLKSIZE2, align 8
  %312 = add nsw i64 %310, %311
  %313 = call i32 @writel(i32 %307, i64 %312)
  br label %328

314:                                              ; preds = %215
  %315 = load i32, i32* %6, align 4
  %316 = sub nsw i32 %315, 4
  %317 = sub nsw i32 %316, 6
  store i32 %317, i32* %10, align 4
  %318 = load i32, i32* %10, align 4
  %319 = load i32, i32* @DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_SHIFT, align 4
  %320 = shl i32 %318, %319
  store i32 %320, i32* %14, align 4
  %321 = load i32, i32* %14, align 4
  %322 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %323 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @DSI_VID_BLKSIZE1, align 8
  %326 = add nsw i64 %324, %325
  %327 = call i32 @writel(i32 %321, i64 %326)
  br label %328

328:                                              ; preds = %314, %293
  %329 = load i32, i32* %10, align 4
  %330 = add nsw i32 %329, 6
  %331 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %332 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %331, i32 0, i32 2
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = sdiv i32 %330, %335
  store i32 %336, i32* %11, align 4
  %337 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %338 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %339, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %340)
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* @DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT, align 4
  %344 = shl i32 %342, %343
  store i32 %344, i32* %14, align 4
  %345 = load i32, i32* @DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT, align 4
  %346 = shl i32 0, %345
  %347 = load i32, i32* %14, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %14, align 4
  %349 = load i32, i32* %14, align 4
  %350 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %351 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @DSI_VID_DPHY_TIME, align 8
  %354 = add nsw i64 %352, %353
  %355 = call i32 @writel(i32 %349, i64 %354)
  %356 = load i32, i32* %6, align 4
  %357 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %358 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %5, align 4
  %361 = mul nsw i32 %359, %360
  %362 = sub nsw i32 %356, %361
  %363 = sub nsw i32 %362, 6
  store i32 %363, i32* %12, align 4
  %364 = load i32, i32* %12, align 4
  %365 = add nsw i32 %364, 6
  %366 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %367 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %366, i32 0, i32 2
  %368 = load %struct.TYPE_2__*, %struct.TYPE_2__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 4
  %371 = sdiv i32 %365, %370
  store i32 %371, i32* %13, align 4
  %372 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %373 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* %12, align 4
  %376 = load i32, i32* %13, align 4
  %377 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %374, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %375, i32 %376)
  %378 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %379 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %378, i32 0, i32 2
  %380 = load %struct.TYPE_2__*, %struct.TYPE_2__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %427

386:                                              ; preds = %328
  %387 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %388 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @DSI_VID_BLKSIZE1, align 8
  %391 = add nsw i64 %389, %390
  %392 = call i32 @readl(i64 %391)
  store i32 %392, i32* %14, align 4
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* @DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT, align 4
  %395 = shl i32 %393, %394
  %396 = load i32, i32* %14, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %14, align 4
  %398 = load i32, i32* %14, align 4
  %399 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %400 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @DSI_VID_BLKSIZE1, align 8
  %403 = add nsw i64 %401, %402
  %404 = call i32 @writel(i32 %398, i64 %403)
  %405 = load i32, i32* %12, align 4
  %406 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %407 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @DSI_VID_VCA_SETTING2, align 8
  %410 = add nsw i64 %408, %409
  %411 = call i32 @writel(i32 %405, i64 %410)
  %412 = load i32, i32* %13, align 4
  %413 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %414 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @DSI_VID_PCK_TIME, align 8
  %417 = add nsw i64 %415, %416
  %418 = call i32 @writel(i32 %412, i64 %417)
  %419 = load i32, i32* %13, align 4
  %420 = sub nsw i32 %419, 6
  %421 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %422 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @DSI_VID_VCA_SETTING1, align 8
  %425 = add nsw i64 %423, %424
  %426 = call i32 @writel(i32 %420, i64 %425)
  br label %427

427:                                              ; preds = %386, %328
  %428 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %429 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @DSI_VID_VCA_SETTING2, align 8
  %432 = add nsw i64 %430, %431
  %433 = call i32 @readl(i64 %432)
  store i32 %433, i32* %14, align 4
  %434 = load i32, i32* %10, align 4
  %435 = load i32, i32* @DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT, align 4
  %436 = shl i32 %434, %435
  %437 = load i32, i32* %14, align 4
  %438 = or i32 %437, %436
  store i32 %438, i32* %14, align 4
  %439 = load i32, i32* %14, align 4
  %440 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %441 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %440, i32 0, i32 1
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* @DSI_VID_VCA_SETTING2, align 8
  %444 = add nsw i64 %442, %443
  %445 = call i32 @writel(i32 %439, i64 %444)
  %446 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %447 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %446, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = load i64, i64* @DSI_MCTL_MAIN_DATA_CTL, align 8
  %450 = add nsw i64 %448, %449
  %451 = call i32 @readl(i64 %450)
  store i32 %451, i32* %14, align 4
  %452 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_IF1_MODE, align 4
  %453 = load i32, i32* %14, align 4
  %454 = or i32 %453, %452
  store i32 %454, i32* %14, align 4
  %455 = load i32, i32* %14, align 4
  %456 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %457 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @DSI_MCTL_MAIN_DATA_CTL, align 8
  %460 = add nsw i64 %458, %459
  %461 = call i32 @writel(i32 %455, i64 %460)
  %462 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %463 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = load i64, i64* @DSI_CMD_MODE_CTL, align 8
  %466 = add nsw i64 %464, %465
  %467 = call i32 @readl(i64 %466)
  store i32 %467, i32* %14, align 4
  %468 = load i32, i32* @DSI_CMD_MODE_CTL_IF1_LP_EN, align 4
  %469 = xor i32 %468, -1
  %470 = load i32, i32* %14, align 4
  %471 = and i32 %470, %469
  store i32 %471, i32* %14, align 4
  %472 = load i32, i32* %14, align 4
  %473 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %474 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %473, i32 0, i32 1
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* @DSI_CMD_MODE_CTL, align 8
  %477 = add nsw i64 %475, %476
  %478 = call i32 @writel(i32 %472, i64 %477)
  %479 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %480 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %479, i32 0, i32 1
  %481 = load i64, i64* %480, align 8
  %482 = load i64, i64* @DSI_VID_MODE_STS_CTL, align 8
  %483 = add nsw i64 %481, %482
  %484 = call i32 @readl(i64 %483)
  store i32 %484, i32* %14, align 4
  %485 = load i32, i32* @DSI_VID_MODE_STS_CTL_ERR_MISSING_VSYNC, align 4
  %486 = load i32, i32* %14, align 4
  %487 = or i32 %486, %485
  store i32 %487, i32* %14, align 4
  %488 = load i32, i32* @DSI_VID_MODE_STS_CTL_ERR_MISSING_DATA, align 4
  %489 = load i32, i32* %14, align 4
  %490 = or i32 %489, %488
  store i32 %490, i32* %14, align 4
  %491 = load i32, i32* %14, align 4
  %492 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %493 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %492, i32 0, i32 1
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @DSI_VID_MODE_STS_CTL, align 8
  %496 = add nsw i64 %494, %495
  %497 = call i32 @writel(i32 %491, i64 %496)
  %498 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %499 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %498, i32 0, i32 1
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @DSI_MCTL_MAIN_DATA_CTL, align 8
  %502 = add nsw i64 %500, %501
  %503 = call i32 @readl(i64 %502)
  store i32 %503, i32* %14, align 4
  %504 = load i32, i32* @DSI_MCTL_MAIN_DATA_CTL_VID_EN, align 4
  %505 = load i32, i32* %14, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %14, align 4
  %507 = load i32, i32* %14, align 4
  %508 = load %struct.mcde_dsi*, %struct.mcde_dsi** %3, align 8
  %509 = getelementptr inbounds %struct.mcde_dsi, %struct.mcde_dsi* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = load i64, i64* @DSI_MCTL_MAIN_DATA_CTL, align 8
  %512 = add nsw i64 %510, %511
  %513 = call i32 @writel(i32 %507, i64 %512)
  br label %514

514:                                              ; preds = %427, %91
  ret void
}

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
