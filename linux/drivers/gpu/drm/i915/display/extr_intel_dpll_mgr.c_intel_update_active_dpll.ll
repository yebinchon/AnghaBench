; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_update_active_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_update_active_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_dpll_mgr* }
%struct.intel_dpll_mgr = type { i32 (%struct.intel_atomic_state.0*, %struct.intel_crtc.1*, %struct.intel_encoder*)* }
%struct.intel_atomic_state.0 = type opaque
%struct.intel_crtc.1 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_update_active_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_dpll_mgr*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %4, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %5, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %6, align 8
  %9 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %10 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %15, align 8
  store %struct.intel_dpll_mgr* %16, %struct.intel_dpll_mgr** %8, align 8
  %17 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %8, align 8
  %18 = icmp ne %struct.intel_dpll_mgr* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %34

24:                                               ; preds = %3
  %25 = load %struct.intel_dpll_mgr*, %struct.intel_dpll_mgr** %8, align 8
  %26 = getelementptr inbounds %struct.intel_dpll_mgr, %struct.intel_dpll_mgr* %25, i32 0, i32 0
  %27 = load i32 (%struct.intel_atomic_state.0*, %struct.intel_crtc.1*, %struct.intel_encoder*)*, i32 (%struct.intel_atomic_state.0*, %struct.intel_crtc.1*, %struct.intel_encoder*)** %26, align 8
  %28 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %29 = bitcast %struct.intel_atomic_state* %28 to %struct.intel_atomic_state.0*
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %31 = bitcast %struct.intel_crtc* %30 to %struct.intel_crtc.1*
  %32 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %33 = call i32 %27(%struct.intel_atomic_state.0* %29, %struct.intel_crtc.1* %31, %struct.intel_encoder* %32)
  br label %34

34:                                               ; preds = %24, %23
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
