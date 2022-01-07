; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_bridge_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_cdns-dsi.c_cdns_dsi_bridge_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64, i64, i64 }
%struct.cdns_dsi_input = type { i32 }
%struct.cdns_dsi = type { i64, %struct.TYPE_11__, %struct.cdns_dsi_output }
%struct.TYPE_11__ = type { i32 }
%struct.cdns_dsi_output = type { %struct.TYPE_12__*, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i64, i64, i32 }
%struct.cdns_dsi_cfg = type { i64, i64, i32, i32, i32 }

@VID_HSIZE1 = common dso_local global i64 0, align 8
@VID_HSIZE2 = common dso_local global i64 0, align 8
@VID_VSIZE1 = common dso_local global i64 0, align 8
@VID_VSIZE2 = common dso_local global i64 0, align 8
@DSI_BLANKING_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@DSI_HSA_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@VID_BLKSIZE2 = common dso_local global i64 0, align 8
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@DSI_NULL_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@VID_VCA_SETTING2 = common dso_local global i64 0, align 8
@DSI_HSS_VSS_VSE_FRAME_OVERHEAD = common dso_local global i64 0, align 8
@VID_BLKSIZE1 = common dso_local global i64 0, align 8
@MIPI_DSI_MODE_EOT_PACKET = common dso_local global i32 0, align 4
@DSI_EOT_PKT_SIZE = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@VID_DPHY_TIME = common dso_local global i64 0, align 8
@CLK_DIV_MAX = common dso_local global i64 0, align 8
@HSTX_TIMEOUT_MAX = common dso_local global i64 0, align 8
@MCTL_DPHY_TIMEOUT1 = common dso_local global i64 0, align 8
@MCTL_DPHY_TIMEOUT2 = common dso_local global i64 0, align 8
@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@VID_PIXEL_MODE_RGB888 = common dso_local global i64 0, align 8
@MIPI_DSI_PACKED_PIXEL_STREAM_24 = common dso_local global i32 0, align 4
@VID_PIXEL_MODE_RGB666 = common dso_local global i64 0, align 8
@MIPI_DSI_PIXEL_STREAM_3BYTE_18 = common dso_local global i32 0, align 4
@VID_PIXEL_MODE_RGB666_PACKED = common dso_local global i64 0, align 8
@MIPI_DSI_PACKED_PIXEL_STREAM_18 = common dso_local global i32 0, align 4
@VID_PIXEL_MODE_RGB565 = common dso_local global i64 0, align 8
@MIPI_DSI_PACKED_PIXEL_STREAM_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported DSI format\0A\00", align 1
@SYNC_PULSE_ACTIVE = common dso_local global i64 0, align 8
@SYNC_PULSE_HORIZONTAL = common dso_local global i64 0, align 8
@REG_BLK_MODE_BLANKING_PKT = common dso_local global i32 0, align 4
@RECOVERY_MODE_NEXT_HSYNC = common dso_local global i32 0, align 4
@VID_IGNORE_MISS_VSYNC = common dso_local global i64 0, align 8
@VID_MAIN_CTL = common dso_local global i64 0, align 8
@MCTL_MAIN_DATA_CTL = common dso_local global i64 0, align 8
@IF_VID_SELECT_MASK = common dso_local global i64 0, align 8
@HOST_EOT_GEN = common dso_local global i64 0, align 8
@IF_VID_MODE = common dso_local global i64 0, align 8
@VID_EN = common dso_local global i64 0, align 8
@MCTL_MAIN_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @cdns_dsi_bridge_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dsi_bridge_enable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.cdns_dsi_input*, align 8
  %4 = alloca %struct.cdns_dsi*, align 8
  %5 = alloca %struct.cdns_dsi_output*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.phy_configure_opts_mipi_dphy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cdns_dsi_cfg, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %15 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %16 = call %struct.cdns_dsi_input* @bridge_to_cdns_dsi_input(%struct.drm_bridge* %15)
  store %struct.cdns_dsi_input* %16, %struct.cdns_dsi_input** %3, align 8
  %17 = load %struct.cdns_dsi_input*, %struct.cdns_dsi_input** %3, align 8
  %18 = call %struct.cdns_dsi* @input_to_dsi(%struct.cdns_dsi_input* %17)
  store %struct.cdns_dsi* %18, %struct.cdns_dsi** %4, align 8
  %19 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %20 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %19, i32 0, i32 2
  store %struct.cdns_dsi_output* %20, %struct.cdns_dsi_output** %5, align 8
  %21 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %22 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store %struct.phy_configure_opts_mipi_dphy* %23, %struct.phy_configure_opts_mipi_dphy** %7, align 8
  %24 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %25 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @pm_runtime_get_sync(i32 %27)
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %449

