; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tilcdc/extr_tilcdc_crtc.c_tilcdc_crtc_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_display_mode, %struct.TYPE_5__*, %struct.TYPE_7__*, %struct.drm_device* }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.drm_device = type { i32, %struct.tilcdc_drm_private* }
%struct.tilcdc_drm_private = type { i32 }
%struct.tilcdc_crtc = type { i32, %struct.tilcdc_panel_info* }
%struct.tilcdc_panel_info = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i32 }

@LCDC_DMA_CTRL_REG = common dso_local global i32 0, align 4
@LCDC_DMA_BURST_1 = common dso_local global i32 0, align 4
@LCDC_DMA_BURST_2 = common dso_local global i32 0, align 4
@LCDC_DMA_BURST_4 = common dso_local global i32 0, align 4
@LCDC_DMA_BURST_8 = common dso_local global i32 0, align 4
@LCDC_DMA_BURST_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid burst size\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%dx%d, hbp=%u, hfp=%u, hsw=%u, vbp=%u, vfp=%u, vsw=%u\00", align 1
@LCDC_RASTER_TIMING_2_REG = common dso_local global i32 0, align 4
@LCDC_RASTER_TIMING_0_REG = common dso_local global i32 0, align 4
@LCDC_RASTER_TIMING_1_REG = common dso_local global i32 0, align 4
@LCDC_LPP_B10 = common dso_local global i32 0, align 4
@LCDC_RASTER_CTRL_REG = common dso_local global i32 0, align 4
@LCDC_TFT_MODE = common dso_local global i32 0, align 4
@LCDC_MONO_8BIT_MODE = common dso_local global i32 0, align 4
@LCDC_MONOCHROME_MODE = common dso_local global i32 0, align 4
@LCDC_V2_TFT_24BPP_MODE = common dso_local global i32 0, align 4
@LCDC_V2_TFT_24BPP_UNPACK = common dso_local global i32 0, align 4
@LCDC_TFT_ALT_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid pixel format\0A\00", align 1
@LCDC_INVERT_PIXEL_CLOCK = common dso_local global i32 0, align 4
@LCDC_SYNC_CTRL = common dso_local global i32 0, align 4
@LCDC_SYNC_EDGE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@LCDC_INVERT_HSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@LCDC_INVERT_VSYNC = common dso_local global i32 0, align 4
@LCDC_RASTER_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @tilcdc_crtc_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tilcdc_crtc_set_mode(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.tilcdc_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tilcdc_drm_private*, align 8
  %6 = alloca %struct.tilcdc_panel_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_display_mode*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = call %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc* %16)
  store %struct.tilcdc_crtc* %17, %struct.tilcdc_crtc** %3, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 3
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %4, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %22, align 8
  store %struct.tilcdc_drm_private* %23, %struct.tilcdc_drm_private** %5, align 8
  %24 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %3, align 8
  %25 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %24, i32 0, i32 1
  %26 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %25, align 8
  store %struct.tilcdc_panel_info* %26, %struct.tilcdc_panel_info** %6, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store %struct.drm_display_mode* %30, %struct.drm_display_mode** %14, align 8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %36, align 8
  store %struct.drm_framebuffer* %37, %struct.drm_framebuffer** %15, align 8
  %38 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %39 = icmp ne %struct.tilcdc_panel_info* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %465

