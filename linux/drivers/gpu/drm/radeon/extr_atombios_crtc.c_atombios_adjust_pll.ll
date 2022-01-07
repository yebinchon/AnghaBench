; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_adjust_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_adjust_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.radeon_crtc = type { i32, i32, i32, i64, %struct.TYPE_9__, i64, %struct.drm_encoder* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.drm_encoder = type { i64 }
%struct.radeon_encoder = type { i32, i64, i32, %struct.radeon_encoder_mst*, i64 }
%struct.radeon_encoder_mst = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.radeon_connector_atom_dig* }
%struct.radeon_connector_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }
%struct.radeon_connector = type { %struct.radeon_connector_atom_dig* }
%union.adjust_pixel_clock = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i32, i8* }
%struct.radeon_encoder_atom_dig = type { i32, %struct.TYPE_14__* }
%struct.TYPE_8__ = type { i64, i32, i8*, i32 }

@CHIP_RS600 = common dso_local global i64 0, align 8
@CHIP_RS690 = common dso_local global i64 0, align 8
@CHIP_RS740 = common dso_local global i64 0, align 8
@RADEON_PLL_PREFER_CLOSEST_LOWER = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_HIGH_FB_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_LOW_REF_DIV = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@RADEON_PLL_PREFER_MINM_OVER_MAXP = common dso_local global i32 0, align 4
@RADEON_PLL_USE_FRAC_FB_DIV = common dso_local global i32 0, align 4
@CHIP_RS780 = common dso_local global i64 0, align 8
@CHIP_RS880 = common dso_local global i64 0, align 8
@RADEON_PLL_LEGACY = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@RADEON_PLL_USE_REF_DIV = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 = common dso_local global i64 0, align 8
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@RADEON_PLL_IS_LCD = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DAC = common dso_local global i64 0, align 8
@RADEON_PLL_NO_ODD_POST_DIV = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_LVDS = common dso_local global i64 0, align 8
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@AdjustDisplayPll = common dso_local global i32 0, align 4
@ADJUST_DISPLAY_CONFIG_SS_ENABLE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_SS_ENABLE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_COHERENT_MODE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_DUAL_LINK = common dso_local global i32 0, align 4
@RADEON_PLL_USE_POST_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown table version %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @atombios_adjust_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atombios_adjust_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.radeon_encoder*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.radeon_connector*, align 8
  %19 = alloca %struct.radeon_connector_atom_dig*, align 8
  %20 = alloca %struct.radeon_encoder_mst*, align 8
  %21 = alloca %struct.radeon_connector_atom_dig*, align 8
  %22 = alloca %union.adjust_pixel_clock, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.radeon_encoder_atom_dig*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %28 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %27)
  store %struct.radeon_crtc* %28, %struct.radeon_crtc** %6, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 0
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  store %struct.drm_device* %31, %struct.drm_device** %7, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load %struct.radeon_device*, %struct.radeon_device** %33, align 8
  store %struct.radeon_device* %34, %struct.radeon_device** %8, align 8
  %35 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %35, i32 0, i32 6
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %36, align 8
  store %struct.drm_encoder* %37, %struct.drm_encoder** %9, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %39 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %38)
  store %struct.radeon_encoder* %39, %struct.radeon_encoder** %10, align 8
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %41 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %40)
  store %struct.drm_connector* %41, %struct.drm_connector** %11, align 8
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %46 = call i32 @atombios_get_encoder_mode(%struct.drm_encoder* %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %54 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %16, align 4
  %56 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder* %56, i32 %59)
  store i32 %60, i32* %17, align 4
  %61 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %64 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %180

66:                                               ; preds = %2
  %67 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %68 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CHIP_RS600, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHIP_RS690, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHIP_RS740, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78, %72, %66
  %85 = load i32, i32* @RADEON_PLL_PREFER_CLOSEST_LOWER, align 4
  %86 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %87 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %92 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 200000
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* @RADEON_PLL_PREFER_HIGH_FB_DIV, align 4
  %101 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %102 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %111

