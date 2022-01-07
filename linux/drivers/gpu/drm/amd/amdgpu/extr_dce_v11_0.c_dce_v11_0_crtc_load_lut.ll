; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v11_0.c_dce_v11_0_crtc_load_lut.c"
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
@mmPRESCALE_GRPH_CONTROL = common dso_local global i64 0, align 8
@PRESCALE_GRPH_CONTROL = common dso_local global i32 0, align 4
@GRPH_PRESCALE_BYPASS = common dso_local global i32 0, align 4
@mmINPUT_GAMMA_CONTROL = common dso_local global i64 0, align 8
@INPUT_GAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_INPUT_GAMMA_MODE = common dso_local global i32 0, align 4
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
@CURSOR_DEGAMMA_MODE = common dso_local global i32 0, align 4
@CURSOR2_DEGAMMA_MODE = common dso_local global i32 0, align 4
@mmGAMUT_REMAP_CONTROL = common dso_local global i64 0, align 8
@GAMUT_REMAP_CONTROL = common dso_local global i32 0, align 4
@GRPH_GAMUT_REMAP_MODE = common dso_local global i32 0, align 4
@mmREGAMMA_CONTROL = common dso_local global i64 0, align 8
@REGAMMA_CONTROL = common dso_local global i32 0, align 4
@GRPH_REGAMMA_MODE = common dso_local global i32 0, align 4
@mmOUTPUT_CSC_CONTROL = common dso_local global i64 0, align 8
@OUTPUT_CSC_CONTROL = common dso_local global i32 0, align 4
@OUTPUT_CSC_GRPH_MODE = common dso_local global i32 0, align 4
@mmDENORM_CONTROL = common dso_local global i64 0, align 8
@mmALPHA_CONTROL = common dso_local global i64 0, align 8
@ALPHA_CONTROL = common dso_local global i32 0, align 4
@CURSOR_ALPHA_BLND_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @dce_v11_0_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_v11_0_crtc_load_lut(%struct.drm_crtc* %0) #0 {
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
  %33 = load i64, i64* @mmINPUT_CSC_CONTROL, align 8
  %34 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  %40 = load i64, i64* @mmPRESCALE_GRPH_CONTROL, align 8
  %41 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @RREG32(i64 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PRESCALE_GRPH_CONTROL, align 4
  %48 = load i32, i32* @GRPH_PRESCALE_BYPASS, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i64, i64* @mmPRESCALE_GRPH_CONTROL, align 8
  %51 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @WREG32(i64 %54, i32 %55)
  %57 = load i64, i64* @mmINPUT_GAMMA_CONTROL, align 8
  %58 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = call i32 @RREG32(i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @INPUT_GAMMA_CONTROL, align 4
  %65 = load i32, i32* @GRPH_INPUT_GAMMA_MODE, align 4
  %66 = call i32 @REG_SET_FIELD(i32 %63, i32 %64, i32 %65, i32 0)
  store i32 %66, i32* %10, align 4
  %67 = load i64, i64* @mmINPUT_GAMMA_CONTROL, align 8
  %68 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %69 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @WREG32(i64 %71, i32 %72)
  %74 = load i64, i64* @mmDC_LUT_CONTROL, align 8
  %75 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = call i32 @WREG32(i64 %78, i32 0)
  %80 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_BLUE, align 8
  %81 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i32 @WREG32(i64 %84, i32 0)
  %86 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_GREEN, align 8
  %87 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = call i32 @WREG32(i64 %90, i32 0)
  %92 = load i64, i64* @mmDC_LUT_BLACK_OFFSET_RED, align 8
  %93 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  %97 = call i32 @WREG32(i64 %96, i32 0)
  %98 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_BLUE, align 8
  %99 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %100 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = call i32 @WREG32(i64 %102, i32 65535)
  %104 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_GREEN, align 8
  %105 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = call i32 @WREG32(i64 %108, i32 65535)
  %110 = load i64, i64* @mmDC_LUT_WHITE_OFFSET_RED, align 8
  %111 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = call i32 @WREG32(i64 %114, i32 65535)
  %116 = load i64, i64* @mmDC_LUT_RW_MODE, align 8
  %117 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = call i32 @WREG32(i64 %120, i32 0)
  %122 = load i64, i64* @mmDC_LUT_WRITE_EN_MASK, align 8
  %123 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %124 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = call i32 @WREG32(i64 %126, i32 7)
  %128 = load i64, i64* @mmDC_LUT_RW_INDEX, align 8
  %129 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %130 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = call i32 @WREG32(i64 %132, i32 0)
  %134 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %135 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %6, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %139 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  store i32* %142, i32** %7, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %145 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  store i32* %148, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %175, %1
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 256
  br i1 %151, label %152, label %178

152:                                              ; preds = %149
  %153 = load i64, i64* @mmDC_LUT_30_COLOR, align 8
  %154 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %155 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = load i32*, i32** %6, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %6, align 8
  %160 = load i32, i32* %158, align 4
  %161 = and i32 %160, 65472
  %162 = shl i32 %161, 14
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %7, align 8
  %165 = load i32, i32* %163, align 4
  %166 = and i32 %165, 65472
  %167 = shl i32 %166, 4
  %168 = or i32 %162, %167
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %8, align 8
  %171 = load i32, i32* %169, align 4
  %172 = ashr i32 %171, 6
  %173 = or i32 %168, %172
  %174 = call i32 @WREG32(i64 %157, i32 %173)
  br label %175

175:                                              ; preds = %152
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %149

178:                                              ; preds = %149
  %179 = load i64, i64* @mmDEGAMMA_CONTROL, align 8
  %180 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %181 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %179, %182
  %184 = call i32 @RREG32(i64 %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @DEGAMMA_CONTROL, align 4
  %187 = load i32, i32* @GRPH_DEGAMMA_MODE, align 4
  %188 = call i32 @REG_SET_FIELD(i32 %185, i32 %186, i32 %187, i32 0)
  store i32 %188, i32* %10, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @DEGAMMA_CONTROL, align 4
  %191 = load i32, i32* @CURSOR_DEGAMMA_MODE, align 4
  %192 = call i32 @REG_SET_FIELD(i32 %189, i32 %190, i32 %191, i32 0)
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* @DEGAMMA_CONTROL, align 4
  %195 = load i32, i32* @CURSOR2_DEGAMMA_MODE, align 4
  %196 = call i32 @REG_SET_FIELD(i32 %193, i32 %194, i32 %195, i32 0)
  store i32 %196, i32* %10, align 4
  %197 = load i64, i64* @mmDEGAMMA_CONTROL, align 8
  %198 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %199 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @WREG32(i64 %201, i32 %202)
  %204 = load i64, i64* @mmGAMUT_REMAP_CONTROL, align 8
  %205 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %206 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %204, %207
  %209 = call i32 @RREG32(i64 %208)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @GAMUT_REMAP_CONTROL, align 4
  %212 = load i32, i32* @GRPH_GAMUT_REMAP_MODE, align 4
  %213 = call i32 @REG_SET_FIELD(i32 %210, i32 %211, i32 %212, i32 0)
  store i32 %213, i32* %10, align 4
  %214 = load i64, i64* @mmGAMUT_REMAP_CONTROL, align 8
  %215 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %216 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %214, %217
  %219 = load i32, i32* %10, align 4
  %220 = call i32 @WREG32(i64 %218, i32 %219)
  %221 = load i64, i64* @mmREGAMMA_CONTROL, align 8
  %222 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %223 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %221, %224
  %226 = call i32 @RREG32(i64 %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @REGAMMA_CONTROL, align 4
  %229 = load i32, i32* @GRPH_REGAMMA_MODE, align 4
  %230 = call i32 @REG_SET_FIELD(i32 %227, i32 %228, i32 %229, i32 0)
  store i32 %230, i32* %10, align 4
  %231 = load i64, i64* @mmREGAMMA_CONTROL, align 8
  %232 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %233 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %231, %234
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @WREG32(i64 %235, i32 %236)
  %238 = load i64, i64* @mmOUTPUT_CSC_CONTROL, align 8
  %239 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %240 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %238, %241
  %243 = call i32 @RREG32(i64 %242)
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @OUTPUT_CSC_CONTROL, align 4
  %246 = load i32, i32* @OUTPUT_CSC_GRPH_MODE, align 4
  %247 = call i32 @REG_SET_FIELD(i32 %244, i32 %245, i32 %246, i32 0)
  store i32 %247, i32* %10, align 4
  %248 = load i64, i64* @mmOUTPUT_CSC_CONTROL, align 8
  %249 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %250 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = add nsw i64 %248, %251
  %253 = load i32, i32* %10, align 4
  %254 = call i32 @WREG32(i64 %252, i32 %253)
  %255 = load i64, i64* @mmDENORM_CONTROL, align 8
  %256 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %257 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %255, %258
  %260 = call i32 @WREG32(i64 %259, i32 0)
  %261 = load i64, i64* @mmALPHA_CONTROL, align 8
  %262 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %263 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %261, %264
  %266 = call i32 @RREG32(i64 %265)
  store i32 %266, i32* %10, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* @ALPHA_CONTROL, align 4
  %269 = load i32, i32* @CURSOR_ALPHA_BLND_ENA, align 4
  %270 = call i32 @REG_SET_FIELD(i32 %267, i32 %268, i32 %269, i32 1)
  store i32 %270, i32* %10, align 4
  %271 = load i64, i64* @mmALPHA_CONTROL, align 8
  %272 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %3, align 8
  %273 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %271, %274
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @WREG32(i64 %275, i32 %276)
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
