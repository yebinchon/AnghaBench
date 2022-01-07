; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_get_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_bxt_get_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_encoder = type { i64 }
%struct.intel_crtc_state = type { %struct.intel_shared_dpll*, i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[CRTC:%d:%s] using pre-allocated %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @bxt_get_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_get_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_shared_dpll*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %7, align 8
  %12 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %14 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %12, %struct.intel_crtc* %13)
  store %struct.intel_crtc_state* %14, %struct.intel_crtc_state** %8, align 8
  %15 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %16 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %9, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %21 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %22 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %26 = call i32 @bxt_ddi_hdmi_set_dpll_hw_state(%struct.intel_crtc_state* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %70

29:                                               ; preds = %24, %3
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %31 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %35 = call i32 @bxt_ddi_dp_set_dpll_hw_state(%struct.intel_crtc_state* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %70

38:                                               ; preds = %33, %29
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %40 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call %struct.intel_shared_dpll* @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %43, i32 %44)
  store %struct.intel_shared_dpll* %45, %struct.intel_shared_dpll** %10, align 8
  %46 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %47 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %52 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  %56 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54, i32 %59)
  %61 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %62 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %63 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 1
  %66 = call i32 @intel_reference_shared_dpll(%struct.intel_atomic_state* %61, %struct.intel_crtc* %62, %struct.intel_shared_dpll* %63, i32* %65)
  %67 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %10, align 8
  %68 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %69 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %68, i32 0, i32 0
  store %struct.intel_shared_dpll* %67, %struct.intel_shared_dpll** %69, align 8
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %38, %37, %28
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @bxt_ddi_hdmi_set_dpll_hw_state(%struct.intel_crtc_state*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @bxt_ddi_dp_set_dpll_hw_state(%struct.intel_crtc_state*) #1

declare dso_local %struct.intel_shared_dpll* @intel_get_shared_dpll_by_id(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @intel_reference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_shared_dpll*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
