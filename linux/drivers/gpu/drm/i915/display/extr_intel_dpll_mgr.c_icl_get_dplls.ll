; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_get_dplls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_get_dplls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @icl_get_dplls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_get_dplls(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %7, align 8
  %10 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %11 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %27 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %28 = call i32 @icl_get_combo_phy_dpll(%struct.intel_atomic_state* %25, %struct.intel_crtc* %26, %struct.intel_encoder* %27)
  store i32 %28, i32* %4, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %36 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %37 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %38 = call i32 @icl_get_tc_phy_dplls(%struct.intel_atomic_state* %35, %struct.intel_crtc* %36, %struct.intel_encoder* %37)
  store i32 %38, i32* %4, align 4
  br label %43

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @MISSING_CASE(i32 %41)
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %34, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_get_combo_phy_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_get_tc_phy_dplls(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