34:                                               ; preds = %1
  %35 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %36 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %6, align 8
  %43 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %44 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mipi_dsi_pixel_format_to_bpp(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %50 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %56 = call i32 @cdns_dsi_check_conf(%struct.cdns_dsi* %54, %struct.drm_display_mode* %55, %struct.cdns_dsi_cfg* %9, i32 0)
  %57 = call i32 @WARN_ON_ONCE(i32 %56)
  %58 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %59 = call i32 @cdns_dsi_hs_init(%struct.cdns_dsi* %58)
  %60 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %61 = call i32 @cdns_dsi_init_link(%struct.cdns_dsi* %60)
  %62 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @HBP_LEN(i32 %63)
  %65 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @HSA_LEN(i64 %66)
  %68 = or i64 %64, %67
  %69 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %70 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VID_HSIZE1, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i64 %68, i64 %73)
  %75 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @HFP_LEN(i32 %76)
  %78 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @HACT_LEN(i32 %79)
  %81 = or i64 %77, %80
  %82 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %83 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @VID_HSIZE2, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i64 %81, i64 %86)
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = sub nsw i64 %94, 1
  %96 = call i64 @VBP_LEN(i64 %95)
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %101 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %99, %102
  %104 = call i64 @VFP_LEN(i64 %103)
  %105 = or i64 %96, %104
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = add nsw i64 %112, 1
  %114 = call i64 @VSA_LEN(i64 %113)
  %115 = or i64 %105, %114
  %116 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %117 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @VID_VSIZE1, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i64 %115, i64 %120)
  %122 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %123 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %126 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @VID_VSIZE2, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i64 %124, i64 %129)
  %131 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @DSI_BLANKING_FRAME_OVERHEAD, align 8
  %136 = add i64 %134, %135
  %137 = load i64, i64* @DSI_HSA_FRAME_OVERHEAD, align 8
  %138 = add i64 %136, %137
  %139 = sub i64 %132, %138
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* %10, align 8
  %141 = call i64 @BLK_LINE_PULSE_PKT_LEN(i64 %140)
  %142 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %143 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @VID_BLKSIZE2, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writel(i64 %141, i64 %146)
  %148 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %149 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %34
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* @DSI_NULL_FRAME_OVERHEAD, align 8
  %159 = sub i64 %157, %158
  %160 = call i64 @MAX_LINE_LIMIT(i64 %159)
  %161 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %162 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VID_VCA_SETTING2, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @writel(i64 %160, i64 %165)
  br label %167

167:                                              ; preds = %156, %34
  %168 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DSI_HSS_VSS_VSE_FRAME_OVERHEAD, align 8
  %171 = load i64, i64* @DSI_BLANKING_FRAME_OVERHEAD, align 8
  %172 = add i64 %170, %171
  %173 = sub i64 %169, %172
  store i64 %173, i64* %10, align 8
  %174 = load i64, i64* %10, align 8
  %175 = call i64 @BLK_LINE_EVENT_PKT_LEN(i64 %174)
  %176 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %177 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @VID_BLKSIZE1, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel(i64 %175, i64 %180)
  %182 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %183 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %182, i32 0, i32 0
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %167
  %191 = load i64, i64* %10, align 8
  %192 = load i64, i64* @DSI_NULL_FRAME_OVERHEAD, align 8
  %193 = sub i64 %191, %192
  %194 = call i64 @MAX_LINE_LIMIT(i64 %193)
  %195 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %196 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @VID_VCA_SETTING2, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @writel(i64 %194, i64 %199)
  br label %201

201:                                              ; preds = %190, %167
  %202 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %14, align 4
  %205 = call i64 @DIV_ROUND_UP(i64 %203, i32 %204)
  %206 = getelementptr inbounds %struct.cdns_dsi_cfg, %struct.cdns_dsi_cfg* %9, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = call i64 @DIV_ROUND_UP(i64 %207, i32 %208)
  %210 = sub i64 %205, %209
  store i64 %210, i64* %10, align 8
  %211 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %212 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %211, i32 0, i32 0
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %201
  %220 = load i64, i64* @DSI_EOT_PKT_SIZE, align 8
  %221 = load i32, i32* %14, align 4
  %222 = call i64 @DIV_ROUND_UP(i64 %220, i32 %221)
  %223 = load i64, i64* %10, align 8
  %224 = sub i64 %223, %222
  store i64 %224, i64* %10, align 8
  br label %225

