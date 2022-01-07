; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_prepare_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_prepare_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPLL_EXT_BUFFER_ENABLE_VLV = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@VLV_PLL_DW9_BCAST = common dso_local global i32 0, align 4
@VLV_CMN_DW0 = common dso_local global i32 0, align 4
@DPIO_M1DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_M2DIV_MASK = common dso_local global i32 0, align 4
@DPIO_P1_SHIFT = common dso_local global i32 0, align 4
@DPIO_P2_SHIFT = common dso_local global i32 0, align 4
@DPIO_N_SHIFT = common dso_local global i32 0, align 4
@DPIO_K_SHIFT = common dso_local global i32 0, align 4
@DPIO_POST_DIV_HDMIDP = common dso_local global i32 0, align 4
@DPIO_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@DPIO_ENABLE_CALIBRATION = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*)* @vlv_prepare_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_prepare_pll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
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
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %5, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %20)
  store %struct.drm_i915_private* %21, %struct.drm_i915_private** %6, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @DPLL(i32 %25)
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %32 = load i32, i32* @DPLL_EXT_BUFFER_ENABLE_VLV, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %30, %34
  %36 = call i32 @I915_WRITE(i32 %26, i32 %35)
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %2
  br label %235

45:                                               ; preds = %2
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %47 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %46)
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %49 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %61 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @PIPE_B, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %45
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @vlv_pllb_recal_opamp(%struct.drm_i915_private* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %45
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @VLV_PLL_DW9_BCAST, align 4
  %79 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %76, i32 %77, i32 %78, i32 16777231)
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @VLV_PLL_DW8(i32 %82)
  %84 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %80, i32 %81, i32 %83)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = and i32 %85, 16777215
  store i32 %86, i32* %15, align 4
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @VLV_PLL_DW8(i32 %89)
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %87, i32 %88, i32 %90, i32 %91)
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @VLV_CMN_DW0, align 4
  %96 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %93, i32 %94, i32 %95, i32 1552)
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @DPIO_M1DIV_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @DPIO_M2DIV_MASK, align 4
  %102 = and i32 %100, %101
  %103 = or i32 %99, %102
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @DPIO_P1_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @DPIO_P2_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = or i32 %106, %109
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @DPIO_N_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* @DPIO_K_SHIFT, align 4
  %119 = shl i32 1, %118
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* @DPIO_POST_DIV_HDMIDP, align 4
  %123 = load i32, i32* @DPIO_POST_DIV_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  %127 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @VLV_PLL_DW3(i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %127, i32 %128, i32 %130, i32 %131)
  %133 = load i32, i32* @DPIO_ENABLE_CALIBRATION, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @VLV_PLL_DW3(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %136, i32 %137, i32 %139, i32 %140)
  %142 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %143 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 162000
  br i1 %145, label %156, label %146

146:                                              ; preds = %75
  %147 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %148 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %149 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %153 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %154 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151, %146, %75
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @VLV_PLL_DW10(i32 %159)
  %161 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %157, i32 %158, i32 %160, i32 10420227)
  br label %168

162:                                              ; preds = %151
  %163 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @VLV_PLL_DW10(i32 %165)
  %167 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %163, i32 %164, i32 %166, i32 13631503)
  br label %168

168:                                              ; preds = %162, %156
  %169 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %170 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @PIPE_A, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @VLV_PLL_DW5(i32 %179)
  %181 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %177, i32 %178, i32 %180, i32 234094592)
  br label %188

182:                                              ; preds = %172
  %183 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @VLV_PLL_DW5(i32 %185)
  %187 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %183, i32 %184, i32 %186, i32 234291200)
  br label %188

188:                                              ; preds = %182, %176
  br label %206

189:                                              ; preds = %168
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @PIPE_A, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  %194 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @VLV_PLL_DW5(i32 %196)
  %198 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %194, i32 %195, i32 %197, i32 234291200)
  br label %205

199:                                              ; preds = %189
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @VLV_PLL_DW5(i32 %202)
  %204 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %200, i32 %201, i32 %203, i32 234094592)
  br label %205

205:                                              ; preds = %199, %193
  br label %206

206:                                              ; preds = %205, %188
  %207 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @VLV_PLL_DW7(i32 %209)
  %211 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %207, i32 %208, i32 %210)
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = and i32 %212, 65280
  %214 = or i32 %213, 29360128
  store i32 %214, i32* %14, align 4
  %215 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %216 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %206
  %219 = load i32, i32* %14, align 4
  %220 = or i32 %219, 16777216
  store i32 %220, i32* %14, align 4
  br label %221

221:                                              ; preds = %218, %206
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @VLV_PLL_DW7(i32 %224)
  %226 = load i32, i32* %14, align 4
  %227 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %222, i32 %223, i32 %225, i32 %226)
  %228 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @VLV_PLL_DW11(i32 %230)
  %232 = call i32 @vlv_dpio_write(%struct.drm_i915_private* %228, i32 %229, i32 %231, i32 -2021191680)
  %233 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %234 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %233)
  br label %235

235:                                              ; preds = %221, %44
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_pllb_recal_opamp(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_dpio_write(%struct.drm_i915_private*, i32, i32, i32) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @VLV_PLL_DW8(i32) #1

declare dso_local i32 @VLV_PLL_DW3(i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @VLV_PLL_DW10(i32) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @VLV_PLL_DW5(i32) #1

declare dso_local i32 @VLV_PLL_DW7(i32) #1

declare dso_local i32 @VLV_PLL_DW11(i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
