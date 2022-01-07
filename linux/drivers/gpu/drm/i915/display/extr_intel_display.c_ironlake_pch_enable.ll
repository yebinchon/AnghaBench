; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pch_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_pch_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc_state = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.drm_display_mode, i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_crtc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* }
%struct.TYPE_8__ = type { i32 }

@TU_SIZE_MASK = common dso_local global i32 0, align 4
@PCH_DPLL_SEL = common dso_local global i32 0, align 4
@DPLL_ID_PCH_PLL_B = common dso_local global i32 0, align 4
@PIPECONF_BPC_MASK = common dso_local global i32 0, align 4
@TRANS_DP_PORT_SEL_MASK = common dso_local global i32 0, align 4
@TRANS_DP_SYNC_MASK = common dso_local global i32 0, align 4
@TRANS_DP_BPC_MASK = common dso_local global i32 0, align 4
@TRANS_DP_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@TRANS_DP_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@TRANS_DP_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@PORT_B = common dso_local global i32 0, align 4
@PORT_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* @ironlake_pch_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_pch_enable(%struct.intel_atomic_state* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.intel_crtc* @to_intel_crtc(i32 %18)
  store %struct.intel_crtc* %19, %struct.intel_crtc** %5, align 8
  %20 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %21 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %24)
  store %struct.drm_i915_private* %25, %struct.drm_i915_private** %7, align 8
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %8, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @assert_pch_transcoder_disabled(%struct.drm_i915_private* %29, i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %33 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %37 = call i32 @ivybridge_update_fdi_bc_bifurcation(%struct.intel_crtc_state* %36)
  br label %38

38:                                               ; preds = %35, %2
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @FDI_RX_TUSIZE1(i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @PIPE_DATA_M1(i32 %41)
  %43 = call i32 @I915_READ(i32 %42)
  %44 = load i32, i32* @TU_SIZE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @I915_WRITE(i32 %40, i32 %45)
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)*, i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)** %49, align 8
  %51 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %53 = call i32 %50(%struct.intel_crtc* %51, %struct.intel_crtc_state* %52)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %55 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %38
  %58 = load i32, i32* @PCH_DPLL_SEL, align 4
  %59 = call i32 @I915_READ(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @TRANS_DPLL_ENABLE(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @TRANS_DPLLB_SEL(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %67 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %70 = load i32, i32* @DPLL_ID_PCH_PLL_B, align 4
  %71 = call i64 @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %69, i32 %70)
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %57
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %82

77:                                               ; preds = %57
  %78 = load i32, i32* %10, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i32, i32* @PCH_DPLL_SEL, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @I915_WRITE(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %38
  %87 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %88 = call i32 @intel_enable_shared_dpll(%struct.intel_crtc_state* %87)
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @assert_panel_unlocked(%struct.drm_i915_private* %89, i32 %90)
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @ironlake_pch_transcoder_set_timings(%struct.intel_crtc_state* %92, i32 %93)
  %95 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %96 = call i32 @intel_fdi_normal_train(%struct.intel_crtc* %95)
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %98 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %178

100:                                              ; preds = %86
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %102 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %178

104:                                              ; preds = %100
  %105 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %106 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store %struct.drm_display_mode* %107, %struct.drm_display_mode** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @PIPECONF(i32 %108)
  %110 = call i32 @I915_READ(i32 %109)
  %111 = load i32, i32* @PIPECONF_BPC_MASK, align 4
  %112 = and i32 %110, %111
  %113 = ashr i32 %112, 5
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @TRANS_DP_CTL(i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @I915_READ(i32 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* @TRANS_DP_PORT_SEL_MASK, align 4
  %119 = load i32, i32* @TRANS_DP_SYNC_MASK, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @TRANS_DP_BPC_MASK, align 4
  %122 = or i32 %120, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* @TRANS_DP_OUTPUT_ENABLE, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %12, align 4
  %130 = shl i32 %129, 9
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %104
  %140 = load i32, i32* @TRANS_DP_HSYNC_ACTIVE_HIGH, align 4
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %139, %104
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, i32* @TRANS_DP_VSYNC_ACTIVE_HIGH, align 4
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %150, %143
  %155 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %156 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %157 = call %struct.TYPE_8__* @intel_get_crtc_new_encoder(%struct.intel_atomic_state* %155, %struct.intel_crtc_state* %156)
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @PORT_B, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %154
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @PORT_D, align 4
  %166 = icmp ugt i32 %164, %165
  br label %167

167:                                              ; preds = %163, %154
  %168 = phi i1 [ true, %154 ], [ %166, %163 ]
  %169 = zext i1 %168 to i32
  %170 = call i32 @WARN_ON(i32 %169)
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @TRANS_DP_PORT_SEL(i32 %171)
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @I915_WRITE(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %167, %100, %86
  %179 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %180 = call i32 @ironlake_enable_pch_transcoder(%struct.intel_crtc_state* %179)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @assert_pch_transcoder_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @ivybridge_update_fdi_bc_bifurcation(%struct.intel_crtc_state*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FDI_RX_TUSIZE1(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPE_DATA_M1(i32) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @TRANS_DPLL_ENABLE(i32) #1

declare dso_local i32 @TRANS_DPLLB_SEL(i32) #1

declare dso_local i64 @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_enable_shared_dpll(%struct.intel_crtc_state*) #1

declare dso_local i32 @assert_panel_unlocked(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ironlake_pch_transcoder_set_timings(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_fdi_normal_train(%struct.intel_crtc*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @TRANS_DP_CTL(i32) #1

declare dso_local %struct.TYPE_8__* @intel_get_crtc_new_encoder(%struct.intel_atomic_state*, %struct.intel_crtc_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @TRANS_DP_PORT_SEL(i32) #1

declare dso_local i32 @ironlake_enable_pch_transcoder(%struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
