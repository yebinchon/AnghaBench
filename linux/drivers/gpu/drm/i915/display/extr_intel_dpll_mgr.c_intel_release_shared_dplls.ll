; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_release_shared_dplls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_release_shared_dplls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.drm_i915_private = type { %struct.intel_dpll_mgr* }
%struct.intel_dpll_mgr = type { i32 (%struct.intel_atomic_state.0*, %struct.intel_crtc.1*)* }
%struct.intel_atomic_state.0 = type opaque
%struct.intel_crtc.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_release_shared_dplls(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_dpll_mgr*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %4, align 8
  %7 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %8 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %13, align 8
  store %struct.intel_dpll_mgr* %14, %struct.intel_dpll_mgr** %6, align 8
  %15 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %6, align 8
  %16 = icmp ne %struct.intel_dpll_mgr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %6, align 8
  %20 = getelementptr inbounds %struct.intel_dpll_mgr, %struct.intel_dpll_mgr* %19, i32 0, i32 0
  %21 = load i32 (%struct.intel_atomic_state.0*, %struct.intel_crtc.1*)*, i32 (%struct.intel_atomic_state.0*, %struct.intel_crtc.1*)** %20, align 8
  %22 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %23 = bitcast %struct.intel_atomic_state* %22 to %struct.intel_atomic_state.0*
  %24 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %25 = bitcast %struct.intel_crtc* %24 to %struct.intel_crtc.1*
  %26 = call i32 %21(%struct.intel_atomic_state.0* %23, %struct.intel_crtc.1* %25)
  br label %27

27:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