225:                                              ; preds = %219, %201
  %226 = load i64, i64* @NSEC_PER_SEC, align 8
  %227 = trunc i64 %226 to i32
  %228 = mul nsw i32 %227, 8
  %229 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %7, align 8
  %230 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @DIV_ROUND_DOWN_ULL(i32 %228, i32 %231)
  store i64 %232, i64* %8, align 8
  %233 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %7, align 8
  %234 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.phy_configure_opts_mipi_dphy*, %struct.phy_configure_opts_mipi_dphy** %7, align 8
  %237 = getelementptr inbounds %struct.phy_configure_opts_mipi_dphy, %struct.phy_configure_opts_mipi_dphy* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = add i64 %235, %238
  %240 = load i64, i64* %8, align 8
  %241 = udiv i64 %239, %240
  store i64 %241, i64* %11, align 8
  %242 = load i64, i64* %11, align 8
  %243 = call i64 @REG_WAKEUP_TIME(i64 %242)
  %244 = load i64, i64* %10, align 8
  %245 = call i64 @REG_LINE_DURATION(i64 %244)
  %246 = or i64 %243, %245
  %247 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %248 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @VID_DPHY_TIME, align 8
  %251 = add nsw i64 %249, %250
  %252 = call i32 @writel(i64 %246, i64 %251)
  %253 = load i64, i64* @NSEC_PER_SEC, align 8
  %254 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %255 = call i64 @drm_mode_vrefresh(%struct.drm_display_mode* %254)
  %256 = udiv i64 %253, %255
  store i64 %256, i64* %10, align 8
  %257 = load i64, i64* %8, align 8
  %258 = load i64, i64* %10, align 8
  %259 = udiv i64 %258, %257
  store i64 %259, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %260

260:                                              ; preds = %272, %225
  %261 = load i64, i64* %12, align 8
  %262 = load i64, i64* @CLK_DIV_MAX, align 8
  %263 = icmp ule i64 %261, %262
  br i1 %263, label %264, label %275

264:                                              ; preds = %260
  %265 = load i64, i64* %10, align 8
  %266 = load i64, i64* @HSTX_TIMEOUT_MAX, align 8
  %267 = icmp ule i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %264
  br label %275

269:                                              ; preds = %264
  %270 = load i64, i64* %10, align 8
  %271 = lshr i64 %270, 1
  store i64 %271, i64* %10, align 8
  br label %272

272:                                              ; preds = %269
  %273 = load i64, i64* %12, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %12, align 8
  br label %260

275:                                              ; preds = %268, %260
  %276 = load i64, i64* %10, align 8
  %277 = load i64, i64* @HSTX_TIMEOUT_MAX, align 8
  %278 = icmp ugt i64 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %275
  %280 = load i64, i64* @HSTX_TIMEOUT_MAX, align 8
  store i64 %280, i64* %10, align 8
  br label %281

281:                                              ; preds = %279, %275
  %282 = load i64, i64* %12, align 8
  %283 = call i64 @CLK_DIV(i64 %282)
  %284 = load i64, i64* %10, align 8
  %285 = call i64 @HSTX_TIMEOUT(i64 %284)
  %286 = or i64 %283, %285
  %287 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %288 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @MCTL_DPHY_TIMEOUT1, align 8
  %291 = add nsw i64 %289, %290
  %292 = call i32 @writel(i64 %286, i64 %291)
  %293 = load i64, i64* %10, align 8
  %294 = call i64 @LPRX_TIMEOUT(i64 %293)
  %295 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %296 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @MCTL_DPHY_TIMEOUT2, align 8
  %299 = add nsw i64 %297, %298
  %300 = call i32 @writel(i64 %294, i64 %299)
  %301 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %302 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %301, i32 0, i32 0
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %376

309:                                              ; preds = %281
  %310 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %311 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %310, i32 0, i32 0
  %312 = load %struct.TYPE_12__*, %struct.TYPE_12__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  switch i32 %314, label %335 [
    i32 128, label %315
    i32 130, label %320
    i32 129, label %325
    i32 131, label %330
  ]

