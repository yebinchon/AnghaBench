; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_adjust_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_atombios_crtc.c_amdgpu_atombios_crtc_adjust_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_crtc = type { i32, i32, i32, i64, %struct.TYPE_9__, i64, %struct.drm_encoder* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.drm_encoder = type { i32 }
%struct.amdgpu_encoder = type { i32, i64, i32, %struct.amdgpu_encoder_atom_dig* }
%struct.amdgpu_encoder_atom_dig = type { i32 }
%struct.drm_connector = type { i32 }
%union.adjust_pixel_clock = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i64, i32, i64, i32, i8* }
%struct.amdgpu_connector = type { %struct.amdgpu_connector_atom_dig* }
%struct.amdgpu_connector_atom_dig = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i8*, i32 }

@AMDGPU_PLL_USE_FRAC_FB_DIV = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP_SUPPORT = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_NONE = common dso_local global i64 0, align 8
@AMDGPU_PLL_USE_REF_DIV = common dso_local global i32 0, align 4
@ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 = common dso_local global i64 0, align 8
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@AMDGPU_PLL_PREFER_CLOSEST_LOWER = common dso_local global i32 0, align 4
@AMDGPU_PLL_IS_LCD = common dso_local global i32 0, align 4
@ATOM_ENCODER_MODE_HDMI = common dso_local global i32 0, align 4
@COMMAND = common dso_local global i32 0, align 4
@AdjustDisplayPll = common dso_local global i32 0, align 4
@ADJUST_DISPLAY_CONFIG_SS_ENABLE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_SS_ENABLE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_COHERENT_MODE = common dso_local global i32 0, align 4
@DISPPLL_CONFIG_DUAL_LINK = common dso_local global i32 0, align 4
@AMDGPU_PLL_USE_POST_DIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown table version %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @amdgpu_atombios_crtc_adjust_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_atombios_crtc_adjust_pll(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.amdgpu_crtc*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.amdgpu_encoder*, align 8
  %11 = alloca %struct.drm_connector*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.adjust_pixel_clock, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.amdgpu_connector*, align 8
  %23 = alloca %struct.amdgpu_connector_atom_dig*, align 8
  %24 = alloca %struct.amdgpu_encoder_atom_dig*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %26 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %25)
  store %struct.amdgpu_crtc* %26, %struct.amdgpu_crtc** %6, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %28 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %27, i32 0, i32 0
  %29 = load %struct.drm_device*, %struct.drm_device** %28, align 8
  store %struct.drm_device* %29, %struct.drm_device** %7, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %31, align 8
  store %struct.amdgpu_device* %32, %struct.amdgpu_device** %8, align 8
  %33 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %33, i32 0, i32 6
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %34, align 8
  store %struct.drm_encoder* %35, %struct.drm_encoder** %9, align 8
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %37 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %36)
  store %struct.amdgpu_encoder* %37, %struct.amdgpu_encoder** %10, align 8
  %38 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %39 = call %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder* %38)
  store %struct.drm_connector* %39, %struct.drm_connector** %11, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %44 = call i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder* %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %52 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %16, align 4
  %54 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder* %54, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %60 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %61 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %63 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %66 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %2
  %71 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %72 = call i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %71)
  %73 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %70, %2
  %76 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %77 = icmp ne %struct.drm_connector* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.drm_connector*, %struct.drm_connector** %11, align 8
  %80 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %79)
  store %struct.amdgpu_connector* %80, %struct.amdgpu_connector** %22, align 8
  %81 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %22, align 8
  %82 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %81, i32 0, i32 0
  %83 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %82, align 8
  store %struct.amdgpu_connector_atom_dig* %83, %struct.amdgpu_connector_atom_dig** %23, align 8
  %84 = load %struct.amdgpu_connector_atom_dig*, %struct.amdgpu_connector_atom_dig** %23, align 8
  %85 = getelementptr inbounds %struct.amdgpu_connector_atom_dig, %struct.amdgpu_connector_atom_dig* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %78, %75
  br label %88

88:                                               ; preds = %87, %70
  %89 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %90 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %125

95:                                               ; preds = %88
  %96 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %97 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %95
  %101 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %102 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load i32, i32* @AMDGPU_PLL_USE_REF_DIV, align 4
  %108 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %109 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %113 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %117 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %119 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %120 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %106, %100
  br label %124

124:                                              ; preds = %123, %95
  br label %125

