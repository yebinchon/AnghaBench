; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_crtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_haswell_crtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, i64, %struct.TYPE_5__, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* }
%struct.intel_crtc = type { i32, i32 }

@M1_N1 = common dso_local global i32 0, align 4
@TRANSCODER_EDP = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DP_MST = common dso_local global i32 0, align 4
@INVALID_PIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_atomic_state*)* @haswell_crtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @haswell_crtc_enable(%struct.intel_crtc_state* %0, %struct.intel_atomic_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_atomic_state* %1, %struct.intel_atomic_state** %4, align 8
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %15, %struct.drm_crtc** %5, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %21 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %20)
  store %struct.intel_crtc* %21, %struct.intel_crtc** %7, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %26 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %254

34:                                               ; preds = %2
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %37 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %38 = call i32 @intel_encoders_pre_pll_enable(%struct.intel_crtc* %35, %struct.intel_crtc_state* %36, %struct.intel_atomic_state* %37)
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %40 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %45 = call i32 @intel_enable_shared_dpll(%struct.intel_crtc_state* %44)
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %49 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %50 = call i32 @intel_encoders_pre_enable(%struct.intel_crtc* %47, %struct.intel_crtc_state* %48, %struct.intel_atomic_state* %49)
  %51 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %52 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %56 = load i32, i32* @M1_N1, align 4
  %57 = call i32 @intel_dp_set_m_n(%struct.intel_crtc_state* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %46
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @transcoder_is_dsi(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %64 = call i32 @intel_set_pipe_timings(%struct.intel_crtc_state* %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %67 = call i32 @intel_set_pipe_src_size(%struct.intel_crtc_state* %66)
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @TRANSCODER_EDP, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @transcoder_is_dsi(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @PIPE_MULT(i32 %76)
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %79 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, 1
  %82 = call i32 @I915_WRITE(i32 %77, i64 %81)
  br label %83

83:                                               ; preds = %75, %71, %65
  %84 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %85 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %90 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %91 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %90, i32 0, i32 4
  %92 = call i32 @intel_cpu_transcoder_set_m_n(%struct.intel_crtc_state* %89, i32* %91, i32* null)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @transcoder_is_dsi(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %99 = call i32 @haswell_set_pipeconf(%struct.intel_crtc_state* %98)
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %102 = call i32 @INTEL_GEN(%struct.drm_i915_private* %101)
  %103 = icmp sge i32 %102, 9
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %106 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %100
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %110 = call i32 @bdw_set_pipemisc(%struct.intel_crtc_state* %109)
  br label %111

111:                                              ; preds = %108, %104
  %112 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %113 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %115 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %111
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %119 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %117, %111
  %122 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %123 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi i1 [ false, %117 ], [ %126, %121 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @glk_pipe_scaler_clock_gating_wa(%struct.drm_i915_private* %133, i32 %134, i32 1)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %138 = call i32 @INTEL_GEN(%struct.drm_i915_private* %137)
  %139 = icmp sge i32 %138, 9
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %142 = call i32 @skylake_pfit_enable(%struct.intel_crtc_state* %141)
  br label %146

143:                                              ; preds = %136
  %144 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %145 = call i32 @ironlake_pfit_enable(%struct.intel_crtc_state* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %148 = call i32 @intel_color_load_luts(%struct.intel_crtc_state* %147)
  %149 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %150 = call i32 @intel_color_commit(%struct.intel_crtc_state* %149)
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %152 = call i32 @INTEL_GEN(%struct.drm_i915_private* %151)
  %153 = icmp slt i32 %152, 9
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %156 = call i32 @intel_disable_primary_plane(%struct.intel_crtc_state* %155)
  br label %157

157:                                              ; preds = %154, %146
  %158 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %159 = call i32 @INTEL_GEN(%struct.drm_i915_private* %158)
  %160 = icmp sge i32 %159, 11
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %163 = call i32 @icl_set_pipe_chicken(%struct.intel_crtc* %162)
  br label %164

164:                                              ; preds = %161, %157
  %165 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %166 = call i32 @intel_ddi_set_pipe_settings(%struct.intel_crtc_state* %165)
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @transcoder_is_dsi(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %172 = call i32 @intel_ddi_enable_transcoder_func(%struct.intel_crtc_state* %171)
  br label %173

173:                                              ; preds = %170, %164
  %174 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %175 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %176, align 8
  %178 = icmp ne i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* %177, null
  br i1 %178, label %179, label %187

179:                                              ; preds = %173
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %181 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %182, align 8
  %184 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %185 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %186 = call i32 %183(%struct.intel_atomic_state* %184, %struct.intel_crtc_state* %185)
  br label %187

187:                                              ; preds = %179, %173
  %188 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %189 = call i32 @INTEL_GEN(%struct.drm_i915_private* %188)
  %190 = icmp sge i32 %189, 11
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %193 = call i32 @icl_pipe_mbus_enable(%struct.intel_crtc* %192)
  br label %194

194:                                              ; preds = %191, %187
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @transcoder_is_dsi(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %200 = call i32 @intel_enable_pipe(%struct.intel_crtc_state* %199)
  br label %201

201:                                              ; preds = %198, %194
  %202 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %203 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %208 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %209 = call i32 @lpt_pch_enable(%struct.intel_atomic_state* %207, %struct.intel_crtc_state* %208)
  br label %210

210:                                              ; preds = %206, %201
  %211 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %212 = load i32, i32* @INTEL_OUTPUT_DP_MST, align 4
  %213 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %217 = call i32 @intel_ddi_set_vc_payload_alloc(%struct.intel_crtc_state* %216, i32 1)
  br label %218

218:                                              ; preds = %215, %210
  %219 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %220 = call i32 @assert_vblank_disabled(%struct.drm_crtc* %219)
  %221 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %222 = call i32 @intel_crtc_vblank_on(%struct.intel_crtc_state* %221)
  %223 = load %struct.intel_crtc*, %struct.intel_crtc** %7, align 8
  %224 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %225 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %226 = call i32 @intel_encoders_enable(%struct.intel_crtc* %223, %struct.intel_crtc_state* %224, %struct.intel_atomic_state* %225)
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %218
  %230 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %230, i32 %231)
  %233 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @glk_pipe_scaler_clock_gating_wa(%struct.drm_i915_private* %233, i32 %234, i32 0)
  br label %236

236:                                              ; preds = %229, %218
  %237 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %238 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %9, align 4
  %240 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %241 = call i64 @IS_HASWELL(%struct.drm_i915_private* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %254

243:                                              ; preds = %236
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @INVALID_PIPE, align 4
  %246 = icmp ne i32 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %248, i32 %249)
  %251 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %251, i32 %252)
  br label %254

254:                                              ; preds = %33, %247, %243, %236
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_encoders_pre_pll_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @intel_enable_shared_dpll(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_pre_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_set_m_n(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @transcoder_is_dsi(i32) #1

declare dso_local i32 @intel_set_pipe_timings(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_set_pipe_src_size(%struct.intel_crtc_state*) #1

declare dso_local i32 @I915_WRITE(i32, i64) #1

declare dso_local i32 @PIPE_MULT(i32) #1

declare dso_local i32 @intel_cpu_transcoder_set_m_n(%struct.intel_crtc_state*, i32*, i32*) #1

declare dso_local i32 @haswell_set_pipeconf(%struct.intel_crtc_state*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @bdw_set_pipemisc(%struct.intel_crtc_state*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @glk_pipe_scaler_clock_gating_wa(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @skylake_pfit_enable(%struct.intel_crtc_state*) #1

declare dso_local i32 @ironlake_pfit_enable(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_load_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_commit(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_disable_primary_plane(%struct.intel_crtc_state*) #1

declare dso_local i32 @icl_set_pipe_chicken(%struct.intel_crtc*) #1

declare dso_local i32 @intel_ddi_set_pipe_settings(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_ddi_enable_transcoder_func(%struct.intel_crtc_state*) #1

declare dso_local i32 @icl_pipe_mbus_enable(%struct.intel_crtc*) #1

declare dso_local i32 @intel_enable_pipe(%struct.intel_crtc_state*) #1

declare dso_local i32 @lpt_pch_enable(%struct.intel_atomic_state*, %struct.intel_crtc_state*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_ddi_set_vc_payload_alloc(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @assert_vblank_disabled(%struct.drm_crtc*) #1

declare dso_local i32 @intel_crtc_vblank_on(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