105:                                              ; preds = %94, %90
  %106 = load i32, i32* @RADEON_PLL_PREFER_LOW_REF_DIV, align 4
  %107 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %108 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %105, %99
  %112 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @CHIP_RV770, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* @RADEON_PLL_PREFER_MINM_OVER_MAXP, align 4
  %119 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %120 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %111
  %124 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %125 = call i64 @ASIC_IS_DCE41(%struct.radeon_device* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %129 = call i64 @ASIC_IS_DCE61(%struct.radeon_device* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %133 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131, %127, %123
  %136 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %137 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %138 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %135, %131
  %142 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %143 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @CHIP_RS780, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %141
  %148 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CHIP_RS880, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %147, %141
  %154 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %155 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %160 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %161 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %153, %147
  %165 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %166 = call i64 @ASIC_IS_DCE32(%struct.radeon_device* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %170 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %171, 165000
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %175 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %176 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %173, %168, %164
  br label %203

180:                                              ; preds = %2
  %181 = load i32, i32* @RADEON_PLL_LEGACY, align 4
  %182 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %183 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %187 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 200000
  br i1 %189, label %190, label %196

190:                                              ; preds = %180
  %191 = load i32, i32* @RADEON_PLL_PREFER_HIGH_FB_DIV, align 4
  %192 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %193 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %202

196:                                              ; preds = %180
  %197 = load i32, i32* @RADEON_PLL_PREFER_LOW_REF_DIV, align 4
  %198 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %199 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %190
  br label %203

203:                                              ; preds = %202, %179
  %204 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %205 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %208 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %209 = or i32 %207, %208
  %210 = and i32 %206, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %203
  %213 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %214 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %213)
  %215 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %212, %203
  %218 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %219 = icmp ne %struct.drm_connector* %218, null
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %222 = call %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector* %221)
  store %struct.radeon_connector* %222, %struct.radeon_connector** %18, align 8
  %223 = load %struct.radeon_connector*, %struct.radeon_connector** %18, align 8
  %224 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %223, i32 0, i32 0
  %225 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %224, align 8
  store %struct.radeon_connector_atom_dig* %225, %struct.radeon_connector_atom_dig** %19, align 8
  %226 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %19, align 8
  %227 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %220, %217
  br label %230

230:                                              ; preds = %229, %212
  %231 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %232 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %230
  %236 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %237 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %236, i32 0, i32 3
  %238 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %237, align 8
  store %struct.radeon_encoder_mst* %238, %struct.radeon_encoder_mst** %20, align 8
  %239 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %20, align 8
  %240 = getelementptr inbounds %struct.radeon_encoder_mst, %struct.radeon_encoder_mst* %239, i32 0, i32 1
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %242, align 8
  store %struct.radeon_connector_atom_dig* %243, %struct.radeon_connector_atom_dig** %21, align 8
  %244 = load %struct.radeon_connector_atom_dig*, %struct.radeon_connector_atom_dig** %21, align 8
  %245 = getelementptr inbounds %struct.radeon_connector_atom_dig, %struct.radeon_connector_atom_dig* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %14, align 4
  br label %247

247:                                              ; preds = %235, %230
  %248 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %249 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %301

254:                                              ; preds = %247
  %255 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %256 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %300

259:                                              ; preds = %254
  %260 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %261 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %260, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %299

265:                                              ; preds = %259
  %266 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %267 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %268 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %272 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %276 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %275, i32 0, i32 3
  store i64 %274, i64* %276, align 8
  %277 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %278 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %298

280:                                              ; preds = %265
  %281 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %282 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @CHIP_RS780, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %280
  %287 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %288 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @CHIP_RS880, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %294 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %295 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %292, %286, %280, %265
  br label %299

299:                                              ; preds = %298, %259
  br label %300

300:                                              ; preds = %299, %254
  br label %301

301:                                              ; preds = %300, %247
  %302 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %303 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %343

305:                                              ; preds = %301
  %306 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %307 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1, align 8
  %310 = icmp eq i64 %308, %309
  br i1 %310, label %311, label %316

311:                                              ; preds = %305
  %312 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %313 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = mul nsw i32 %314, 2
  store i32 %315, i32* %12, align 4
  br label %316

316:                                              ; preds = %311, %305
  %317 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %318 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load i32, i32* @RADEON_PLL_PREFER_CLOSEST_LOWER, align 4
  %325 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %326 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %323, %316
  %330 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %331 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %329
  %337 = load i32, i32* @RADEON_PLL_IS_LCD, align 4
  %338 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %339 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %336, %329
  br label %368

343:                                              ; preds = %301
  %344 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %345 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @DRM_MODE_ENCODER_DAC, align 8
  %348 = icmp ne i64 %346, %347
  br i1 %348, label %349, label %355

349:                                              ; preds = %343
  %350 = load i32, i32* @RADEON_PLL_NO_ODD_POST_DIV, align 4
  %351 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %352 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = or i32 %353, %350
  store i32 %354, i32* %352, align 8
  br label %355

355:                                              ; preds = %349, %343
  %356 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %357 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @DRM_MODE_ENCODER_LVDS, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %367

361:                                              ; preds = %355
  %362 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %363 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %364 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %361, %355
  br label %368

368:                                              ; preds = %367, %342
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %371 = icmp eq i32 %369, %370
  br i1 %371, label %372, label %388

372:                                              ; preds = %368
  %373 = load i32, i32* %16, align 4
  switch i32 %373, label %375 [
    i32 8, label %374
    i32 10, label %376
    i32 12, label %380
    i32 16, label %384
  ]

374:                                              ; preds = %372
  br label %375

375:                                              ; preds = %372, %374
  br label %387

376:                                              ; preds = %372
  %377 = load i32, i32* %15, align 4
  %378 = mul nsw i32 %377, 5
  %379 = sdiv i32 %378, 4
  store i32 %379, i32* %15, align 4
  br label %387

380:                                              ; preds = %372
  %381 = load i32, i32* %15, align 4
  %382 = mul nsw i32 %381, 3
  %383 = sdiv i32 %382, 2
  store i32 %383, i32* %15, align 4
  br label %387

384:                                              ; preds = %372
  %385 = load i32, i32* %15, align 4
  %386 = mul nsw i32 %385, 2
  store i32 %386, i32* %15, align 4
  br label %387

387:                                              ; preds = %384, %380, %376, %375
  br label %388

388:                                              ; preds = %387, %368
  %389 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %390 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %389)
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %629

