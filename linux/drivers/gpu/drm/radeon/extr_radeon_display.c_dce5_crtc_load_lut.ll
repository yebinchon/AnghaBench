; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_dce5_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_dce5_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.radeon_crtc = type { i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@NI_INPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@NI_INPUT_CSC_BYPASS = common dso_local global i32 0, align 4
@NI_PRESCALE_GRPH_CONTROL = common dso_local global i64 0, align 8
@NI_GRPH_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@NI_PRESCALE_OVL_CONTROL = common dso_local global i64 0, align 8
@NI_OVL_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@NI_INPUT_GAMMA_CONTROL = common dso_local global i64 0, align 8
@NI_INPUT_GAMMA_USE_LUT = common dso_local global i32 0, align 4
@EVERGREEN_DC_LUT_CONTROL = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_BLACK_OFFSET_RED = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WHITE_OFFSET_RED = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_RW_MODE = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_WRITE_EN_MASK = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_RW_INDEX = common dso_local global i64 0, align 8
@EVERGREEN_DC_LUT_30_COLOR = common dso_local global i64 0, align 8
@NI_DEGAMMA_CONTROL = common dso_local global i64 0, align 8
@NI_DEGAMMA_BYPASS = common dso_local global i32 0, align 4
@NI_GAMUT_REMAP_CONTROL = common dso_local global i64 0, align 8
@NI_GAMUT_REMAP_BYPASS = common dso_local global i32 0, align 4
@NI_REGAMMA_CONTROL = common dso_local global i64 0, align 8
@NI_REGAMMA_BYPASS = common dso_local global i32 0, align 4
@NI_OUTPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@NI_OUTPUT_CSC_BYPASS = common dso_local global i32 0, align 4
@CIK_ALPHA_CONTROL = common dso_local global i64 0, align 8
@CIK_CURSOR_ALPHA_BLND_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce5_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce5_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.radeon_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %10)
  store %struct.radeon_crtc* %11, %struct.radeon_crtc** %3, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 2
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.radeon_device*, %struct.radeon_device** %16, align 8
  store %struct.radeon_device* %17, %struct.radeon_device** %5, align 8
  %18 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @NI_INPUT_CSC_CONTROL, align 8
  %23 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load i32, i32* @NI_INPUT_CSC_BYPASS, align 4
  %28 = call i32 @NI_INPUT_CSC_GRPH_MODE(i32 %27)
  %29 = load i32, i32* @NI_INPUT_CSC_BYPASS, align 4
  %30 = call i32 @NI_INPUT_CSC_OVL_MODE(i32 %29)
  %31 = or i32 %28, %30
  %32 = call i32 @WREG32(i64 %26, i32 %31)
  %33 = load i64, i64* @NI_PRESCALE_GRPH_CONTROL, align 8
  %34 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* @NI_GRPH_PRESCALE_BYPASS, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  %40 = load i64, i64* @NI_PRESCALE_OVL_CONTROL, align 8
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* @NI_OVL_PRESCALE_BYPASS, align 4
  %46 = call i32 @WREG32(i64 %44, i32 %45)
  %47 = load i64, i64* @NI_INPUT_GAMMA_CONTROL, align 8
  %48 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* @NI_INPUT_GAMMA_USE_LUT, align 4
  %53 = call i32 @NI_GRPH_INPUT_GAMMA_MODE(i32 %52)
  %54 = load i32, i32* @NI_INPUT_GAMMA_USE_LUT, align 4
  %55 = call i32 @NI_OVL_INPUT_GAMMA_MODE(i32 %54)
  %56 = or i32 %53, %55
  %57 = call i32 @WREG32(i64 %51, i32 %56)
  %58 = load i64, i64* @EVERGREEN_DC_LUT_CONTROL, align 8
  %59 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @WREG32(i64 %62, i32 0)
  %64 = load i64, i64* @EVERGREEN_DC_LUT_BLACK_OFFSET_BLUE, align 8
  %65 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i32 @WREG32(i64 %68, i32 0)
  %70 = load i64, i64* @EVERGREEN_DC_LUT_BLACK_OFFSET_GREEN, align 8
  %71 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i32 @WREG32(i64 %74, i32 0)
  %76 = load i64, i64* @EVERGREEN_DC_LUT_BLACK_OFFSET_RED, align 8
  %77 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 @WREG32(i64 %80, i32 0)
  %82 = load i64, i64* @EVERGREEN_DC_LUT_WHITE_OFFSET_BLUE, align 8
  %83 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = call i32 @WREG32(i64 %86, i32 65535)
  %88 = load i64, i64* @EVERGREEN_DC_LUT_WHITE_OFFSET_GREEN, align 8
  %89 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = call i32 @WREG32(i64 %92, i32 65535)
  %94 = load i64, i64* @EVERGREEN_DC_LUT_WHITE_OFFSET_RED, align 8
  %95 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = call i32 @WREG32(i64 %98, i32 65535)
  %100 = load i64, i64* @EVERGREEN_DC_LUT_RW_MODE, align 8
  %101 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = call i32 @WREG32(i64 %104, i32 0)
  %106 = load i64, i64* @EVERGREEN_DC_LUT_WRITE_EN_MASK, align 8
  %107 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = call i32 @WREG32(i64 %110, i32 7)
  %112 = load i64, i64* @EVERGREEN_DC_LUT_RW_INDEX, align 8
  %113 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %114 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = call i32 @WREG32(i64 %116, i32 0)
  %118 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %119 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %6, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %123 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  store i32* %126, i32** %7, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %129 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32* %132, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %159, %1
  %134 = load i32, i32* %9, align 4
  %135 = icmp slt i32 %134, 256
  br i1 %135, label %136, label %162