45:                                               ; preds = %1
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %47 = icmp ne %struct.drm_framebuffer* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @WARN_ON(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %465

53:                                               ; preds = %45
  %54 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %55 = load i32, i32* @LCDC_DMA_CTRL_REG, align 4
  %56 = call i32 @tilcdc_read(%struct.drm_device* %54, i32 %55)
  %57 = and i32 %56, -1905
  store i32 %57, i32* %7, align 4
  %58 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %59 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %86 [
    i32 1, label %61
    i32 2, label %66
    i32 4, label %71
    i32 8, label %76
    i32 16, label %81
  ]

61:                                               ; preds = %53
  %62 = load i32, i32* @LCDC_DMA_BURST_1, align 4
  %63 = call i32 @LCDC_DMA_BURST_SIZE(i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %91

66:                                               ; preds = %53
  %67 = load i32, i32* @LCDC_DMA_BURST_2, align 4
  %68 = call i32 @LCDC_DMA_BURST_SIZE(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %91

71:                                               ; preds = %53
  %72 = load i32, i32* @LCDC_DMA_BURST_4, align 4
  %73 = call i32 @LCDC_DMA_BURST_SIZE(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %91

76:                                               ; preds = %53
  %77 = load i32, i32* @LCDC_DMA_BURST_8, align 4
  %78 = call i32 @LCDC_DMA_BURST_SIZE(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %91

81:                                               ; preds = %53
  %82 = load i32, i32* @LCDC_DMA_BURST_16, align 4
  %83 = call i32 @LCDC_DMA_BURST_SIZE(i32 %82)
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %91

86:                                               ; preds = %53
  %87 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %88 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %465

91:                                               ; preds = %81, %76, %71, %66, %61
  %92 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %93 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %99 = load i32, i32* @LCDC_DMA_CTRL_REG, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @tilcdc_write(%struct.drm_device* %98, i32 %99, i32 %100)
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  store i32 %108, i32* %8, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %111, %114
  store i32 %115, i32* %9, align 4
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %10, align 4
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  store i32 %129, i32* %11, align 4
  %130 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %131 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  store i32 %136, i32* %12, align 4
  %137 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %138 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %139, %142
  store i32 %143, i32* %13, align 4
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %148 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %158 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %159 = call i32 @tilcdc_read(%struct.drm_device* %157, i32 %158)
  %160 = and i32 %159, -1048321
  store i32 %160, i32* %7, align 4
  %161 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %162 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @LCDC_AC_BIAS_FREQUENCY(i32 %163)
  %165 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %166 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @LCDC_AC_BIAS_TRANSITIONS_PER_INT(i32 %167)
  %169 = or i32 %164, %168
  %170 = load i32, i32* %7, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %7, align 4
  %172 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %5, align 8
  %173 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %197

176:                                              ; preds = %91
  %177 = load i32, i32* %7, align 4
  %178 = and i32 %177, -2013265972
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %9, align 4
  %180 = sub nsw i32 %179, 1
  %181 = and i32 %180, 768
  %182 = ashr i32 %181, 8
  %183 = load i32, i32* %7, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %8, align 4
  %186 = sub nsw i32 %185, 1
  %187 = and i32 %186, 768
  %188 = ashr i32 %187, 4
  %189 = load i32, i32* %7, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %10, align 4
  %192 = sub nsw i32 %191, 1
  %193 = and i32 %192, 960
  %194 = shl i32 %193, 21
  %195 = load i32, i32* %7, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %176, %91
  %198 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %199 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @tilcdc_write(%struct.drm_device* %198, i32 %199, i32 %200)
  %202 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %203 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = ashr i32 %204, 4
  %206 = sub nsw i32 %205, 1
  %207 = shl i32 %206, 4
  %208 = load i32, i32* %8, align 4
  %209 = sub nsw i32 %208, 1
  %210 = and i32 %209, 255
  %211 = shl i32 %210, 24
  %212 = or i32 %207, %211
  %213 = load i32, i32* %9, align 4
  %214 = sub nsw i32 %213, 1
  %215 = and i32 %214, 255
  %216 = shl i32 %215, 16
  %217 = or i32 %212, %216
  %218 = load i32, i32* %10, align 4
  %219 = sub nsw i32 %218, 1
  %220 = and i32 %219, 63
  %221 = shl i32 %220, 10
  %222 = or i32 %217, %221
  store i32 %222, i32* %7, align 4
  %223 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %5, align 8
  %224 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %237

227:                                              ; preds = %197
  %228 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %229 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 4
  %232 = sub nsw i32 %231, 1
  %233 = and i32 %232, 64
  %234 = ashr i32 %233, 3
  %235 = load i32, i32* %7, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %227, %197
  %238 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %239 = load i32, i32* @LCDC_RASTER_TIMING_0_REG, align 4
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @tilcdc_write(%struct.drm_device* %238, i32 %239, i32 %240)
  %242 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %243 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %244, 1
  %246 = and i32 %245, 1023
  %247 = load i32, i32* %11, align 4
  %248 = and i32 %247, 255
  %249 = shl i32 %248, 24
  %250 = or i32 %246, %249
  %251 = load i32, i32* %12, align 4
  %252 = and i32 %251, 255
  %253 = shl i32 %252, 16
  %254 = or i32 %250, %253
  %255 = load i32, i32* %13, align 4
  %256 = sub nsw i32 %255, 1
  %257 = and i32 %256, 63
  %258 = shl i32 %257, 10
  %259 = or i32 %254, %258
  store i32 %259, i32* %7, align 4
  %260 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %261 = load i32, i32* @LCDC_RASTER_TIMING_1_REG, align 4
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @tilcdc_write(%struct.drm_device* %260, i32 %261, i32 %262)
  %264 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %5, align 8
  %265 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %286

268:                                              ; preds = %237
  %269 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %270 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %271, 1
  %273 = and i32 %272, 1024
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %268
  %276 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %277 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %278 = load i32, i32* @LCDC_LPP_B10, align 4
  %279 = call i32 @tilcdc_set(%struct.drm_device* %276, i32 %277, i32 %278)
  br label %285

280:                                              ; preds = %268
  %281 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %282 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %283 = load i32, i32* @LCDC_LPP_B10, align 4
  %284 = call i32 @tilcdc_clear(%struct.drm_device* %281, i32 %282, i32 %283)
  br label %285

285:                                              ; preds = %280, %275
  br label %286

286:                                              ; preds = %285, %237
  %287 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %288 = load i32, i32* @LCDC_RASTER_CTRL_REG, align 4
  %289 = call i32 @tilcdc_read(%struct.drm_device* %287, i32 %288)
  %290 = load i32, i32* @LCDC_TFT_MODE, align 4
  %291 = load i32, i32* @LCDC_MONO_8BIT_MODE, align 4
  %292 = or i32 %290, %291
  %293 = load i32, i32* @LCDC_MONOCHROME_MODE, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @LCDC_V2_TFT_24BPP_MODE, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @LCDC_V2_TFT_24BPP_UNPACK, align 4
  %298 = or i32 %296, %297
  %299 = or i32 %298, 1044480
  %300 = xor i32 %299, -1
  %301 = and i32 %289, %300
  store i32 %301, i32* %7, align 4
  %302 = load i32, i32* @LCDC_TFT_MODE, align 4
  %303 = load i32, i32* %7, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %7, align 4
  %305 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %306 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %305, i32 0, i32 7
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %286
  %310 = load i32, i32* @LCDC_TFT_ALT_ENABLE, align 4
  %311 = load i32, i32* %7, align 4
  %312 = or i32 %311, %310
  store i32 %312, i32* %7, align 4
  br label %313

313:                                              ; preds = %309, %286
  %314 = load %struct.tilcdc_drm_private*, %struct.tilcdc_drm_private** %5, align 8
  %315 = getelementptr inbounds %struct.tilcdc_drm_private, %struct.tilcdc_drm_private* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp eq i32 %316, 2
  br i1 %317, label %318, label %339

318:                                              ; preds = %313
  %319 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %320 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %319, i32 0, i32 0
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  switch i32 %323, label %333 [
    i32 133, label %324
    i32 131, label %324
    i32 129, label %325
    i32 128, label %325
    i32 132, label %329
    i32 130, label %329
  ]

324:                                              ; preds = %318, %318
  br label %338

325:                                              ; preds = %318, %318
  %326 = load i32, i32* @LCDC_V2_TFT_24BPP_UNPACK, align 4
  %327 = load i32, i32* %7, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %7, align 4
  br label %329

329:                                              ; preds = %318, %318, %325
  %330 = load i32, i32* @LCDC_V2_TFT_24BPP_MODE, align 4
  %331 = load i32, i32* %7, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %7, align 4
  br label %338

333:                                              ; preds = %318
  %334 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %335 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @dev_err(i32 %336, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %465

338:                                              ; preds = %329, %324
  br label %339

339:                                              ; preds = %338, %313
  %340 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %341 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %342, 12
  %344 = zext i1 %343 to i32
  %345 = load i32, i32* %7, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %7, align 4
  %347 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %348 = load i32, i32* @LCDC_RASTER_CTRL_REG, align 4
  %349 = load i32, i32* %7, align 4
  %350 = call i32 @tilcdc_write(%struct.drm_device* %347, i32 %348, i32 %349)
  %351 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %352 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %351, i32 0, i32 6
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %360

355:                                              ; preds = %339
  %356 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %357 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %358 = load i32, i32* @LCDC_INVERT_PIXEL_CLOCK, align 4
  %359 = call i32 @tilcdc_set(%struct.drm_device* %356, i32 %357, i32 %358)
  br label %365

360:                                              ; preds = %339
  %361 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %362 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %363 = load i32, i32* @LCDC_INVERT_PIXEL_CLOCK, align 4
  %364 = call i32 @tilcdc_clear(%struct.drm_device* %361, i32 %362, i32 %363)
  br label %365

365:                                              ; preds = %360, %355
  %366 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %367 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %365
  %371 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %372 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %373 = load i32, i32* @LCDC_SYNC_CTRL, align 4
  %374 = call i32 @tilcdc_set(%struct.drm_device* %371, i32 %372, i32 %373)
  br label %380

375:                                              ; preds = %365
  %376 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %377 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %378 = load i32, i32* @LCDC_SYNC_CTRL, align 4
  %379 = call i32 @tilcdc_clear(%struct.drm_device* %376, i32 %377, i32 %378)
  br label %380

380:                                              ; preds = %375, %370
  %381 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %382 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %381, i32 0, i32 4
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %387 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %388 = load i32, i32* @LCDC_SYNC_EDGE, align 4
  %389 = call i32 @tilcdc_set(%struct.drm_device* %386, i32 %387, i32 %388)
  br label %395

390:                                              ; preds = %380
  %391 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %392 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %393 = load i32, i32* @LCDC_SYNC_EDGE, align 4
  %394 = call i32 @tilcdc_clear(%struct.drm_device* %391, i32 %392, i32 %393)
  br label %395

395:                                              ; preds = %390, %385
  %396 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %397 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 4
  %399 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %407

402:                                              ; preds = %395
  %403 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %404 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %405 = load i32, i32* @LCDC_INVERT_HSYNC, align 4
  %406 = call i32 @tilcdc_set(%struct.drm_device* %403, i32 %404, i32 %405)
  br label %412

407:                                              ; preds = %395
  %408 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %409 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %410 = load i32, i32* @LCDC_INVERT_HSYNC, align 4
  %411 = call i32 @tilcdc_clear(%struct.drm_device* %408, i32 %409, i32 %410)
  br label %412

412:                                              ; preds = %407, %402
  %413 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  %414 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %413, i32 0, i32 8
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %412
  %420 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %421 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %422 = load i32, i32* @LCDC_INVERT_VSYNC, align 4
  %423 = call i32 @tilcdc_set(%struct.drm_device* %420, i32 %421, i32 %422)
  br label %429

424:                                              ; preds = %412
  %425 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %426 = load i32, i32* @LCDC_RASTER_TIMING_2_REG, align 4
  %427 = load i32, i32* @LCDC_INVERT_VSYNC, align 4
  %428 = call i32 @tilcdc_clear(%struct.drm_device* %425, i32 %426, i32 %427)
  br label %429

429:                                              ; preds = %424, %419
  %430 = load %struct.tilcdc_panel_info*, %struct.tilcdc_panel_info** %6, align 8
  %431 = getelementptr inbounds %struct.tilcdc_panel_info, %struct.tilcdc_panel_info* %430, i32 0, i32 3
  %432 = load i64, i64* %431, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %429
  %435 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %436 = load i32, i32* @LCDC_RASTER_CTRL_REG, align 4
  %437 = load i32, i32* @LCDC_RASTER_ORDER, align 4
  %438 = call i32 @tilcdc_set(%struct.drm_device* %435, i32 %436, i32 %437)
  br label %444

439:                                              ; preds = %429
  %440 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %441 = load i32, i32* @LCDC_RASTER_CTRL_REG, align 4
  %442 = load i32, i32* @LCDC_RASTER_ORDER, align 4
  %443 = call i32 @tilcdc_clear(%struct.drm_device* %440, i32 %441, i32 %442)
  br label %444

444:                                              ; preds = %439, %434
  %445 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %446 = call i32 @tilcdc_crtc_set_clk(%struct.drm_crtc* %445)
  %447 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %448 = call i32 @tilcdc_crtc_load_palette(%struct.drm_crtc* %447)
  %449 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %450 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %451 = call i32 @set_scanout(%struct.drm_crtc* %449, %struct.drm_framebuffer* %450)
  %452 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %453 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %452, i32 0, i32 0
  %454 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %455 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %454, i32 0, i32 1
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 0
  %458 = bitcast %struct.drm_display_mode* %453 to i8*
  %459 = bitcast %struct.drm_display_mode* %457 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %458, i8* align 4 %459, i64 36, i1 false)
  %460 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %461 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %460, i32 0, i32 0
  %462 = call i32 @tilcdc_mode_hvtotal(%struct.drm_display_mode* %461)
  %463 = load %struct.tilcdc_crtc*, %struct.tilcdc_crtc** %3, align 8
  %464 = getelementptr inbounds %struct.tilcdc_crtc, %struct.tilcdc_crtc* %463, i32 0, i32 0
  store i32 %462, i32* %464, align 8
  br label %465

465:                                              ; preds = %444, %333, %86, %52, %44
  ret void
}

declare dso_local %struct.tilcdc_crtc* @to_tilcdc_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tilcdc_read(%struct.drm_device*, i32) #1

declare dso_local i32 @LCDC_DMA_BURST_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tilcdc_write(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LCDC_AC_BIAS_FREQUENCY(i32) #1

declare dso_local i32 @LCDC_AC_BIAS_TRANSITIONS_PER_INT(i32) #1

declare dso_local i32 @tilcdc_set(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @tilcdc_clear(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @tilcdc_crtc_set_clk(%struct.drm_crtc*) #1

declare dso_local i32 @tilcdc_crtc_load_palette(%struct.drm_crtc*) #1

declare dso_local i32 @set_scanout(%struct.drm_crtc*, %struct.drm_framebuffer*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tilcdc_mode_hvtotal(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