392:                                              ; preds = %388
  %393 = load i32, i32* @COMMAND, align 4
  %394 = load i32, i32* @AdjustDisplayPll, align 4
  %395 = call i32 @GetIndexIntoMasterTable(i32 %393, i32 %394)
  store i32 %395, i32* %25, align 4
  %396 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %397 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %25, align 4
  %401 = call i32 @atom_parse_cmd_header(i32 %399, i32 %400, i32* %23, i32* %24)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %405, label %403

403:                                              ; preds = %392
  %404 = load i32, i32* %12, align 4
  store i32 %404, i32* %3, align 4
  br label %631

405:                                              ; preds = %392
  %406 = call i32 @memset(%union.adjust_pixel_clock* %22, i32 0, i32 64)
  %407 = load i32, i32* %23, align 4
  switch i32 %407, label %623 [
    i32 1, label %408
  ]

408:                                              ; preds = %405
  %409 = load i32, i32* %24, align 4
  switch i32 %409, label %617 [
    i32 1, label %410
    i32 2, label %410
    i32 3, label %453
  ]

410:                                              ; preds = %408, %408
  %411 = load i32, i32* %15, align 4
  %412 = sdiv i32 %411, 10
  %413 = call i8* @cpu_to_le16(i32 %412)
  %414 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_8__*
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 2
  store i8* %413, i8** %415, align 8
  %416 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %417 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_8__*
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  store i64 %418, i64* %420, align 8
  %421 = load i32, i32* %13, align 4
  %422 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_8__*
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 1
  store i32 %421, i32* %423, align 8
  %424 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %425 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %440

428:                                              ; preds = %410
  %429 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %430 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %429, i32 0, i32 4
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %440

