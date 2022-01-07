; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_prepare_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_prepare_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPIO_CHV_S1_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_P1_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_P2_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_K_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_M1_DIV_BY_2 = common dso_local global i32 0, align 4
@DPIO_CHV_N_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_FEEDFWD_GAIN_MASK = common dso_local global i32 0, align 4
@DPIO_CHV_FRAC_DIV_EN = common dso_local global i32 0, align 4
@DPIO_CHV_FEEDFWD_GAIN_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_INT_LOCK_THRESHOLD_MASK = common dso_local global i32 0, align 4
@DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE = common dso_local global i32 0, align 4
@DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_PROP_COEFF_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_INT_COEFF_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_GAIN_CTRL_SHIFT = common dso_local global i32 0, align 4
@DPIO_CHV_TDC_TARGET_CNT_MASK = common dso_local global i32 0, align 4
@DPIO_CHV_TDC_TARGET_CNT_SHIFT = common dso_local global i32 0, align 4
@DPIO_AFC_RECAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @chv_prepare_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_prepare_pll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %23)
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %6, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @vlv_pipe_to_channel(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @DPLL(i32 %30)
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @I915_WRITE(i32 %31, i32 %38)
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  br label %279

48:                                               ; preds = %2
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %50 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %54 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 4194303
  store i32 %57, i32* %16, align 4
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %59 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %63 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 22
  store i32 %66, i32* %13, align 4
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %68 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %72 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %15, align 4
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %80 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %79)
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @CHV_CMN_DW13(i32 %83)
  %85 = load i32, i32* @DPIO_CHV_S1_DIV_SHIFT, align 4
  %86 = shl i32 5, %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @DPIO_CHV_P1_DIV_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @DPIO_CHV_P2_DIV_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = or i32 %90, %93
  %95 = load i32, i32* @DPIO_CHV_K_DIV_SHIFT, align 4
  %96 = shl i32 1, %95
  %97 = or i32 %94, %96
  %98 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %81, i32 %82, i32 %84, i32 %97)
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @CHV_PLL_DW0(i32 %101)
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %99, i32 %100, i32 %102, i32 %103)
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @CHV_PLL_DW1(i32 %107)
  %109 = load i32, i32* @DPIO_CHV_M1_DIV_BY_2, align 4
  %110 = load i32, i32* @DPIO_CHV_N_DIV_SHIFT, align 4
  %111 = shl i32 1, %110
  %112 = or i32 %109, %111
  %113 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %105, i32 %106, i32 %108, i32 %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @CHV_PLL_DW2(i32 %116)
  %118 = load i32, i32* %16, align 4
  %119 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %114, i32 %115, i32 %117, i32 %118)
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @CHV_PLL_DW3(i32 %122)
  %124 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %120, i32 %121, i32 %123)
  store i32 %124, i32* %17, align 4
  %125 = load i32, i32* @DPIO_CHV_FEEDFWD_GAIN_MASK, align 4
  %126 = load i32, i32* @DPIO_CHV_FRAC_DIV_EN, align 4
  %127 = or i32 %125, %126
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %17, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* @DPIO_CHV_FEEDFWD_GAIN_SHIFT, align 4
  %132 = shl i32 2, %131
  %133 = load i32, i32* %17, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %48
  %138 = load i32, i32* @DPIO_CHV_FRAC_DIV_EN, align 4
  %139 = load i32, i32* %17, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %17, align 4
  br label %141

141:                                              ; preds = %137, %48
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @CHV_PLL_DW3(i32 %144)
  %146 = load i32, i32* %17, align 4
  %147 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %142, i32 %143, i32 %145, i32 %146)
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @CHV_PLL_DW9(i32 %150)
  %152 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %148, i32 %149, i32 %151)
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* @DPIO_CHV_INT_LOCK_THRESHOLD_MASK, align 4
  %154 = load i32, i32* @DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE, align 4
  %155 = or i32 %153, %154
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %17, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* @DPIO_CHV_INT_LOCK_THRESHOLD_SHIFT, align 4
  %160 = shl i32 5, %159
  %161 = load i32, i32* %17, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %141
  %166 = load i32, i32* @DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE, align 4
  %167 = load i32, i32* %17, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %17, align 4
  br label %169

169:                                              ; preds = %165, %141
  %170 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @CHV_PLL_DW9(i32 %172)
  %174 = load i32, i32* %17, align 4
  %175 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %170, i32 %171, i32 %173, i32 %174)
  %176 = load i32, i32* %18, align 4
  %177 = icmp eq i32 %176, 5400000
  br i1 %177, label %178, label %191

