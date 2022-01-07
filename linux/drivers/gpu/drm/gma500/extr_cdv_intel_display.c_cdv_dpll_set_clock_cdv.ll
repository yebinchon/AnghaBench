; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_dpll_set_clock_cdv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_dpll_set_clock_cdv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.gma_clock_t = type { i32, i32, i32, i32, i32 }
%struct.gma_crtc = type { i32 }

@DPLL_A = common dso_local global i32 0, align 4
@DPLL_B = common dso_local global i32 0, align 4
@SB_REF_DPLLA = common dso_local global i32 0, align 4
@SB_REF_DPLLB = common dso_local global i32 0, align 4
@DPLL_SYNCLOCK_ENABLE = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@REF_CLK_MASK = common dso_local global i32 0, align 4
@DP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"use DPLLA for pipe B\0A\00", align 1
@REF_CLK_DPLLA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"use their DPLL for pipe A/B\0A\00", align 1
@REF_CLK_DPLL = common dso_local global i32 0, align 4
@SB_M_DIVIDER_MASK = common dso_local global i32 0, align 4
@SB_M_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@SB_N_VCO_SEL_MASK = common dso_local global i32 0, align 4
@SB_N_DIVIDER_MASK = common dso_local global i32 0, align 4
@SB_N_CB_TUNE_MASK = common dso_local global i32 0, align 4
@SB_N_DIVIDER_SHIFT = common dso_local global i32 0, align 4
@SB_N_CB_TUNE_SHIFT = common dso_local global i32 0, align 4
@SB_N_VCO_SEL_SHIFT = common dso_local global i32 0, align 4
@SB_P2_DIVIDER_MASK = common dso_local global i32 0, align 4
@SB_P1_DIVIDER_MASK = common dso_local global i32 0, align 4
@SB_P1_DIVIDER = common dso_local global i32 0, align 4
@SB_P2_5 = common dso_local global i32 0, align 4
@SB_P2_DIVIDER = common dso_local global i32 0, align 4
@SB_P2_10 = common dso_local global i32 0, align 4
@SB_P2_14 = common dso_local global i32 0, align 4
@SB_P2_7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Bad P2 clock: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DDI_MASK = common dso_local global i32 0, align 4
@DDI0_SELECT = common dso_local global i32 0, align 4
@PSB_LANE0 = common dso_local global i32 0, align 4
@LANE_PLL_MASK = common dso_local global i32 0, align 4
@LANE_PLL_ENABLE = common dso_local global i32 0, align 4
@PSB_LANE1 = common dso_local global i32 0, align 4
@PSB_LANE2 = common dso_local global i32 0, align 4
@PSB_LANE3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_crtc*, %struct.gma_clock_t*, i32, i32)* @cdv_dpll_set_clock_cdv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_dpll_set_clock_cdv(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.gma_clock_t* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.gma_clock_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gma_crtc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %8, align 8
  store %struct.gma_clock_t* %2, %struct.gma_clock_t** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %24 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %23)
  store %struct.gma_crtc* %24, %struct.gma_crtc** %12, align 8
  %25 = load %struct.gma_crtc*, %struct.gma_crtc** %12, align 8
  %26 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @DPLL_A, align 4
  br label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @DPLL_B, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @SB_REF_DPLLA, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @SB_REF_DPLLB, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %19, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %45 = call i32 @cdv_sb_reset(%struct.drm_device* %44)
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @DPLL_SYNCLOCK_ENABLE, align 4
  %48 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @REG_WRITE(i32 %46, i32 %49)
  %51 = call i32 @udelay(i32 100)
  store i32 6858497, i32* %20, align 4
  %52 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @SB_REF_SFR(i32 %53)
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @cdv_sb_write(%struct.drm_device* %52, i32 %54, i32 %55)
  %57 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @cdv_sb_read(%struct.drm_device* %57, i32 %58, i32* %20)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %17, align 4
  store i32 %63, i32* %6, align 4
  br label %371

