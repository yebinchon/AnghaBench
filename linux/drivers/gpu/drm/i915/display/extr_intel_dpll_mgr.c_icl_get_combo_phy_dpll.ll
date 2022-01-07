; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_get_combo_phy_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_get_combo_phy_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.icl_port_dpll* }
%struct.icl_port_dpll = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@ICL_PORT_DPLL_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Could not calculate combo PHY PLL state.\0A\00", align 1
@PORT_A = common dso_local global i32 0, align 4
@DPLL_ID_ICL_DPLL0 = common dso_local global i32 0, align 4
@DPLL_ID_EHL_DPLL4 = common dso_local global i32 0, align 4
@DPLL_ID_ICL_DPLL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No combo PHY PLL found for port %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @icl_get_combo_phy_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_get_combo_phy_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca %struct.icl_port_dpll*, align 8
  %10 = alloca %struct.drm_i915_private*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %7, align 8
  %13 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %15 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %13, %struct.intel_crtc* %14)
  store %struct.intel_crtc_state* %15, %struct.intel_crtc_state** %8, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 0
  %18 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %17, align 8
  %19 = load i64, i64* @ICL_PORT_DPLL_DEFAULT, align 8
  %20 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %18, i64 %19
  store %struct.icl_port_dpll* %20, %struct.icl_port_dpll** %9, align 8
  %21 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %22 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.drm_i915_private* @to_i915(i32 %24)
  store %struct.drm_i915_private* %25, %struct.drm_i915_private** %10, align 8
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %27 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %30 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %31 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %9, align 8
  %32 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %31, i32 0, i32 0
  %33 = call i32 @icl_calc_dpll_state(%struct.intel_crtc_state* %29, %struct.intel_encoder* %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %3
  %36 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %86

37:                                               ; preds = %3
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %10, align 8
  %39 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @PORT_A, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %45, %41, %37
  %47 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %48 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %49 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %9, align 8
  %50 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %49, i32 0, i32 0
  %51 = load i32, i32* @DPLL_ID_ICL_DPLL0, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @DPLL_ID_EHL_DPLL4, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @DPLL_ID_ICL_DPLL1, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = call i32 @intel_find_shared_dpll(%struct.intel_atomic_state* %47, %struct.intel_crtc* %48, i32* %50, i32 %51, i32 %59)
  %61 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %9, align 8
  %62 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %9, align 8
  %64 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %58
  %68 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %69 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @port_name(i32 %70)
  %72 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i32 0, i32* %4, align 4
  br label %86

73:                                               ; preds = %58
  %74 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %75 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %76 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %9, align 8
  %77 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %9, align 8
  %80 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %79, i32 0, i32 0
  %81 = call i32 @intel_reference_shared_dpll(%struct.intel_atomic_state* %74, %struct.intel_crtc* %75, i32 %78, i32* %80)
  %82 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %83 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %84 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %85 = call i32 @icl_update_active_dpll(%struct.intel_atomic_state* %82, %struct.intel_crtc* %83, %struct.intel_encoder* %84)
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %73, %67, %35
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @icl_calc_dpll_state(%struct.intel_crtc_state*, %struct.intel_encoder*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_find_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i32*, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @intel_reference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i32, i32*) #1

declare dso_local i32 @icl_update_active_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