315:                                              ; preds = %309
  %316 = load i64, i64* @VID_PIXEL_MODE_RGB888, align 8
  %317 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_24, align 4
  %318 = call i64 @VID_DATATYPE(i32 %317)
  %319 = or i64 %316, %318
  store i64 %319, i64* %10, align 8
  br label %341

320:                                              ; preds = %309
  %321 = load i64, i64* @VID_PIXEL_MODE_RGB666, align 8
  %322 = load i32, i32* @MIPI_DSI_PIXEL_STREAM_3BYTE_18, align 4
  %323 = call i64 @VID_DATATYPE(i32 %322)
  %324 = or i64 %321, %323
  store i64 %324, i64* %10, align 8
  br label %341

325:                                              ; preds = %309
  %326 = load i64, i64* @VID_PIXEL_MODE_RGB666_PACKED, align 8
  %327 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_18, align 4
  %328 = call i64 @VID_DATATYPE(i32 %327)
  %329 = or i64 %326, %328
  store i64 %329, i64* %10, align 8
  br label %341

330:                                              ; preds = %309
  %331 = load i64, i64* @VID_PIXEL_MODE_RGB565, align 8
  %332 = load i32, i32* @MIPI_DSI_PACKED_PIXEL_STREAM_16, align 4
  %333 = call i64 @VID_DATATYPE(i32 %332)
  %334 = or i64 %331, %333
  store i64 %334, i64* %10, align 8
  br label %341

335:                                              ; preds = %309
  %336 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %337 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i32 @dev_err(i32 %339, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %449

341:                                              ; preds = %330, %325, %320, %315
  %342 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %343 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %342, i32 0, i32 0
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %341
  %351 = load i64, i64* @SYNC_PULSE_ACTIVE, align 8
  %352 = load i64, i64* @SYNC_PULSE_HORIZONTAL, align 8
  %353 = or i64 %351, %352
  %354 = load i64, i64* %10, align 8
  %355 = or i64 %354, %353
  store i64 %355, i64* %10, align 8
  br label %356

356:                                              ; preds = %350, %341
  %357 = load i32, i32* @REG_BLK_MODE_BLANKING_PKT, align 4
  %358 = call i64 @REG_BLKLINE_MODE(i32 %357)
  %359 = load i32, i32* @REG_BLK_MODE_BLANKING_PKT, align 4
  %360 = call i64 @REG_BLKEOL_MODE(i32 %359)
  %361 = or i64 %358, %360
  %362 = load i32, i32* @RECOVERY_MODE_NEXT_HSYNC, align 4
  %363 = call i64 @RECOVERY_MODE(i32 %362)
  %364 = or i64 %361, %363
  %365 = load i64, i64* @VID_IGNORE_MISS_VSYNC, align 8
  %366 = or i64 %364, %365
  %367 = load i64, i64* %10, align 8
  %368 = or i64 %367, %366
  store i64 %368, i64* %10, align 8
  %369 = load i64, i64* %10, align 8
  %370 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %371 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @VID_MAIN_CTL, align 8
  %374 = add nsw i64 %372, %373
  %375 = call i32 @writel(i64 %369, i64 %374)
  br label %376

376:                                              ; preds = %356, %281
  %377 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %378 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @MCTL_MAIN_DATA_CTL, align 8
  %381 = add nsw i64 %379, %380
  %382 = call i64 @readl(i64 %381)
  store i64 %382, i64* %10, align 8
  %383 = load i64, i64* @IF_VID_SELECT_MASK, align 8
  %384 = load i64, i64* @HOST_EOT_GEN, align 8
  %385 = or i64 %383, %384
  %386 = load i64, i64* @IF_VID_MODE, align 8
  %387 = or i64 %385, %386
  %388 = xor i64 %387, -1
  %389 = load i64, i64* %10, align 8
  %390 = and i64 %389, %388
  store i64 %390, i64* %10, align 8
  %391 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %392 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %391, i32 0, i32 0
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %392, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @MIPI_DSI_MODE_EOT_PACKET, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %403, label %399

399:                                              ; preds = %376
  %400 = load i64, i64* @HOST_EOT_GEN, align 8
  %401 = load i64, i64* %10, align 8
  %402 = or i64 %401, %400
  store i64 %402, i64* %10, align 8
  br label %403

403:                                              ; preds = %399, %376
  %404 = load %struct.cdns_dsi_output*, %struct.cdns_dsi_output** %5, align 8
  %405 = getelementptr inbounds %struct.cdns_dsi_output, %struct.cdns_dsi_output* %404, i32 0, i32 0
  %406 = load %struct.TYPE_12__*, %struct.TYPE_12__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %410 = and i32 %408, %409
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %423

412:                                              ; preds = %403
  %413 = load i64, i64* @IF_VID_MODE, align 8
  %414 = load %struct.cdns_dsi_input*, %struct.cdns_dsi_input** %3, align 8
  %415 = getelementptr inbounds %struct.cdns_dsi_input, %struct.cdns_dsi_input* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call i64 @IF_VID_SELECT(i32 %416)
  %418 = or i64 %413, %417
  %419 = load i64, i64* @VID_EN, align 8
  %420 = or i64 %418, %419
  %421 = load i64, i64* %10, align 8
  %422 = or i64 %421, %420
  store i64 %422, i64* %10, align 8
  br label %423

423:                                              ; preds = %412, %403
  %424 = load i64, i64* %10, align 8
  %425 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %426 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @MCTL_MAIN_DATA_CTL, align 8
  %429 = add nsw i64 %427, %428
  %430 = call i32 @writel(i64 %424, i64 %429)
  %431 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %432 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load i64, i64* @MCTL_MAIN_EN, align 8
  %435 = add nsw i64 %433, %434
  %436 = call i64 @readl(i64 %435)
  %437 = load %struct.cdns_dsi_input*, %struct.cdns_dsi_input** %3, align 8
  %438 = getelementptr inbounds %struct.cdns_dsi_input, %struct.cdns_dsi_input* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = call i64 @IF_EN(i32 %439)
  %441 = or i64 %436, %440
  store i64 %441, i64* %10, align 8
  %442 = load i64, i64* %10, align 8
  %443 = load %struct.cdns_dsi*, %struct.cdns_dsi** %4, align 8
  %444 = getelementptr inbounds %struct.cdns_dsi, %struct.cdns_dsi* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @MCTL_MAIN_EN, align 8
  %447 = add nsw i64 %445, %446
  %448 = call i32 @writel(i64 %442, i64 %447)
  br label %449

449:                                              ; preds = %423, %335, %33
  ret void
}