178:                                              ; preds = %169
  %179 = load i32, i32* @DPIO_CHV_PROP_COEFF_SHIFT, align 4
  %180 = shl i32 3, %179
  %181 = load i32, i32* %9, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* @DPIO_CHV_INT_COEFF_SHIFT, align 4
  %184 = shl i32 8, %183
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* @DPIO_CHV_GAIN_CTRL_SHIFT, align 4
  %188 = shl i32 1, %187
  %189 = load i32, i32* %9, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %9, align 4
  store i32 9, i32* %10, align 4
  br label %238

191:                                              ; preds = %169
  %192 = load i32, i32* %18, align 4
  %193 = icmp sle i32 %192, 6200000
  br i1 %193, label %194, label %207

194:                                              ; preds = %191
  %195 = load i32, i32* @DPIO_CHV_PROP_COEFF_SHIFT, align 4
  %196 = shl i32 5, %195
  %197 = load i32, i32* %9, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* @DPIO_CHV_INT_COEFF_SHIFT, align 4
  %200 = shl i32 11, %199
  %201 = load i32, i32* %9, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* @DPIO_CHV_GAIN_CTRL_SHIFT, align 4
  %204 = shl i32 3, %203
  %205 = load i32, i32* %9, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %9, align 4
  store i32 9, i32* %10, align 4
  br label %237

207:                                              ; preds = %191
  %208 = load i32, i32* %18, align 4
  %209 = icmp sle i32 %208, 6480000
  br i1 %209, label %210, label %223

210:                                              ; preds = %207
  %211 = load i32, i32* @DPIO_CHV_PROP_COEFF_SHIFT, align 4
  %212 = shl i32 4, %211
  %213 = load i32, i32* %9, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %9, align 4
  %215 = load i32, i32* @DPIO_CHV_INT_COEFF_SHIFT, align 4
  %216 = shl i32 9, %215
  %217 = load i32, i32* %9, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* @DPIO_CHV_GAIN_CTRL_SHIFT, align 4
  %220 = shl i32 3, %219
  %221 = load i32, i32* %9, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %9, align 4
  store i32 8, i32* %10, align 4
  br label %236

223:                                              ; preds = %207
  %224 = load i32, i32* @DPIO_CHV_PROP_COEFF_SHIFT, align 4
  %225 = shl i32 4, %224
  %226 = load i32, i32* %9, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* @DPIO_CHV_INT_COEFF_SHIFT, align 4
  %229 = shl i32 9, %228
  %230 = load i32, i32* %9, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* @DPIO_CHV_GAIN_CTRL_SHIFT, align 4
  %233 = shl i32 3, %232
  %234 = load i32, i32* %9, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %223, %210
  br label %237

237:                                              ; preds = %236, %194
  br label %238

238:                                              ; preds = %237, %178
  %239 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @CHV_PLL_DW6(i32 %241)
  %243 = load i32, i32* %9, align 4
  %244 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %239, i32 %240, i32 %242, i32 %243)
  %245 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %246 = load i32, i32* %7, align 4
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @CHV_PLL_DW8(i32 %247)
  %249 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %245, i32 %246, i32 %248)
  store i32 %249, i32* %17, align 4
  %250 = load i32, i32* @DPIO_CHV_TDC_TARGET_CNT_MASK, align 4
  %251 = xor i32 %250, -1
  %252 = load i32, i32* %17, align 4
  %253 = and i32 %252, %251
  store i32 %253, i32* %17, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @DPIO_CHV_TDC_TARGET_CNT_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %17, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %17, align 4
  %259 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @CHV_PLL_DW8(i32 %261)
  %263 = load i32, i32* %17, align 4
  %264 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %259, i32 %260, i32 %262, i32 %263)
  %265 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* %8, align 4
  %268 = call i32 @CHV_CMN_DW14(i32 %267)
  %269 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @CHV_CMN_DW14(i32 %271)
  %273 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %269, i32 %270, i32 %272)
  %274 = load i32, i32* @DPIO_AFC_RECAL, align 4
  %275 = or i32 %273, %274
  %276 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %265, i32 %266, i32 %268, i32 %275)
  %277 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %278 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %277)
  br label %279

279:                                              ; preds = %238, %47
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @vlv_pipe_to_channel(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dpio_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @CHV_CMN_DW13(i32) #1

declare dso_local i32 @CHV_PLL_DW0(i32) #1

declare dso_local i32 @CHV_PLL_DW1(i32) #1

declare dso_local i32 @CHV_PLL_DW2(i32) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @CHV_PLL_DW3(i32) #1

declare dso_local i32 @CHV_PLL_DW9(i32) #1

declare dso_local i32 @CHV_PLL_DW6(i32) #1

declare dso_local i32 @CHV_PLL_DW8(i32) #1

declare dso_local i32 @CHV_CMN_DW14(i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
