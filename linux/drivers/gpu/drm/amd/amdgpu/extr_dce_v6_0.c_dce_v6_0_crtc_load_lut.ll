; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v6_0.c_dce_v6_0_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@mmINPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@INPUT_CSC_CONTROL__INPUT_CSC_GRPH_MODE__SHIFT = common dso_local global i32 0, align 4
@INPUT_CSC_CONTROL__INPUT_CSC_OVL_MODE__SHIFT = common dso_local global i32 0, align 4
@mmPRESCALE_GRPH_CONTROL = common dso_local global i64 0, align 8
@PRESCALE_GRPH_CONTROL__GRPH_PRESCALE_BYPASS_MASK = common dso_local global i32 0, align 4
@mmPRESCALE_OVL_CONTROL = common dso_local global i64 0, align 8
@PRESCALE_OVL_CONTROL__OVL_PRESCALE_BYPASS_MASK = common dso_local global i32 0, align 4
@mmINPUT_GAMMA_CONTROL = common dso_local global i64 0, align 8
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
@DEGAMMA_CONTROL__GRPH_DEGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@DEGAMMA_CONTROL__OVL_DEGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@DEGAMMA_CONTROL__CURSOR_DEGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@mmGAMUT_REMAP_CONTROL = common dso_local global i64 0, align 8
@GAMUT_REMAP_CONTROL__GRPH_GAMUT_REMAP_MODE__SHIFT = common dso_local global i32 0, align 4
@GAMUT_REMAP_CONTROL__OVL_GAMUT_REMAP_MODE__SHIFT = common dso_local global i32 0, align 4
@mmREGAMMA_CONTROL = common dso_local global i64 0, align 8
@REGAMMA_CONTROL__GRPH_REGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@REGAMMA_CONTROL__OVL_REGAMMA_MODE__SHIFT = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@OUTPUT_CSC_CONTROL__OUTPUT_CSC_GRPH_MODE__SHIFT = common dso_local global i32 0, align 4
@OUTPUT_CSC_CONTROL__OUTPUT_CSC_OVL_MODE__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v6_0_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v6_0_crtc_load_lut(%struct.drm_crtc* %0) #0 {
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
  %27 = load i32, i32* @INPUT_CSC_CONTROL__INPUT_CSC_GRPH_MODE__SHIFT, align 4
  %28 = shl i32 0, %27
  %29 = load i32, i32* @INPUT_CSC_CONTROL__INPUT_CSC_OVL_MODE__SHIFT, align 4
  %30 = shl i32 0, %29
  %31 = or i32 %28, %30
  %32 = call i32 @WREG32(i64 %26, i32 %31)
  %33 = load i64, i64* @mmPRESCALE_GRPH_CONTROL, align 8
  %34 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* @PRESCALE_GRPH_CONTROL__GRPH_PRESCALE_BYPASS_MASK, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  %40 = load i64, i64* @mmPRESCALE_OVL_CONTROL, align 8
  %41 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* @PRESCALE_OVL_CONTROL__OVL_PRESCALE_BYPASS_MASK, align 4
  %46 = call i32 @WREG32(i64 %44, i32 %45)
  %47 = load i64, i64* @mmINPUT_GAMMA_CONTROL, align 8
  %48 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i32, i32* @INPUT_GAMMA_CONTROL__GRPH_INPUT_GAMMA_MODE__SHIFT, align 4
  %53 = shl i32 0, %52
  %54 = load i32, i32* @INPUT_GAMMA_CONTROL__OVL_INPUT_GAMMA_MODE__SHIFT, align 4
  %55 = shl i32 0, %54
  %56 = or i32 %53, %55
  %57 = call i32 @WREG32(i64 %51, i32 %56)
  %58 = load i64, i64* @mmDC_LUT_CONTROL, align 8
  %59 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = call i32 @WREG32(i64 %62, i32 0)
  %64 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_BLUE, align 8
  %65 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = call i32 @WREG32(i64 %68, i32 0)
  %70 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_GREEN, align 8
  %71 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i32 @WREG32(i64 %74, i32 0)
  %76 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_RED, align 8
  %77 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %78 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 @WREG32(i64 %80, i32 0)
  %82 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_BLUE, align 8
  %83 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = call i32 @WREG32(i64 %86, i32 65535)
  %88 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_GREEN, align 8
  %89 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = call i32 @WREG32(i64 %92, i32 65535)
  %94 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_RED, align 8
  %95 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %96 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %94, %97
  %99 = call i32 @WREG32(i64 %98, i32 65535)
  %100 = load i64, i64* @mmDC_LUT_RW_MODE, align 8
  %101 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = call i32 @WREG32(i64 %104, i32 0)
  %106 = load i64, i64* @mmDC_LUT_WRITE_EN_MASK, align 8
  %107 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = call i32 @WREG32(i64 %110, i32 7)
  %112 = load i64, i64* @mmDC_LUT_RW_INDEX, align 8
  %113 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %113, i32 0, i32 0
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
  %137 = load i64, i64* @mmDC_LUT_30_COLOR, align 8
  %138 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %138, i32 0, i32 0
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
  %163 = load i64, i64* @mmDEGAMMA_CONTROL, align 8
  %164 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %165 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %163, %166
  %168 = load i32, i32* @DEGAMMA_CONTROL__GRPH_DEGAMMA_MODE__SHIFT, align 4
  %169 = shl i32 0, %168
  %170 = load i32, i32* @DEGAMMA_CONTROL__OVL_DEGAMMA_MODE__SHIFT, align 4
  %171 = shl i32 0, %170
  %172 = or i32 %169, %171
  %173 = call i32 @ICON_DEGAMMA_MODE(i32 0)
  %174 = or i32 %172, %173
  %175 = load i32, i32* @DEGAMMA_CONTROL__CURSOR_DEGAMMA_MODE__SHIFT, align 4
  %176 = shl i32 0, %175
  %177 = or i32 %174, %176
  %178 = call i32 @WREG32(i64 %167, i32 %177)
  %179 = load i64, i64* @mmGAMUT_REMAP_CONTROL, align 8
  %180 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %181 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %179, %182
  %184 = load i32, i32* @GAMUT_REMAP_CONTROL__GRPH_GAMUT_REMAP_MODE__SHIFT, align 4
  %185 = shl i32 0, %184
  %186 = load i32, i32* @GAMUT_REMAP_CONTROL__OVL_GAMUT_REMAP_MODE__SHIFT, align 4
  %187 = shl i32 0, %186
  %188 = or i32 %185, %187
  %189 = call i32 @WREG32(i64 %183, i32 %188)
  %190 = load i64, i64* @mmREGAMMA_CONTROL, align 8
  %191 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %192 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %190, %193
  %195 = load i32, i32* @REGAMMA_CONTROL__GRPH_REGAMMA_MODE__SHIFT, align 4
  %196 = shl i32 0, %195
  %197 = load i32, i32* @REGAMMA_CONTROL__OVL_REGAMMA_MODE__SHIFT, align 4
  %198 = shl i32 0, %197
  %199 = or i32 %196, %198
  %200 = call i32 @WREG32(i64 %194, i32 %199)
  %201 = load i64, i64* @mmOUTPUT_CSC_CONTROL, align 8
  %202 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %203 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %201, %204
  %206 = load i32, i32* @OUTPUT_CSC_CONTROL__OUTPUT_CSC_GRPH_MODE__SHIFT, align 4
  %207 = shl i32 0, %206
  %208 = load i32, i32* @OUTPUT_CSC_CONTROL__OUTPUT_CSC_OVL_MODE__SHIFT, align 4
  %209 = shl i32 0, %208
  %210 = or i32 %207, %209
  %211 = call i32 @WREG32(i64 %205, i32 %210)
  %212 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %213 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 6736, %214
  %216 = call i32 @WREG32(i64 %215, i32 0)
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @ICON_DEGAMMA_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
