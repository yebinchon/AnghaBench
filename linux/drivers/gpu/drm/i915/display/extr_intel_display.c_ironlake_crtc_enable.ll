; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_crtc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_crtc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_atomic_state = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* }
%struct.intel_crtc = type { i32, i32 }

@M1_N1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.intel_atomic_state*)* @ironlake_crtc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_crtc_enable(%struct.intel_crtc_state* %0, %struct.intel_atomic_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.intel_atomic_state* %1, %struct.intel_atomic_state** %4, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  store %struct.drm_crtc* %13, %struct.drm_crtc** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %20 = call %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc* %19)
  store %struct.intel_crtc* %20, %struct.intel_crtc** %8, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %25 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %159

30:                                               ; preds = %2
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %31, i32 %32, i32 0)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %34, i32 %35, i32 0)
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %43 = call i32 @intel_prepare_shared_dpll(%struct.intel_crtc_state* %42)
  br label %44

44:                                               ; preds = %41, %30
  %45 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %46 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %50 = load i32, i32* @M1_N1, align 4
  %51 = call i32 @intel_dp_set_m_n(%struct.intel_crtc_state* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %54 = call i32 @intel_set_pipe_timings(%struct.intel_crtc_state* %53)
  %55 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %56 = call i32 @intel_set_pipe_src_size(%struct.intel_crtc_state* %55)
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %64 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %63, i32 0, i32 1
  %65 = call i32 @intel_cpu_transcoder_set_m_n(%struct.intel_crtc_state* %62, i32* %64, i32* null)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %68 = call i32 @ironlake_set_pipeconf(%struct.intel_crtc_state* %67)
  %69 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %70 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %73 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %74 = call i32 @intel_encoders_pre_enable(%struct.intel_crtc* %71, %struct.intel_crtc_state* %72, %struct.intel_atomic_state* %73)
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %81 = call i32 @ironlake_fdi_pll_enable(%struct.intel_crtc_state* %80)
  br label %89

82:                                               ; preds = %66
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @assert_fdi_tx_disabled(%struct.drm_i915_private* %83, i32 %84)
  %86 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @assert_fdi_rx_disabled(%struct.drm_i915_private* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %91 = call i32 @ironlake_pfit_enable(%struct.intel_crtc_state* %90)
  %92 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %93 = call i32 @intel_color_load_luts(%struct.intel_crtc_state* %92)
  %94 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %95 = call i32 @intel_color_commit(%struct.intel_crtc_state* %94)
  %96 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %97 = call i32 @intel_disable_primary_plane(%struct.intel_crtc_state* %96)
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %100, align 8
  %102 = icmp ne i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %89
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %105 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)*, i32 (%struct.intel_atomic_state*, %struct.intel_crtc_state*)** %106, align 8
  %108 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %109 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %110 = call i32 %107(%struct.intel_atomic_state* %108, %struct.intel_crtc_state* %109)
  br label %111

111:                                              ; preds = %103, %89
  %112 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %113 = call i32 @intel_enable_pipe(%struct.intel_crtc_state* %112)
  %114 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %115 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %120 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %121 = call i32 @ironlake_pch_enable(%struct.intel_atomic_state* %119, %struct.intel_crtc_state* %120)
  br label %122

122:                                              ; preds = %118, %111
  %123 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %124 = call i32 @assert_vblank_disabled(%struct.drm_crtc* %123)
  %125 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %126 = call i32 @intel_crtc_vblank_on(%struct.intel_crtc_state* %125)
  %127 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %128 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %129 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %130 = call i32 @intel_encoders_enable(%struct.intel_crtc* %127, %struct.intel_crtc_state* %128, %struct.intel_atomic_state* %129)
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %132 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %122
  %135 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %136 = load %struct.intel_crtc*, %struct.intel_crtc** %8, align 8
  %137 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @cpt_verify_modeset(%struct.drm_device* %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %122
  %141 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %142 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %146, i32 %147)
  %149 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %149, i32 %150)
  br label %152

152:                                              ; preds = %145, %140
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private* %153, i32 %154, i32 1)
  %156 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private* %156, i32 %157, i32 1)
  br label %159

159:                                              ; preds = %152, %29
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crtc* @to_intel_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @intel_set_cpu_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_set_pch_fifo_underrun_reporting(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_prepare_shared_dpll(%struct.intel_crtc_state*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_dp_set_m_n(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_set_pipe_timings(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_set_pipe_src_size(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_cpu_transcoder_set_m_n(%struct.intel_crtc_state*, i32*, i32*) #1

declare dso_local i32 @ironlake_set_pipeconf(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_pre_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i32 @ironlake_fdi_pll_enable(%struct.intel_crtc_state*) #1

declare dso_local i32 @assert_fdi_tx_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @assert_fdi_rx_disabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @ironlake_pfit_enable(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_load_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_color_commit(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_disable_primary_plane(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_enable_pipe(%struct.intel_crtc_state*) #1

declare dso_local i32 @ironlake_pch_enable(%struct.intel_atomic_state*, %struct.intel_crtc_state*) #1

declare dso_local i32 @assert_vblank_disabled(%struct.drm_crtc*) #1

declare dso_local i32 @intel_crtc_vblank_on(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_encoders_enable(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.intel_atomic_state*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

declare dso_local i32 @cpt_verify_modeset(%struct.drm_device*, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