64:                                               ; preds = %42
  %65 = load i32, i32* @REF_CLK_MASK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %20, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @DP_MASK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %81 = load i32, i32* @REF_CLK_DPLLA, align 4
  %82 = load i32, i32* %20, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %20, align 4
  br label %89

84:                                               ; preds = %74, %71, %64
  %85 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @REF_CLK_DPLL, align 4
  %87 = load i32, i32* %20, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %20, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @cdv_sb_write(%struct.drm_device* %90, i32 %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %6, align 4
  br label %371

98:                                               ; preds = %89
  %99 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @SB_M(i32 %100)
  %102 = call i32 @cdv_sb_read(%struct.drm_device* %99, i32 %101, i32* %14)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i32, i32* %17, align 4
  store i32 %106, i32* %6, align 4
  br label %371

107:                                              ; preds = %98
  %108 = load i32, i32* @SB_M_DIVIDER_MASK, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %14, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %14, align 4
  %112 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %113 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @SB_M_DIVIDER_SHIFT, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %14, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %14, align 4
  %119 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @SB_M(i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @cdv_sb_write(%struct.drm_device* %119, i32 %121, i32 %122)
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %107
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %6, align 4
  br label %371

128:                                              ; preds = %107
  %129 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @SB_N_VCO(i32 %130)
  %132 = call i32 @cdv_sb_read(%struct.drm_device* %129, i32 %131, i32* %15)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %6, align 4
  br label %371

137:                                              ; preds = %128
  %138 = load i32, i32* %15, align 4
  %139 = and i32 %138, 65535
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %140, 263
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* @SB_N_VCO_SEL_MASK, align 4
  %143 = load i32, i32* @SB_N_DIVIDER_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @SB_N_CB_TUNE_MASK, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %15, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %15, align 4
  %150 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %151 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SB_N_DIVIDER_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %15, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %15, align 4
  %157 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %158 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 2250000
  br i1 %160, label %161, label %170

161:                                              ; preds = %137
  %162 = load i32, i32* @SB_N_CB_TUNE_SHIFT, align 4
  %163 = shl i32 2, %162
  %164 = load i32, i32* %15, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* @SB_N_VCO_SEL_SHIFT, align 4
  %167 = shl i32 0, %166
  %168 = load i32, i32* %15, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %15, align 4
  br label %209

170:                                              ; preds = %137
  %171 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %172 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 2750000
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load i32, i32* @SB_N_CB_TUNE_SHIFT, align 4
  %177 = shl i32 1, %176
  %178 = load i32, i32* %15, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* @SB_N_VCO_SEL_SHIFT, align 4
  %181 = shl i32 1, %180
  %182 = load i32, i32* %15, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %15, align 4
  br label %208

184:                                              ; preds = %170
  %185 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %186 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %187, 3300000
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load i32, i32* @SB_N_CB_TUNE_SHIFT, align 4
  %191 = shl i32 0, %190
  %192 = load i32, i32* %15, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* @SB_N_VCO_SEL_SHIFT, align 4
  %195 = shl i32 2, %194
  %196 = load i32, i32* %15, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %15, align 4
  br label %207

198:                                              ; preds = %184
  %199 = load i32, i32* @SB_N_CB_TUNE_SHIFT, align 4
  %200 = shl i32 0, %199
  %201 = load i32, i32* %15, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* @SB_N_VCO_SEL_SHIFT, align 4
  %204 = shl i32 3, %203
  %205 = load i32, i32* %15, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %15, align 4
  br label %207

207:                                              ; preds = %198, %189
  br label %208

208:                                              ; preds = %207, %175
  br label %209

209:                                              ; preds = %208, %161
  %210 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @SB_N_VCO(i32 %211)
  %213 = load i32, i32* %15, align 4
  %214 = call i32 @cdv_sb_write(%struct.drm_device* %210, i32 %212, i32 %213)
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i32, i32* %17, align 4
  store i32 %218, i32* %6, align 4
  br label %371

219:                                              ; preds = %209
  %220 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @SB_P(i32 %221)
  %223 = call i32 @cdv_sb_read(%struct.drm_device* %220, i32 %222, i32* %16)
  store i32 %223, i32* %17, align 4
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i32, i32* %17, align 4
  store i32 %227, i32* %6, align 4
  br label %371

228:                                              ; preds = %219
  %229 = load i32, i32* @SB_P2_DIVIDER_MASK, align 4
  %230 = load i32, i32* @SB_P1_DIVIDER_MASK, align 4
  %231 = or i32 %229, %230
  %232 = xor i32 %231, -1
  %233 = load i32, i32* %16, align 4
  %234 = and i32 %233, %232
  store i32 %234, i32* %16, align 4
  %235 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %236 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @SB_P1_DIVIDER, align 4
  %239 = call i32 @SET_FIELD(i32 %237, i32 %238)
  %240 = load i32, i32* %16, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %16, align 4
  %242 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %243 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  switch i32 %244, label %269 [
    i32 5, label %245
    i32 10, label %251
    i32 14, label %257
    i32 7, label %263
  ]

245:                                              ; preds = %228
  %246 = load i32, i32* @SB_P2_5, align 4
  %247 = load i32, i32* @SB_P2_DIVIDER, align 4
  %248 = call i32 @SET_FIELD(i32 %246, i32 %247)
  %249 = load i32, i32* %16, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %16, align 4
  br label %276

251:                                              ; preds = %228
  %252 = load i32, i32* @SB_P2_10, align 4
  %253 = load i32, i32* @SB_P2_DIVIDER, align 4
  %254 = call i32 @SET_FIELD(i32 %252, i32 %253)
  %255 = load i32, i32* %16, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %16, align 4
  br label %276

257:                                              ; preds = %228
  %258 = load i32, i32* @SB_P2_14, align 4
  %259 = load i32, i32* @SB_P2_DIVIDER, align 4
  %260 = call i32 @SET_FIELD(i32 %258, i32 %259)
  %261 = load i32, i32* %16, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %16, align 4
  br label %276

263:                                              ; preds = %228
  %264 = load i32, i32* @SB_P2_7, align 4
  %265 = load i32, i32* @SB_P2_DIVIDER, align 4
  %266 = call i32 @SET_FIELD(i32 %264, i32 %265)
  %267 = load i32, i32* %16, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %16, align 4
  br label %276

269:                                              ; preds = %228
  %270 = load %struct.gma_clock_t*, %struct.gma_clock_t** %9, align 8
  %271 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %6, align 4
  br label %371

276:                                              ; preds = %263, %257, %251, %245
  %277 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @SB_P(i32 %278)
  %280 = load i32, i32* %16, align 4
  %281 = call i32 @cdv_sb_write(%struct.drm_device* %277, i32 %279, i32 %280)
  store i32 %281, i32* %17, align 4
  %282 = load i32, i32* %17, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %276
  %285 = load i32, i32* %17, align 4
  store i32 %285, i32* %6, align 4
  br label %371

286:                                              ; preds = %276
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %370

289:                                              ; preds = %286
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* @DDI_MASK, align 4
  %292 = and i32 %290, %291
  %293 = load i32, i32* @DDI0_SELECT, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %332

295:                                              ; preds = %289
  %296 = load i32, i32* @PSB_LANE0, align 4
  store i32 %296, i32* %21, align 4
  %297 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %298 = load i32, i32* %21, align 4
  %299 = call i32 @cdv_sb_read(%struct.drm_device* %297, i32 %298, i32* %22)
  %300 = load i32, i32* @LANE_PLL_MASK, align 4
  %301 = xor i32 %300, -1
  %302 = load i32, i32* %22, align 4
  %303 = and i32 %302, %301
  store i32 %303, i32* %22, align 4
  %304 = load i32, i32* @LANE_PLL_ENABLE, align 4
  %305 = load i32, i32* %13, align 4
  %306 = call i32 @LANE_PLL_PIPE(i32 %305)
  %307 = or i32 %304, %306
  %308 = load i32, i32* %22, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %22, align 4
  %310 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %311 = load i32, i32* %21, align 4
  %312 = load i32, i32* %22, align 4
  %313 = call i32 @cdv_sb_write(%struct.drm_device* %310, i32 %311, i32 %312)
  %314 = load i32, i32* @PSB_LANE1, align 4
  store i32 %314, i32* %21, align 4
  %315 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %316 = load i32, i32* %21, align 4
  %317 = call i32 @cdv_sb_read(%struct.drm_device* %315, i32 %316, i32* %22)
  %318 = load i32, i32* @LANE_PLL_MASK, align 4
  %319 = xor i32 %318, -1
  %320 = load i32, i32* %22, align 4
  %321 = and i32 %320, %319
  store i32 %321, i32* %22, align 4
  %322 = load i32, i32* @LANE_PLL_ENABLE, align 4
  %323 = load i32, i32* %13, align 4
  %324 = call i32 @LANE_PLL_PIPE(i32 %323)
  %325 = or i32 %322, %324
  %326 = load i32, i32* %22, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %22, align 4
  %328 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %329 = load i32, i32* %21, align 4
  %330 = load i32, i32* %22, align 4
  %331 = call i32 @cdv_sb_write(%struct.drm_device* %328, i32 %329, i32 %330)
  br label %369

332:                                              ; preds = %289
  %333 = load i32, i32* @PSB_LANE2, align 4
  store i32 %333, i32* %21, align 4
  %334 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %335 = load i32, i32* %21, align 4
  %336 = call i32 @cdv_sb_read(%struct.drm_device* %334, i32 %335, i32* %22)
  %337 = load i32, i32* @LANE_PLL_MASK, align 4
  %338 = xor i32 %337, -1
  %339 = load i32, i32* %22, align 4
  %340 = and i32 %339, %338
  store i32 %340, i32* %22, align 4
  %341 = load i32, i32* @LANE_PLL_ENABLE, align 4
  %342 = load i32, i32* %13, align 4
  %343 = call i32 @LANE_PLL_PIPE(i32 %342)
  %344 = or i32 %341, %343
  %345 = load i32, i32* %22, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %22, align 4
  %347 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %348 = load i32, i32* %21, align 4
  %349 = load i32, i32* %22, align 4
  %350 = call i32 @cdv_sb_write(%struct.drm_device* %347, i32 %348, i32 %349)
  %351 = load i32, i32* @PSB_LANE3, align 4
  store i32 %351, i32* %21, align 4
  %352 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %353 = load i32, i32* %21, align 4
  %354 = call i32 @cdv_sb_read(%struct.drm_device* %352, i32 %353, i32* %22)
  %355 = load i32, i32* @LANE_PLL_MASK, align 4
  %356 = xor i32 %355, -1
  %357 = load i32, i32* %22, align 4
  %358 = and i32 %357, %356
  store i32 %358, i32* %22, align 4
  %359 = load i32, i32* @LANE_PLL_ENABLE, align 4
  %360 = load i32, i32* %13, align 4
  %361 = call i32 @LANE_PLL_PIPE(i32 %360)
  %362 = or i32 %359, %361
  %363 = load i32, i32* %22, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %22, align 4
  %365 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %366 = load i32, i32* %21, align 4
  %367 = load i32, i32* %22, align 4
  %368 = call i32 @cdv_sb_write(%struct.drm_device* %365, i32 %366, i32 %367)
  br label %369

369:                                              ; preds = %332, %295
  br label %370

370:                                              ; preds = %369, %286
  store i32 0, i32* %6, align 4
  br label %371

371:                                              ; preds = %370, %284, %269, %226, %217, %135, %126, %105, %96, %62
  %372 = load i32, i32* %6, align 4
  ret i32 %372
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @cdv_sb_reset(%struct.drm_device*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cdv_sb_write(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @SB_REF_SFR(i32) #1

declare dso_local i32 @cdv_sb_read(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @SB_M(i32) #1

declare dso_local i32 @SB_N_VCO(i32) #1

declare dso_local i32 @SB_P(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @LANE_PLL_PIPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
