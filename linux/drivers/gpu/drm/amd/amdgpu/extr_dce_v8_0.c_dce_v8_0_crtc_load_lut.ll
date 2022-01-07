; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@mmINPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@INPUT_CSC_BYPASS = common dso_local global i32 0, align 4
@INPUT_CSC_CONTROL__INPUT_CSC_GRPH_MODE__SHIFT = common dso_local global i32 0, align 4
@INPUT_CSC_CONTROL__INPUT_CSC_OVL_MODE__SHIFT = common dso_local global i32 0, align 4
@mmPRESCALE_GRPH_CONTROL = common dso_local global i64 0, align 8
@PRESCALE_GRPH_CONTROL__GRPH_PRESCALE_BYPASS_MASK = common dso_local global i32 0, align 4
@mmPRESCALE_OVL_CONTROL = common dso_local global i64 0, align 8
@PRESCALE_OVL_CONTROL__OVL_PRESCALE_BYPASS_MASK = common dso_local global i32 0, align 4
@mmINPUT_GAMMA_CONTROL = common dso_local global i64 0, align 8
@INPUT_GAMMA_USE_LUT = common dso_local global i32 0, align 4
@INPUT_GAMMA_CONTROL__GRPH_INPUT_GAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@INPUT_GAMMA_CONTROL__OVL_INPUT_GAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@mmDC_LUT_CONTROL = common dso_local global i64 0, align 8
@mmDC_LUT_BLACK_OFFSET_BLUE = common dso_local global i64 0, align 8
@mmDC_LUT_BLACK_OFFSET_GREEN = common dso_local global i64 0, align 8
@mmDC_LUT_BLACK_OFFSET_RED = common dso_local global i64 0, align 8
@mmDC_LUT_WHITE_OFFSET_BLUE = common dso_local global i64 0, align 8
@mmDC_LUT_WHITE_OFFSET_GREEN = common dso_local global i64 0, align 8
@mmDC_LUT_WHITE_OFFSET_RED = common dso_local global i64 0, align 8
@mmDC_LUT_RW_MODE = common dso_local global i64 0, align 8
@mmDC_LUT_WRITE_EN_MASK = common dso_local global i64 0, align 8
@mmDC_LUT_RW_INDEX = common dso_local global i64 0, align 8
@mmDC_LUT_30_COLOR = common dso_local global i64 0, align 8
@mmDEGAMMA_CONTROL = common dso_local global i64 0, align 8
@DEGAMMA_BYPASS = common dso_local global i32 0, align 4
@DEGAMMA_CONTROL__GRPH_DEGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@DEGAMMA_CONTROL__OVL_DEGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@DEGAMMA_CONTROL__CURSOR_DEGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@mmGAMUT_REMAP_CONTROL = common dso_local global i64 0, align 8
@GAMUT_REMAP_BYPASS = common dso_local global i32 0, align 4
@GAMUT_REMAP_CONTROL__GRPH_GAMUT_REMAP_MODE__SHIFT = common dso_local global i32 0, align 4
@GAMUT_REMAP_CONTROL__OVL_GAMUT_REMAP_MODE__SHIFT = common dso_local global i32 0, align 4
@mmREGAMMA_CONTROL = common dso_local global i64 0, align 8
@REGAMMA_BYPASS = common dso_local global i32 0, align 4
@REGAMMA_CONTROL__GRPH_REGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@REGAMMA_CONTROL__OVL_REGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@OUTPUT_CSC_BYPASS = common dso_local global i32 0, align 4
@OUTPUT_CSC_CONTROL__OUTPUT_CSC_GRPH_MODE__SHIFT = common dso_local global i32 0, align 4
@OUTPUT_CSC_CONTROL__OUTPUT_CSC_OVL_MODE__SHIFT = common dso_local global i32 0, align 4
@mmALPHA_CONTROL = common dso_local global i64 0, align 8
@ALPHA_CONTROL__CURSOR_ALPHA_BLND_ENA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v8_0_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v8_0_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.amdgpu_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %10)
  store %struct.amdgpu_crtc* %11, %struct.amdgpu_crtc** %3, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 2
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %16, align 8
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %5, align 8
  %18 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @mmINPUT_CSC_CONTROL, align 8
  %23 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i32, i32* @INPUT_CSC_BYPASS, align 4
  %28 = load i32, i32* @INPUT_CSC_CONTROL__INPUT_CSC_GRPH_MODE__SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @INPUT_CSC_BYPASS, align 4
  %31 = load i32, i32* @INPUT_CSC_CONTROL__INPUT_CSC_OVL_MODE__SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = call i32 @WREG32(i64 %26, i32 %33)
  %35 = load i64, i64* @mmPRESCALE_GRPH_CONTROL, align 8
  %36 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* @PRESCALE_GRPH_CONTROL__GRPH_PRESCALE_BYPASS_MASK, align 4
  %41 = call i32 @WREG32(i64 %39, i32 %40)
  %42 = load i64, i64* @mmPRESCALE_OVL_CONTROL, align 8
  %43 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load i32, i32* @PRESCALE_OVL_CONTROL__OVL_PRESCALE_BYPASS_MASK, align 4
  %48 = call i32 @WREG32(i64 %46, i32 %47)
  %49 = load i64, i64* @mmINPUT_GAMMA_CONTROL, align 8
  %50 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load i32, i32* @INPUT_GAMMA_USE_LUT, align 4
  %55 = load i32, i32* @INPUT_GAMMA_CONTROL__GRPH_INPUT_GAMMA_MODE__SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @INPUT_GAMMA_USE_LUT, align 4
  %58 = load i32, i32* @INPUT_GAMMA_CONTROL__OVL_INPUT_GAMMA_MODE__SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = call i32 @WREG32(i64 %53, i32 %60)
  %62 = load i64, i64* @mmDC_LUT_CONTROL, align 8
  %63 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = call i32 @WREG32(i64 %66, i32 0)
  %68 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_BLUE, align 8
  %69 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %70 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = call i32 @WREG32(i64 %72, i32 0)
  %74 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_GREEN, align 8
  %75 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = call i32 @WREG32(i64 %78, i32 0)
  %80 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_RED, align 8
  %81 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i32 @WREG32(i64 %84, i32 0)
  %86 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_BLUE, align 8
  %87 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = call i32 @WREG32(i64 %90, i32 65535)
  %92 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_GREEN, align 8
  %93 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32 @WREG32(i64 %96, i32 65535)
  %98 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_RED, align 8
  %99 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %100 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = call i32 @WREG32(i64 %102, i32 65535)
  %104 = load i64, i64* @mmDC_LUT_RW_MODE, align 8
  %105 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = call i32 @WREG32(i64 %108, i32 0)
  %110 = load i64, i64* @mmDC_LUT_WRITE_EN_MASK, align 8
  %111 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = call i32 @WREG32(i64 %114, i32 7)
  %116 = load i64, i64* @mmDC_LUT_RW_INDEX, align 8
  %117 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = call i32 @WREG32(i64 %120, i32 0)
  %122 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %123 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %6, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %127 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %125, i64 %129
  store i32* %130, i32** %7, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %133 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  store i32* %136, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %163, %1
  %138 = load i32, i32* %9, align 4
  %139 = icmp slt i32 %138, 256
  br i1 %139, label %140, label %166

