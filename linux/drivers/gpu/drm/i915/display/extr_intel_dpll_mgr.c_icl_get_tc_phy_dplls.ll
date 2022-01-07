; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_get_tc_phy_dplls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_get_tc_phy_dplls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_crtc_state = type { %struct.icl_port_dpll* }
%struct.icl_port_dpll = type { i8*, i32 }

@ICL_PORT_DPLL_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Could not calculate TBT PLL state.\0A\00", align 1
@DPLL_ID_ICL_TBTPLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No TBT-ALT PLL found\0A\00", align 1
@ICL_PORT_DPLL_MG_PHY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not calculate MG PHY PLL state.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"No MG PHY PLL found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @icl_get_tc_phy_dplls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_get_tc_phy_dplls(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.intel_crtc_state*, align 8
  %10 = alloca %struct.icl_port_dpll*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %7, align 8
  %12 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %13 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %8, align 8
  %17 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %18 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %19 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %17, %struct.intel_crtc* %18)
  store %struct.intel_crtc_state* %19, %struct.intel_crtc_state** %9, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 0
  %22 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %21, align 8
  %23 = load i64, i64* @ICL_PORT_DPLL_DEFAULT, align 8
  %24 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %22, i64 %23
  store %struct.icl_port_dpll* %24, %struct.icl_port_dpll** %10, align 8
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %26 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %27 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %28 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %27, i32 0, i32 1
  %29 = call i32 @icl_calc_dpll_state(%struct.intel_crtc_state* %25, %struct.intel_encoder* %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

33:                                               ; preds = %3
  %34 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %35 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %36 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %37 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %36, i32 0, i32 1
  %38 = load i32, i32* @DPLL_ID_ICL_TBTPLL, align 4
  %39 = load i32, i32* @DPLL_ID_ICL_TBTPLL, align 4
  %40 = call i8* @intel_find_shared_dpll(%struct.intel_atomic_state* %34, %struct.intel_crtc* %35, i32* %37, i32 %38, i32 %39)
  %41 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %42 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %44 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %33
  %48 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %117

49:                                               ; preds = %33
  %50 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %51 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %52 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %53 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %56 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %55, i32 0, i32 1
  %57 = call i32 @intel_reference_shared_dpll(%struct.intel_atomic_state* %50, %struct.intel_crtc* %51, i8* %54, i32* %56)
  %58 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %59 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %58, i32 0, i32 0
  %60 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %59, align 8
  %61 = load i64, i64* @ICL_PORT_DPLL_MG_PHY, align 8
  %62 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %60, i64 %61
  store %struct.icl_port_dpll* %62, %struct.icl_port_dpll** %10, align 8
  %63 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %64 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %65 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %64, i32 0, i32 1
  %66 = call i32 @icl_calc_mg_pll_state(%struct.intel_crtc_state* %63, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %49
  %69 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %105

70:                                               ; preds = %49
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %72 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %73 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @intel_port_to_tc(%struct.drm_i915_private* %71, i32 %74)
  %76 = call i32 @icl_tc_port_to_pll_id(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %78 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %79 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %80 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %79, i32 0, i32 1
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @intel_find_shared_dpll(%struct.intel_atomic_state* %77, %struct.intel_crtc* %78, i32* %80, i32 %81, i32 %82)
  %84 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %85 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %87 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %70
  %91 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %105

92:                                               ; preds = %70
  %93 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %94 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %95 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %96 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %99 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %98, i32 0, i32 1
  %100 = call i32 @intel_reference_shared_dpll(%struct.intel_atomic_state* %93, %struct.intel_crtc* %94, i8* %97, i32* %99)
  %101 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %102 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %103 = load %struct.intel_encoder*, %struct.intel_encoder** %7, align 8
  %104 = call i32 @icl_update_active_dpll(%struct.intel_atomic_state* %101, %struct.intel_crtc* %102, %struct.intel_encoder* %103)
  store i32 1, i32* %4, align 4
  br label %117

105:                                              ; preds = %90, %68
  %106 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %9, align 8
  %107 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %106, i32 0, i32 0
  %108 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %107, align 8
  %109 = load i64, i64* @ICL_PORT_DPLL_DEFAULT, align 8
  %110 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %108, i64 %109
  store %struct.icl_port_dpll* %110, %struct.icl_port_dpll** %10, align 8
  %111 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %112 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %113 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %10, align 8
  %114 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @intel_unreference_shared_dpll(%struct.intel_atomic_state* %111, %struct.intel_crtc* %112, i8* %115)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %105, %92, %47, %31
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @icl_calc_dpll_state(%struct.intel_crtc_state*, %struct.intel_encoder*, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i8* @intel_find_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i32*, i32, i32) #1

declare dso_local i32 @intel_reference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i8*, i32*) #1

declare dso_local i32 @icl_calc_mg_pll_state(%struct.intel_crtc_state*, i32*) #1

declare dso_local i32 @icl_tc_port_to_pll_id(i32) #1

declare dso_local i32 @intel_port_to_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_update_active_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*) #1

declare dso_local i32 @intel_unreference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