434:                                              ; preds = %428
  %435 = load i32, i32* @ADJUST_DISPLAY_CONFIG_SS_ENABLE, align 4
  %436 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_8__*
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 3
  %438 = load i32, i32* %437, align 8
  %439 = or i32 %438, %435
  store i32 %439, i32* %437, align 8
  br label %440

440:                                              ; preds = %434, %428, %410
  %441 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %442 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = load i32, i32* %25, align 4
  %446 = bitcast %union.adjust_pixel_clock* %22 to i32*
  %447 = call i32 @atom_execute_table(i32 %444, i32 %445, i32* %446)
  %448 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_8__*
  %449 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %448, i32 0, i32 2
  %450 = load i8*, i8** %449, align 8
  %451 = call i32 @le16_to_cpu(i8* %450)
  %452 = mul nsw i32 %451, 10
  store i32 %452, i32* %12, align 4
  br label %622

453:                                              ; preds = %408
  %454 = load i32, i32* %15, align 4
  %455 = sdiv i32 %454, 10
  %456 = call i8* @cpu_to_le16(i32 %455)
  %457 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 4
  store i8* %456, i8** %459, align 8
  %460 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %461 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %464 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 0
  store i64 %462, i64* %465, align 8
  %466 = load i32, i32* %13, align 4
  %467 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 1
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 1
  store i32 %466, i32* %469, align 8
  %470 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %471 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 3
  store i32 0, i32* %472, align 8
  %473 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %474 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %473, i32 0, i32 5
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %490

477:                                              ; preds = %453
  %478 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %479 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %478, i32 0, i32 4
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %490

483:                                              ; preds = %477
  %484 = load i32, i32* @DISPPLL_CONFIG_SS_ENABLE, align 4
  %485 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %486, i32 0, i32 3
  %488 = load i32, i32* %487, align 8
  %489 = or i32 %488, %484
  store i32 %489, i32* %487, align 8
  br label %490

490:                                              ; preds = %483, %477, %453
  %491 = load i32, i32* %13, align 4
  %492 = call i32 @ENCODER_MODE_IS_DP(i32 %491)
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %507

494:                                              ; preds = %490
  %495 = load i32, i32* @DISPPLL_CONFIG_COHERENT_MODE, align 4
  %496 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, %495
  store i32 %500, i32* %498, align 8
  %501 = load i32, i32* %14, align 4
  %502 = sdiv i32 %501, 10
  %503 = call i8* @cpu_to_le16(i32 %502)
  %504 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 4
  store i8* %503, i8** %506, align 8
  br label %542

507:                                              ; preds = %490
  %508 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %509 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %541

514:                                              ; preds = %507
  %515 = load %struct.radeon_encoder*, %struct.radeon_encoder** %10, align 8
  %516 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %515, i32 0, i32 3
  %517 = load %struct.radeon_encoder_mst*, %struct.radeon_encoder_mst** %516, align 8
  %518 = bitcast %struct.radeon_encoder_mst* %517 to %struct.radeon_encoder_atom_dig*
  store %struct.radeon_encoder_atom_dig* %518, %struct.radeon_encoder_atom_dig** %26, align 8
  %519 = load %struct.radeon_encoder_atom_dig*, %struct.radeon_encoder_atom_dig** %26, align 8
  %520 = getelementptr inbounds %struct.radeon_encoder_atom_dig, %struct.radeon_encoder_atom_dig* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %530

523:                                              ; preds = %514
  %524 = load i32, i32* @DISPPLL_CONFIG_COHERENT_MODE, align 4
  %525 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %526 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %525, i32 0, i32 1
  %527 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i32 0, i32 3
  %528 = load i32, i32* %527, align 8
  %529 = or i32 %528, %524
  store i32 %529, i32* %527, align 8
  br label %530

530:                                              ; preds = %523, %514
  %531 = load i32, i32* %17, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %540

533:                                              ; preds = %530
  %534 = load i32, i32* @DISPPLL_CONFIG_DUAL_LINK, align 4
  %535 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %536 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 3
  %538 = load i32, i32* %537, align 8
  %539 = or i32 %538, %534
  store i32 %539, i32* %537, align 8
  br label %540