140:                                              ; preds = %137
  %141 = load i64, i64* @mmDC_LUT_30_COLOR, align 8
  %142 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %143 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %6, align 8
  %148 = load i32, i32* %146, align 4
  %149 = and i32 %148, 65472
  %150 = shl i32 %149, 14
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %7, align 8
  %153 = load i32, i32* %151, align 4
  %154 = and i32 %153, 65472
  %155 = shl i32 %154, 4
  %156 = or i32 %150, %155
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %8, align 8
  %159 = load i32, i32* %157, align 4
  %160 = ashr i32 %159, 6
  %161 = or i32 %156, %160
  %162 = call i32 @WREG32(i64 %145, i32 %161)
  br label %163

163:                                              ; preds = %140
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %137

166:                                              ; preds = %137
  %167 = load i64, i64* @mmDEGAMMA_CONTROL, align 8
  %168 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %169 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %167, %170
  %172 = load i32, i32* @DEGAMMA_BYPASS, align 4
  %173 = load i32, i32* @DEGAMMA_CONTROL__GRPH_DEGAMMA_MODE__SHIFT, align 4
  %174 = shl i32 %172, %173
  %175 = load i32, i32* @DEGAMMA_BYPASS, align 4
  %176 = load i32, i32* @DEGAMMA_CONTROL__OVL_DEGAMMA_MODE__SHIFT, align 4
  %177 = shl i32 %175, %176
  %178 = or i32 %174, %177
  %179 = load i32, i32* @DEGAMMA_BYPASS, align 4
  %180 = load i32, i32* @DEGAMMA_CONTROL__CURSOR_DEGAMMA_MODE__SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = or i32 %178, %181
  %183 = call i32 @WREG32(i64 %171, i32 %182)
  %184 = load i64, i64* @mmGAMUT_REMAP_CONTROL, align 8
  %185 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %186 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = load i32, i32* @GAMUT_REMAP_BYPASS, align 4
  %190 = load i32, i32* @GAMUT_REMAP_CONTROL__GRPH_GAMUT_REMAP_MODE__SHIFT, align 4
  %191 = shl i32 %189, %190
  %192 = load i32, i32* @GAMUT_REMAP_BYPASS, align 4
  %193 = load i32, i32* @GAMUT_REMAP_CONTROL__OVL_GAMUT_REMAP_MODE__SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = or i32 %191, %194
  %196 = call i32 @WREG32(i64 %188, i32 %195)
  %197 = load i64, i64* @mmREGAMMA_CONTROL, align 8
  %198 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %199 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = load i32, i32* @REGAMMA_BYPASS, align 4
  %203 = load i32, i32* @REGAMMA_CONTROL__GRPH_REGAMMA_MODE__SHIFT, align 4
  %204 = shl i32 %202, %203
  %205 = load i32, i32* @REGAMMA_BYPASS, align 4
  %206 = load i32, i32* @REGAMMA_CONTROL__OVL_REGAMMA_MODE__SHIFT, align 4
  %207 = shl i32 %205, %206
  %208 = or i32 %204, %207
  %209 = call i32 @WREG32(i64 %201, i32 %208)
  %210 = load i64, i64* @mmOUTPUT_CSC_CONTROL, align 8
  %211 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %212 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %210, %213
  %215 = load i32, i32* @OUTPUT_CSC_BYPASS, align 4
  %216 = load i32, i32* @OUTPUT_CSC_CONTROL__OUTPUT_CSC_GRPH_MODE__SHIFT, align 4
  %217 = shl i32 %215, %216
  %218 = load i32, i32* @OUTPUT_CSC_BYPASS, align 4
  %219 = load i32, i32* @OUTPUT_CSC_CONTROL__OUTPUT_CSC_OVL_MODE__SHIFT, align 4
  %220 = shl i32 %218, %219
  %221 = or i32 %217, %220
  %222 = call i32 @WREG32(i64 %214, i32 %221)
  %223 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %224 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 6736, %225
  %227 = call i32 @WREG32(i64 %226, i32 0)
  %228 = load i64, i64* @mmALPHA_CONTROL, align 8
  %229 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %230 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %228, %231
  %233 = load i32, i32* @ALPHA_CONTROL__CURSOR_ALPHA_BLND_ENA_MASK, align 4
  %234 = call i32 @WREG32(i64 %232, i32 %233)
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
