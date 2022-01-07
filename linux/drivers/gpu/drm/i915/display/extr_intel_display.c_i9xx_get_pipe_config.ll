; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_get_pipe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_get_pipe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__, i8*, i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }
%struct.drm_i915_private = type { i32* }

@INTEL_OUTPUT_FORMAT_RGB = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@PIPECONF_COLOR_RANGE_SELECT = common dso_local global i32 0, align 4
@PIPECONF_GAMMA_MODE_MASK_I9XX = common dso_local global i32 0, align 4
@PIPECONF_GAMMA_MODE_SHIFT = common dso_local global i32 0, align 4
@PIPECONF_DOUBLE_WIDE = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i64 0, align 8
@DPLL_MD_UDI_MULTIPLIER_MASK = common dso_local global i32 0, align 4
@DPLL_MD_UDI_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@SDVO_MULTIPLIER_MASK = common dso_local global i32 0, align 4
@SDVO_MULTIPLIER_SHIFT_HIRES = common dso_local global i32 0, align 4
@DPLL_LOCK_VLV = common dso_local global i32 0, align 4
@DPLL_PORTC_READY_MASK = common dso_local global i32 0, align 4
@DPLL_PORTB_READY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @i9xx_get_pipe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_get_pipe_config(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @POWER_DOMAIN_PIPE(i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %297

26:                                               ; preds = %2
  %27 = load i32, i32* @INTEL_OUTPUT_FORMAT_RGB, align 4
  %28 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %29 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %28, i32 0, i32 11
  store i32 %27, i32* %29, align 8
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %35 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %37 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %36, i32 0, i32 10
  store i32* null, i32** %37, align 8
  store i32 0, i32* %10, align 4
  %38 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %39 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PIPECONF(i64 %40)
  %42 = call i8* @I915_READ(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PIPECONF_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %26
  br label %291

49:                                               ; preds = %26
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %51 = call i64 @IS_G4X(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %55 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %59 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57, %53, %49
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %74 [
    i32 129, label %65
    i32 128, label %68
    i32 130, label %71
  ]

65:                                               ; preds = %61
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 1
  store i32 18, i32* %67, align 4
  br label %75

68:                                               ; preds = %61
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 1
  store i32 24, i32* %70, align 4
  br label %75

71:                                               ; preds = %61
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %73 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %72, i32 0, i32 1
  store i32 30, i32* %73, align 4
  br label %75

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %71, %68, %65
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %78 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %82 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @PIPECONF_COLOR_RANGE_SELECT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %91 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %84, %80
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @PIPECONF_GAMMA_MODE_MASK_I9XX, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @PIPECONF_GAMMA_MODE_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %99 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %101 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %92
  %104 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %105 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @CGM_PIPE_MODE(i64 %106)
  %108 = call i8* @I915_READ(i32 %107)
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %110 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %109, i32 0, i32 9
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %103, %92
  %112 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %113 = call i32 @i9xx_get_pipe_color_config(%struct.intel_crtc_state* %112)
  %114 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %115 = call i32 @intel_color_get_config(%struct.intel_crtc_state* %114)
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %117 = call i32 @INTEL_GEN(%struct.drm_i915_private* %116)
  %118 = icmp slt i32 %117, 4
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @PIPECONF_DOUBLE_WIDE, align 4
  %122 = and i32 %120, %121
  %123 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %124 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  br label %125

125:                                              ; preds = %119, %111
  %126 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %127 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %128 = call i32 @intel_get_pipe_timings(%struct.intel_crtc* %126, %struct.intel_crtc_state* %127)
  %129 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %130 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %131 = call i32 @intel_get_pipe_src_size(%struct.intel_crtc* %129, %struct.intel_crtc_state* %130)
  %132 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %133 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %134 = call i32 @i9xx_get_pfit_config(%struct.intel_crtc* %132, %struct.intel_crtc_state* %133)
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %136 = call i32 @INTEL_GEN(%struct.drm_i915_private* %135)
  %137 = icmp sge i32 %136, 4
  br i1 %137, label %138, label %177

138:                                              ; preds = %125
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %140 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %138
  %143 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %144 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PIPE_A, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %150 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %153 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %9, align 4
  br label %164

157:                                              ; preds = %142, %138
  %158 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %159 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @DPLL_MD(i64 %160)
  %162 = call i8* @I915_READ(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  store i32 %163, i32* %9, align 4
  br label %164

164:                                              ; preds = %157, %148
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @DPLL_MD_UDI_MULTIPLIER_MASK, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @DPLL_MD_UDI_MULTIPLIER_SHIFT, align 4
  %169 = ashr i32 %167, %168
  %170 = add nsw i32 %169, 1
  %171 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %172 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %175 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %174, i32 0, i32 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  br label %212

177:                                              ; preds = %125
  %178 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %179 = call i64 @IS_I945G(%struct.drm_i915_private* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %177
  %182 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %183 = call i64 @IS_I945GM(%struct.drm_i915_private* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %187 = call i64 @IS_G33(%struct.drm_i915_private* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %191 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %189, %185, %181, %177
  %194 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %195 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 @DPLL(i64 %196)
  %198 = call i8* @I915_READ(i32 %197)
  %199 = ptrtoint i8* %198 to i32
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @SDVO_MULTIPLIER_MASK, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @SDVO_MULTIPLIER_SHIFT_HIRES, align 4
  %204 = ashr i32 %202, %203
  %205 = add nsw i32 %204, 1
  %206 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %207 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %206, i32 0, i32 5
  store i32 %205, i32* %207, align 4
  br label %211

208:                                              ; preds = %189
  %209 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %210 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %209, i32 0, i32 5
  store i32 1, i32* %210, align 4
  br label %211

211:                                              ; preds = %208, %193
  br label %212

212:                                              ; preds = %211, %164
  %213 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %214 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @DPLL(i64 %215)
  %217 = call i8* @I915_READ(i32 %216)
  %218 = ptrtoint i8* %217 to i32
  %219 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %220 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %219, i32 0, i32 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %223 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %246, label %225

225:                                              ; preds = %212
  %226 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %227 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %225
  %230 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %231 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @FP0(i64 %232)
  %234 = call i8* @I915_READ(i32 %233)
  %235 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %236 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %235, i32 0, i32 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 3
  store i8* %234, i8** %237, align 8
  %238 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %239 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @FP1(i64 %240)
  %242 = call i8* @I915_READ(i32 %241)
  %243 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %244 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %243, i32 0, i32 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  store i8* %242, i8** %245, align 8
  br label %258

246:                                              ; preds = %225, %212
  %247 = load i32, i32* @DPLL_LOCK_VLV, align 4
  %248 = load i32, i32* @DPLL_PORTC_READY_MASK, align 4
  %249 = or i32 %247, %248
  %250 = load i32, i32* @DPLL_PORTB_READY_MASK, align 4
  %251 = or i32 %249, %250
  %252 = xor i32 %251, -1
  %253 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %254 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %253, i32 0, i32 8
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, %252
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %246, %229
  %259 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %260 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %264 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %265 = call i32 @chv_crtc_clock_get(%struct.intel_crtc* %263, %struct.intel_crtc_state* %264)
  br label %279

266:                                              ; preds = %258
  %267 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %268 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %266
  %271 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %272 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %273 = call i32 @vlv_crtc_clock_get(%struct.intel_crtc* %271, %struct.intel_crtc_state* %272)
  br label %278

274:                                              ; preds = %266
  %275 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %276 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %277 = call i32 @i9xx_crtc_clock_get(%struct.intel_crtc* %275, %struct.intel_crtc_state* %276)
  br label %278

278:                                              ; preds = %274, %270
  br label %279

279:                                              ; preds = %278, %262
  %280 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %281 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %284 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = sdiv i32 %282, %285
  %287 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %288 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %287, i32 0, i32 7
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  store i32 %286, i32* %290, align 4
  store i32 1, i32* %10, align 4
  br label %291

291:                                              ; preds = %279, %48
  %292 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %8, align 4
  %295 = call i32 @intel_display_power_put(%struct.drm_i915_private* %292, i32 %293, i32 %294)
  %296 = load i32, i32* %10, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %291, %25
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @POWER_DOMAIN_PIPE(i64) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i64) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @CGM_PIPE_MODE(i64) #1

declare dso_local i32 @i9xx_get_pipe_color_config(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_get_config(%struct.intel_crtc_state*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_get_pipe_timings(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_get_pipe_src_size(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @i9xx_get_pfit_config(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @DPLL_MD(i64) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G33(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @DPLL(i64) #1

declare dso_local i32 @FP0(i64) #1

declare dso_local i32 @FP1(i64) #1

declare dso_local i32 @chv_crtc_clock_get(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @vlv_crtc_clock_get(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @i9xx_crtc_clock_get(%struct.intel_crtc*, %struct.intel_crtc_state*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
