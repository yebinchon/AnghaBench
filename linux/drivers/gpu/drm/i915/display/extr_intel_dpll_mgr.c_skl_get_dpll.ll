; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_get_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_get_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.intel_shared_dpll*, i32 }
%struct.intel_shared_dpll = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Could not get HDMI pll dividers.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not set DP dpll HW state.\0A\00", align 1
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@DPLL_ID_SKL_DPLL0 = common dso_local global i32 0, align 4
@DPLL_ID_SKL_DPLL1 = common dso_local global i32 0, align 4
@DPLL_ID_SKL_DPLL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @skl_get_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_get_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca %struct.intel_shared_dpll*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %7, align 8
  %11 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %13 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %11, %struct.intel_crtc* %12)
  store %struct.intel_crtc_state* %13, %struct.intel_crtc_state** %8, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %15 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %16 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %20 = call i32 @skl_ddi_hdmi_pll_dividers(%struct.intel_crtc_state* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %75

25:                                               ; preds = %18
  br label %40

26:                                               ; preds = %3
  %27 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %28 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %32 = call i32 @skl_ddi_dp_set_dpll_hw_state(%struct.intel_crtc_state* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %75

37:                                               ; preds = %30
  br label %39

38:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %75

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %25
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %42 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %43 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %49 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %48, i32 0, i32 1
  %50 = load i32, i32* @DPLL_ID_SKL_DPLL0, align 4
  %51 = load i32, i32* @DPLL_ID_SKL_DPLL0, align 4
  %52 = call %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state* %46, %struct.intel_crtc* %47, i32* %49, i32 %50, i32 %51)
  store %struct.intel_shared_dpll* %52, %struct.intel_shared_dpll** %9, align 8
  br label %61

53:                                               ; preds = %40
  %54 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %55 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %56 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %57 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %56, i32 0, i32 1
  %58 = load i32, i32* @DPLL_ID_SKL_DPLL1, align 4
  %59 = load i32, i32* @DPLL_ID_SKL_DPLL3, align 4
  %60 = call %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state* %54, %struct.intel_crtc* %55, i32* %57, i32 %58, i32 %59)
  store %struct.intel_shared_dpll* %60, %struct.intel_shared_dpll** %9, align 8
  br label %61

61:                                               ; preds = %53, %45
  %62 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %9, align 8
  %63 = icmp ne %struct.intel_shared_dpll* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %75

65:                                               ; preds = %61
  %66 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %67 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %68 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %9, align 8
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 1
  %71 = call i32 @intel_reference_shared_dpll(%struct.intel_atomic_state* %66, %struct.intel_crtc* %67, %struct.intel_shared_dpll* %68, i32* %70)
  %72 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %9, align 8
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %74 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %73, i32 0, i32 0
  store %struct.intel_shared_dpll* %72, %struct.intel_shared_dpll** %74, align 8
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %65, %64, %38, %35, %23
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @skl_ddi_hdmi_pll_dividers(%struct.intel_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local i32 @skl_ddi_dp_set_dpll_hw_state(%struct.intel_crtc_state*) #1

declare dso_local %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i32*, i32, i32) #1

declare dso_local i32 @intel_reference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_shared_dpll*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
