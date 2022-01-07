; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v10_0.c_dce_v10_0_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_crtc = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@mmINPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@INPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@INPUT_CSC_GRPH_MODE = common dso_local global i32 0, align 4
@INPUT_CSC_OVL_MODE = common dso_local global i32 0, align 4
@mmPRESCALE_GRPH_CONTROL = common dso_local global i64 0, align 8
@PRESCALE_GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@mmPRESCALE_OVL_CONTROL = common dso_local global i64 0, align 8
@PRESCALE_OVL_CONTROL = common dso_local global i32 0, align 4
@OVL_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@mmINPUT_GAMMA_CONTROL = common dso_local global i64 0, align 8
@INPUT_GAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_INPUT_GAMMA_MODE = common dso_local global i32 0, align 4
@OVL_INPUT_GAMMA_MODE = common dso_local global i32 0, align 4
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
@DEGAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_DEGAMMA_MODE = common dso_local global i32 0, align 4
@OVL_DEGAMMA_MODE = common dso_local global i32 0, align 4
@CURSOR_DEGAMMA_MODE = common dso_local global i32 0, align 4
@mmGAMUT_REMAP_CONTROL = common dso_local global i64 0, align 8
@GAMUT_REMAP_CONTROL = common dso_local global i32 0, align 4
@GRPH_GAMUT_REMAP_MODE = common dso_local global i32 0, align 4
@OVL_GAMUT_REMAP_MODE = common dso_local global i32 0, align 4
@mmREGAMMA_CONTROL = common dso_local global i64 0, align 8
@REGAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_REGAMMA_MODE = common dso_local global i32 0, align 4
@OVL_REGAMMA_MODE = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@OUTPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@OUTPUT_CSC_GRPH_MODE = common dso_local global i32 0, align 4
@OUTPUT_CSC_OVL_MODE = common dso_local global i32 0, align 4
@mmDENORM_CONTROL = common dso_local global i64 0, align 8
@mmALPHA_CONTROL = common dso_local global i64 0, align 8
@ALPHA_CONTROL = common dso_local global i32 0, align 4
@CURSOR_ALPHA_BLND_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v10_0_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v10_0_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.amdgpu_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %11)
  store %struct.amdgpu_crtc* %12, %struct.amdgpu_crtc** %3, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 2
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  store %struct.amdgpu_device* %18, %struct.amdgpu_device** %5, align 8
  %19 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* @mmINPUT_CSC_CONTROL, align 8
  %24 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = call i32 @RREG32(i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @INPUT_CSC_CONTROL, align 4
  %31 = load i32, i32* @INPUT_CSC_GRPH_MODE, align 4
  %32 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @INPUT_CSC_CONTROL, align 4
  %35 = load i32, i32* @INPUT_CSC_OVL_MODE, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* @mmINPUT_CSC_CONTROL, align 8
  %38 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @WREG32(i64 %41, i32 %42)
  %44 = load i64, i64* @mmPRESCALE_GRPH_CONTROL, align 8
  %45 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = call i32 @RREG32(i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @PRESCALE_GRPH_CONTROL, align 4
  %52 = load i32, i32* @GRPH_PRESCALE_BYPASS, align 4
  %53 = call i32 @REG_SET_FIELD(i32 %50, i32 %51, i32 %52, i32 1)
  store i32 %53, i32* %10, align 4
  %54 = load i64, i64* @mmPRESCALE_GRPH_CONTROL, align 8
  %55 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @WREG32(i64 %58, i32 %59)
  %61 = load i64, i64* @mmPRESCALE_OVL_CONTROL, align 8
  %62 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @RREG32(i64 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @PRESCALE_OVL_CONTROL, align 4
  %69 = load i32, i32* @OVL_PRESCALE_BYPASS, align 4
  %70 = call i32 @REG_SET_FIELD(i32 %67, i32 %68, i32 %69, i32 1)
  store i32 %70, i32* %10, align 4
  %71 = load i64, i64* @mmPRESCALE_OVL_CONTROL, align 8
  %72 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %73 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @WREG32(i64 %75, i32 %76)
  %78 = load i64, i64* @mmINPUT_GAMMA_CONTROL, align 8
  %79 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %78, %81
  %83 = call i32 @RREG32(i64 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @INPUT_GAMMA_CONTROL, align 4
  %86 = load i32, i32* @GRPH_INPUT_GAMMA_MODE, align 4
  %87 = call i32 @REG_SET_FIELD(i32 %84, i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @INPUT_GAMMA_CONTROL, align 4
  %90 = load i32, i32* @OVL_INPUT_GAMMA_MODE, align 4
  %91 = call i32 @REG_SET_FIELD(i32 %88, i32 %89, i32 %90, i32 0)
  store i32 %91, i32* %10, align 4
  %92 = load i64, i64* @mmINPUT_GAMMA_CONTROL, align 8
  %93 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @WREG32(i64 %96, i32 %97)
  %99 = load i64, i64* @mmDC_LUT_CONTROL, align 8
  %100 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = call i32 @WREG32(i64 %103, i32 0)
  %105 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_BLUE, align 8
  %106 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %107 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = call i32 @WREG32(i64 %109, i32 0)
  %111 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_GREEN, align 8
  %112 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %113 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = call i32 @WREG32(i64 %115, i32 0)
  %117 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_RED, align 8
  %118 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %119 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = call i32 @WREG32(i64 %121, i32 0)
  %123 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_BLUE, align 8
  %124 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = call i32 @WREG32(i64 %127, i32 65535)
  %129 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_GREEN, align 8
  %130 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %131 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = call i32 @WREG32(i64 %133, i32 65535)
  %135 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_RED, align 8
  %136 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  %140 = call i32 @WREG32(i64 %139, i32 65535)
  %141 = load i64, i64* @mmDC_LUT_RW_MODE, align 8
  %142 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %143 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = call i32 @WREG32(i64 %145, i32 0)
  %147 = load i64, i64* @mmDC_LUT_WRITE_EN_MASK, align 8
  %148 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %149 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %147, %150
  %152 = call i32 @WREG32(i64 %151, i32 7)
  %153 = load i64, i64* @mmDC_LUT_RW_INDEX, align 8
  %154 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = call i32 @WREG32(i64 %157, i32 0)
  %159 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %160 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %6, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %164 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  store i32* %167, i32** %7, align 8
  %168 = load i32*, i32** %7, align 8
  %169 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %170 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  store i32* %173, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %200, %1
  %175 = load i32, i32* %9, align 4
  %176 = icmp slt i32 %175, 256
  br i1 %176, label %177, label %203

177:                                              ; preds = %174
  %178 = load i64, i64* @mmDC_LUT_30_COLOR, align 8
  %179 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %180 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %178, %181
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i32 1
  store i32* %184, i32** %6, align 8
  %185 = load i32, i32* %183, align 4
  %186 = and i32 %185, 65472
  %187 = shl i32 %186, 14
  %188 = load i32*, i32** %7, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %7, align 8
  %190 = load i32, i32* %188, align 4
  %191 = and i32 %190, 65472
  %192 = shl i32 %191, 4
  %193 = or i32 %187, %192
  %194 = load i32*, i32** %8, align 8
  %195 = getelementptr inbounds i32, i32* %194, i32 1
  store i32* %195, i32** %8, align 8
  %196 = load i32, i32* %194, align 4
  %197 = ashr i32 %196, 6
  %198 = or i32 %193, %197
  %199 = call i32 @WREG32(i64 %182, i32 %198)
  br label %200

200:                                              ; preds = %177
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %174

203:                                              ; preds = %174
  %204 = load i64, i64* @mmDEGAMMA_CONTROL, align 8
  %205 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %206 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %204, %207
  %209 = call i32 @RREG32(i64 %208)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @DEGAMMA_CONTROL, align 4
  %212 = load i32, i32* @GRPH_DEGAMMA_MODE, align 4
  %213 = call i32 @REG_SET_FIELD(i32 %210, i32 %211, i32 %212, i32 0)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @DEGAMMA_CONTROL, align 4
  %216 = load i32, i32* @OVL_DEGAMMA_MODE, align 4
  %217 = call i32 @REG_SET_FIELD(i32 %214, i32 %215, i32 %216, i32 0)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* @DEGAMMA_CONTROL, align 4
  %220 = load i32, i32* @CURSOR_DEGAMMA_MODE, align 4
  %221 = call i32 @REG_SET_FIELD(i32 %218, i32 %219, i32 %220, i32 0)
  store i32 %221, i32* %10, align 4
  %222 = load i64, i64* @mmDEGAMMA_CONTROL, align 8
  %223 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %224 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %222, %225
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @WREG32(i64 %226, i32 %227)
  %229 = load i64, i64* @mmGAMUT_REMAP_CONTROL, align 8
  %230 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %231 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %229, %232
  %234 = call i32 @RREG32(i64 %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @GAMUT_REMAP_CONTROL, align 4
  %237 = load i32, i32* @GRPH_GAMUT_REMAP_MODE, align 4
  %238 = call i32 @REG_SET_FIELD(i32 %235, i32 %236, i32 %237, i32 0)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @GAMUT_REMAP_CONTROL, align 4
  %241 = load i32, i32* @OVL_GAMUT_REMAP_MODE, align 4
  %242 = call i32 @REG_SET_FIELD(i32 %239, i32 %240, i32 %241, i32 0)
  store i32 %242, i32* %10, align 4
  %243 = load i64, i64* @mmGAMUT_REMAP_CONTROL, align 8
  %244 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %245 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %243, %246
  %248 = load i32, i32* %10, align 4
  %249 = call i32 @WREG32(i64 %247, i32 %248)
  %250 = load i64, i64* @mmREGAMMA_CONTROL, align 8
  %251 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %252 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %250, %253
  %255 = call i32 @RREG32(i64 %254)
  store i32 %255, i32* %10, align 4
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @REGAMMA_CONTROL, align 4
  %258 = load i32, i32* @GRPH_REGAMMA_MODE, align 4
  %259 = call i32 @REG_SET_FIELD(i32 %256, i32 %257, i32 %258, i32 0)
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* @REGAMMA_CONTROL, align 4
  %262 = load i32, i32* @OVL_REGAMMA_MODE, align 4
  %263 = call i32 @REG_SET_FIELD(i32 %260, i32 %261, i32 %262, i32 0)
  store i32 %263, i32* %10, align 4
  %264 = load i64, i64* @mmREGAMMA_CONTROL, align 8
  %265 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %266 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %264, %267
  %269 = load i32, i32* %10, align 4
  %270 = call i32 @WREG32(i64 %268, i32 %269)
  %271 = load i64, i64* @mmOUTPUT_CSC_CONTROL, align 8
  %272 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %273 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %271, %274
  %276 = call i32 @RREG32(i64 %275)
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %279 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %280 = call i32 @REG_SET_FIELD(i32 %277, i32 %278, i32 %279, i32 0)
  store i32 %280, i32* %10, align 4
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %283 = load i32, i32* @OUTPUT_CSC_OVL_MODE, align 4
  %284 = call i32 @REG_SET_FIELD(i32 %281, i32 %282, i32 %283, i32 0)
  store i32 %284, i32* %10, align 4
  %285 = load i64, i64* @mmOUTPUT_CSC_CONTROL, align 8
  %286 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %287 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %285, %288
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @WREG32(i64 %289, i32 %290)
  %292 = load i64, i64* @mmDENORM_CONTROL, align 8
  %293 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %294 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %292, %295
  %297 = call i32 @WREG32(i64 %296, i32 0)
  %298 = load i64, i64* @mmALPHA_CONTROL, align 8
  %299 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %300 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %298, %301
  %303 = call i32 @RREG32(i64 %302)
  store i32 %303, i32* %10, align 4
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* @ALPHA_CONTROL, align 4
  %306 = load i32, i32* @CURSOR_ALPHA_BLND_ENA, align 4
  %307 = call i32 @REG_SET_FIELD(i32 %304, i32 %305, i32 %306, i32 1)
  store i32 %307, i32* %10, align 4
  %308 = load i64, i64* @mmALPHA_CONTROL, align 8
  %309 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %310 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = add nsw i64 %308, %311
  %313 = load i32, i32* %10, align 4
  %314 = call i32 @WREG32(i64 %312, i32 %313)
  ret void
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