540:                                              ; preds = %533, %530
  br label %541

541:                                              ; preds = %540, %507
  br label %542

542:                                              ; preds = %541, %494
  %543 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %544 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %543)
  %545 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %546 = icmp ne i64 %544, %545
  br i1 %546, label %547, label %553

547:                                              ; preds = %542
  %548 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %549 = call i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %548)
  %550 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %551 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %550, i32 0, i32 1
  %552 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %551, i32 0, i32 2
  store i64 %549, i64* %552, align 8
  br label %557

553:                                              ; preds = %542
  %554 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %555 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 2
  store i64 0, i64* %556, align 8
  br label %557

557:                                              ; preds = %553, %547
  %558 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %559 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = load i32, i32* %25, align 4
  %563 = bitcast %union.adjust_pixel_clock* %22 to i32*
  %564 = call i32 @atom_execute_table(i32 %561, i32 %562, i32* %563)
  %565 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %566, i32 0, i32 2
  %568 = load i32, i32* %567, align 8
  %569 = call i32 @le32_to_cpu(i32 %568)
  %570 = mul nsw i32 %569, 10
  store i32 %570, i32* %12, align 4
  %571 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %572 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %572, i32 0, i32 1
  %574 = load i64, i64* %573, align 8
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %593

576:                                              ; preds = %557
  %577 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %578 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %579 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %578, i32 0, i32 2
  %580 = load i32, i32* %579, align 8
  %581 = or i32 %580, %577
  store i32 %581, i32* %579, align 8
  %582 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %583 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %584 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %583, i32 0, i32 2
  %585 = load i32, i32* %584, align 8
  %586 = or i32 %585, %582
  store i32 %586, i32* %584, align 8
  %587 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %588 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %587, i32 0, i32 0
  %589 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %588, i32 0, i32 1
  %590 = load i64, i64* %589, align 8
  %591 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %592 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %591, i32 0, i32 3
  store i64 %590, i64* %592, align 8
  br label %593

593:                                              ; preds = %576, %557
  %594 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %595 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %616

599:                                              ; preds = %593
  %600 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %601 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %602 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %601, i32 0, i32 2
  %603 = load i32, i32* %602, align 8
  %604 = or i32 %603, %600
  store i32 %604, i32* %602, align 8
  %605 = load i32, i32* @RADEON_PLL_USE_POST_DIV, align 4
  %606 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %607 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %606, i32 0, i32 2
  %608 = load i32, i32* %607, align 8
  %609 = or i32 %608, %605
  store i32 %609, i32* %607, align 8
  %610 = bitcast %union.adjust_pixel_clock* %22 to %struct.TYPE_13__*
  %611 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %615 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %614, i32 0, i32 1
  store i32 %613, i32* %615, align 4
  br label %616

616:                                              ; preds = %599, %593
  br label %622

617:                                              ; preds = %408
  %618 = load i32, i32* %23, align 4
  %619 = load i32, i32* %24, align 4
  %620 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %618, i32 %619)
  %621 = load i32, i32* %12, align 4
  store i32 %621, i32* %3, align 4
  br label %631

622:                                              ; preds = %616, %440
  br label %628

623:                                              ; preds = %405
  %624 = load i32, i32* %23, align 4
  %625 = load i32, i32* %24, align 4
  %626 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %624, i32 %625)
  %627 = load i32, i32* %12, align 4
  store i32 %627, i32* %3, align 4
  br label %631

628:                                              ; preds = %622
  br label %629

629:                                              ; preds = %628, %388
  %630 = load i32, i32* %12, align 4
  store i32 %630, i32* %3, align 4
  br label %631

631:                                              ; preds = %629, %623, %617, %403
  %632 = load i32, i32* %3, align 4
  ret i32 %632
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @atombios_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @radeon_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE32(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE61(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

declare dso_local i64 @radeon_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.radeon_connector* @to_radeon_connector(%struct.drm_connector*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%union.adjust_pixel_clock*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @ENCODER_MODE_IS_DP(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