declare dso_local %struct.cdns_dsi_input* @bridge_to_cdns_dsi_input(%struct.drm_bridge*) #1

declare dso_local %struct.cdns_dsi* @input_to_dsi(%struct.cdns_dsi_input*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mipi_dsi_pixel_format_to_bpp(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cdns_dsi_check_conf(%struct.cdns_dsi*, %struct.drm_display_mode*, %struct.cdns_dsi_cfg*, i32) #1

declare dso_local i32 @cdns_dsi_hs_init(%struct.cdns_dsi*) #1

declare dso_local i32 @cdns_dsi_init_link(%struct.cdns_dsi*) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @HBP_LEN(i32) #1

declare dso_local i64 @HSA_LEN(i64) #1

declare dso_local i64 @HFP_LEN(i32) #1

declare dso_local i64 @HACT_LEN(i32) #1

declare dso_local i64 @VBP_LEN(i64) #1

declare dso_local i64 @VFP_LEN(i64) #1

declare dso_local i64 @VSA_LEN(i64) #1

declare dso_local i64 @BLK_LINE_PULSE_PKT_LEN(i64) #1

declare dso_local i64 @MAX_LINE_LIMIT(i64) #1

declare dso_local i64 @BLK_LINE_EVENT_PKT_LEN(i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @DIV_ROUND_DOWN_ULL(i32, i32) #1

declare dso_local i64 @REG_WAKEUP_TIME(i64) #1

declare dso_local i64 @REG_LINE_DURATION(i64) #1

declare dso_local i64 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i64 @CLK_DIV(i64) #1

declare dso_local i64 @HSTX_TIMEOUT(i64) #1

declare dso_local i64 @LPRX_TIMEOUT(i64) #1

declare dso_local i64 @VID_DATATYPE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @REG_BLKLINE_MODE(i32) #1

declare dso_local i64 @REG_BLKEOL_MODE(i32) #1

declare dso_local i64 @RECOVERY_MODE(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @IF_VID_SELECT(i32) #1

declare dso_local i64 @IF_EN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