136:                                              ; preds = %133
  %137 = load i64, i64* @EVERGREEN_DC_LUT_30_COLOR, align 8
  %138 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load i32*, i32** %6, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %6, align 8
  %144 = load i32, i32* %142, align 4
  %145 = and i32 %144, 65472
  %146 = shl i32 %145, 14
  %147 = load i32*, i32** %7, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 1
  store i32* %148, i32** %7, align 8
  %149 = load i32, i32* %147, align 4
  %150 = and i32 %149, 65472
  %151 = shl i32 %150, 4
  %152 = or i32 %146, %151
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %8, align 8
  %155 = load i32, i32* %153, align 4
  %156 = ashr i32 %155, 6
  %157 = or i32 %152, %156
  %158 = call i32 @WREG32(i64 %141, i32 %157)
  br label %159

159:                                              ; preds = %136
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %133

162:                                              ; preds = %133
  %163 = load i64, i64* @NI_DEGAMMA_CONTROL, align 8
  %164 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %165 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %169 = call i32 @NI_GRPH_DEGAMMA_MODE(i32 %168)
  %170 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %171 = call i32 @NI_OVL_DEGAMMA_MODE(i32 %170)
  %172 = or i32 %169, %171
  %173 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %174 = call i32 @NI_ICON_DEGAMMA_MODE(i32 %173)
  %175 = or i32 %172, %174
  %176 = load i32, i32* @NI_DEGAMMA_BYPASS, align 4
  %177 = call i32 @NI_CURSOR_DEGAMMA_MODE(i32 %176)
  %178 = or i32 %175, %177
  %179 = call i32 @WREG32(i64 %167, i32 %178)
  %180 = load i64, i64* @NI_GAMUT_REMAP_CONTROL, align 8
  %181 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %182 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %180, %183
  %185 = load i32, i32* @NI_GAMUT_REMAP_BYPASS, align 4
  %186 = call i32 @NI_GRPH_GAMUT_REMAP_MODE(i32 %185)
  %187 = load i32, i32* @NI_GAMUT_REMAP_BYPASS, align 4
  %188 = call i32 @NI_OVL_GAMUT_REMAP_MODE(i32 %187)
  %189 = or i32 %186, %188
  %190 = call i32 @WREG32(i64 %184, i32 %189)
  %191 = load i64, i64* @NI_REGAMMA_CONTROL, align 8
  %192 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %193 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = add nsw i64 %191, %194
  %196 = load i32, i32* @NI_REGAMMA_BYPASS, align 4
  %197 = call i32 @NI_GRPH_REGAMMA_MODE(i32 %196)
  %198 = load i32, i32* @NI_REGAMMA_BYPASS, align 4
  %199 = call i32 @NI_OVL_REGAMMA_MODE(i32 %198)
  %200 = or i32 %197, %199
  %201 = call i32 @WREG32(i64 %195, i32 %200)
  %202 = load i64, i64* @NI_OUTPUT_CSC_CONTROL, align 8
  %203 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %204 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %202, %205
  %207 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %208 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @NI_OUTPUT_CSC_GRPH_MODE(i32 %209)
  %211 = load i32, i32* @NI_OUTPUT_CSC_BYPASS, align 4
  %212 = call i32 @NI_OUTPUT_CSC_OVL_MODE(i32 %211)
  %213 = or i32 %210, %212
  %214 = call i32 @WREG32(i64 %206, i32 %213)
  %215 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %216 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 26944, %217
  %219 = call i32 @WREG32(i64 %218, i32 0)
  %220 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %221 = call i64 @ASIC_IS_DCE8(%struct.radeon_device* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %162
  %224 = load i64, i64* @CIK_ALPHA_CONTROL, align 8
  %225 = load %struct.radeon_crtc*, %struct.radeon_crtc** %3, align 8
  %226 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %224, %227
  %229 = load i32, i32* @CIK_CURSOR_ALPHA_BLND_ENA, align 4
  %230 = call i32 @WREG32(i64 %228, i32 %229)
  br label %231

231:                                              ; preds = %223, %162
  ret void
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @NI_INPUT_CSC_GRPH_MODE(i32) #1

declare dso_local i32 @NI_INPUT_CSC_OVL_MODE(i32) #1

declare dso_local i32 @NI_GRPH_INPUT_GAMMA_MODE(i32) #1

declare dso_local i32 @NI_OVL_INPUT_GAMMA_MODE(i32) #1

declare dso_local i32 @NI_GRPH_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_OVL_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_ICON_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_CURSOR_DEGAMMA_MODE(i32) #1

declare dso_local i32 @NI_GRPH_GAMUT_REMAP_MODE(i32) #1

declare dso_local i32 @NI_OVL_GAMUT_REMAP_MODE(i32) #1

declare dso_local i32 @NI_GRPH_REGAMMA_MODE(i32) #1

declare dso_local i32 @NI_OVL_REGAMMA_MODE(i32) #1

declare dso_local i32 @NI_OUTPUT_CSC_GRPH_MODE(i32) #1

declare dso_local i32 @NI_OUTPUT_CSC_OVL_MODE(i32) #1

declare dso_local i64 @ASIC_IS_DCE8(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