125:                                              ; preds = %124, %88
  %126 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %127 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %134, 2
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %131, %125
  %137 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %138 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* @AMDGPU_PLL_PREFER_CLOSEST_LOWER, align 4
  %145 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %146 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %136
  %150 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %151 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load i32, i32* @AMDGPU_PLL_IS_LCD, align 4
  %158 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %159 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %156, %149
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @ATOM_ENCODER_MODE_HDMI, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %162
  %167 = load i32, i32* %16, align 4
  switch i32 %167, label %169 [
    i32 8, label %168
    i32 10, label %170
    i32 12, label %174
    i32 16, label %178
  ]

168:                                              ; preds = %166
  br label %169

169:                                              ; preds = %166, %168
  br label %181

170:                                              ; preds = %166
  %171 = load i32, i32* %15, align 4
  %172 = mul nsw i32 %171, 5
  %173 = sdiv i32 %172, 4
  store i32 %173, i32* %15, align 4
  br label %181

174:                                              ; preds = %166
  %175 = load i32, i32* %15, align 4
  %176 = mul nsw i32 %175, 3
  %177 = sdiv i32 %176, 2
  store i32 %177, i32* %15, align 4
  br label %181

178:                                              ; preds = %166
  %179 = load i32, i32* %15, align 4
  %180 = mul nsw i32 %179, 2
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %178, %174, %170, %169
  br label %182

182:                                              ; preds = %181, %162
  %183 = load i32, i32* @COMMAND, align 4
  %184 = load i32, i32* @AdjustDisplayPll, align 4
  %185 = call i32 @GetIndexIntoMasterTable(i32 %183, i32 %184)
  store i32 %185, i32* %21, align 4
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %21, align 4
  %191 = call i32 @amdgpu_atom_parse_cmd_header(i32 %189, i32 %190, i32* %19, i32* %20)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %182
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %3, align 4
  br label %419

195:                                              ; preds = %182
  %196 = call i32 @memset(%union.adjust_pixel_clock* %18, i32 0, i32 64)
  %197 = load i32, i32* %19, align 4
  switch i32 %197, label %412 [
    i32 1, label %198
  ]

198:                                              ; preds = %195
  %199 = load i32, i32* %20, align 4
  switch i32 %199, label %406 [
    i32 1, label %200
    i32 2, label %200
    i32 3, label %243
  ]

200:                                              ; preds = %198, %198
  %201 = load i32, i32* %15, align 4
  %202 = sdiv i32 %201, 10
  %203 = call i8* @cpu_to_le16(i32 %202)
  %204 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_8__*
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  %206 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %207 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_8__*
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load i32, i32* %13, align 4
  %212 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_8__*
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %215 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %214, i32 0, i32 5
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %200
  %219 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %220 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %218
  %225 = load i32, i32* @ADJUST_DISPLAY_CONFIG_SS_ENABLE, align 4
  %226 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_8__*
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %224, %218, %200
  %231 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %232 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %21, align 4
  %236 = bitcast %union.adjust_pixel_clock* %18 to i32*
  %237 = call i32 @amdgpu_atom_execute_table(i32 %234, i32 %235, i32* %236)
  %238 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_8__*
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @le16_to_cpu(i8* %240)
  %242 = mul nsw i32 %241, 10
  store i32 %242, i32* %12, align 4
  br label %411

243:                                              ; preds = %198
  %244 = load i32, i32* %15, align 4
  %245 = sdiv i32 %244, 10
  %246 = call i8* @cpu_to_le16(i32 %245)
  %247 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 4
  store i8* %246, i8** %249, align 8
  %250 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %251 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  store i64 %252, i64* %255, align 8
  %256 = load i32, i32* %13, align 4
  %257 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  store i32 %256, i32* %259, align 8
  %260 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 3
  store i32 0, i32* %262, align 8
  %263 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %264 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %263, i32 0, i32 5
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %243
  %268 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %269 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %267
  %274 = load i32, i32* @DISPPLL_CONFIG_SS_ENABLE, align 4
  %275 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %274
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %273, %267, %243
  %281 = load i32, i32* %13, align 4
  %282 = call i32 @ENCODER_MODE_IS_DP(i32 %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %297

284:                                              ; preds = %280
  %285 = load i32, i32* @DISPPLL_CONFIG_COHERENT_MODE, align 4
  %286 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %285
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sdiv i32 %291, 10
  %293 = call i8* @cpu_to_le16(i32 %292)
  %294 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 4
  store i8* %293, i8** %296, align 8
  br label %331

297:                                              ; preds = %280
  %298 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %299 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @ATOM_DEVICE_DFP_SUPPORT, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %330

304:                                              ; preds = %297
  %305 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %306 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %305, i32 0, i32 3
  %307 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %306, align 8
  store %struct.amdgpu_encoder_atom_dig* %307, %struct.amdgpu_encoder_atom_dig** %24, align 8
  %308 = load %struct.amdgpu_encoder_atom_dig*, %struct.amdgpu_encoder_atom_dig** %24, align 8
  %309 = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, %struct.amdgpu_encoder_atom_dig* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %304
  %313 = load i32, i32* @DISPPLL_CONFIG_COHERENT_MODE, align 4
  %314 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = or i32 %317, %313
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %312, %304
  %320 = load i32, i32* %17, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %319
  %323 = load i32, i32* @DISPPLL_CONFIG_DUAL_LINK, align 4
  %324 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %323
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %322, %319
  br label %330

330:                                              ; preds = %329, %297
  br label %331

331:                                              ; preds = %330, %284
  %332 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %333 = call i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %332)
  %334 = load i64, i64* @ENCODER_OBJECT_ID_NONE, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %331
  %337 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %338 = call i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder* %337)
  %339 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 2
  store i64 %338, i64* %341, align 8
  br label %346

342:                                              ; preds = %331
  %343 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 2
  store i64 0, i64* %345, align 8
  br label %346

346:                                              ; preds = %342, %336
  %347 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %348 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %21, align 4
  %352 = bitcast %union.adjust_pixel_clock* %18 to i32*
  %353 = call i32 @amdgpu_atom_execute_table(i32 %350, i32 %351, i32* %352)
  %354 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = call i32 @le32_to_cpu(i32 %357)
  %359 = mul nsw i32 %358, 10
  store i32 %359, i32* %12, align 4
  %360 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %382

365:                                              ; preds = %346
  %366 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %367 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %368 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load i32, i32* @AMDGPU_PLL_USE_REF_DIV, align 4
  %372 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %373 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = or i32 %374, %371
  store i32 %375, i32* %373, align 8
  %376 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %381 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %380, i32 0, i32 3
  store i64 %379, i64* %381, align 8
  br label %382

382:                                              ; preds = %365, %346
  %383 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %405

388:                                              ; preds = %382
  %389 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %390 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %391 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = or i32 %392, %389
  store i32 %393, i32* %391, align 8
  %394 = load i32, i32* @AMDGPU_PLL_USE_POST_DIV, align 4
  %395 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %396 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = or i32 %397, %394
  store i32 %398, i32* %396, align 8
  %399 = bitcast %union.adjust_pixel_clock* %18 to %struct.TYPE_11__*
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %6, align 8
  %404 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %403, i32 0, i32 1
  store i32 %402, i32* %404, align 4
  br label %405

405:                                              ; preds = %388, %382
  br label %411

406:                                              ; preds = %198
  %407 = load i32, i32* %19, align 4
  %408 = load i32, i32* %20, align 4
  %409 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %407, i32 %408)
  %410 = load i32, i32* %12, align 4
  store i32 %410, i32* %3, align 4
  br label %419

411:                                              ; preds = %405, %230
  br label %417

412:                                              ; preds = %195
  %413 = load i32, i32* %19, align 4
  %414 = load i32, i32* %20, align 4
  %415 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %413, i32 %414)
  %416 = load i32, i32* %12, align 4
  store i32 %416, i32* %3, align 4
  br label %419

417:                                              ; preds = %411
  %418 = load i32, i32* %12, align 4
  store i32 %418, i32* %3, align 4
  br label %419

419:                                              ; preds = %417, %412, %406, %193
  %420 = load i32, i32* %3, align 4
  ret i32 %420
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local %struct.drm_connector* @amdgpu_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_atombios_encoder_get_encoder_mode(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_dig_monitor_is_duallink(%struct.drm_encoder*, i32) #1

declare dso_local i64 @amdgpu_encoder_get_dp_bridge_encoder_id(%struct.drm_encoder*) #1

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @amdgpu_atom_parse_cmd_header(i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%union.adjust_pixel_clock*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @amdgpu_atom_execute_table(i32, i32, i32*) #1

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
