; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i8xx_compute_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i8xx_compute_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__, %struct.dpll }
%struct.TYPE_4__ = type { i32 }
%struct.dpll = type { i32, i32 }
%struct.drm_i915_private = type { i32 }

@DPLL_VGA_MODE_DIS = common dso_local global i32 0, align 4
@INTEL_OUTPUT_LVDS = common dso_local global i32 0, align 4
@DPLL_FPA01_P1_POST_DIV_SHIFT = common dso_local global i32 0, align 4
@PLL_P1_DIVIDE_BY_TWO = common dso_local global i32 0, align 4
@PLL_P2_DIVIDE_BY_4 = common dso_local global i32 0, align 4
@INTEL_OUTPUT_DVO = common dso_local global i32 0, align 4
@DPLL_DVO_2X_MODE = common dso_local global i32 0, align 4
@PLLB_REF_INPUT_SPREADSPECTRUMIN = common dso_local global i32 0, align 4
@PLL_REF_INPUT_DREFCLK = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.dpll*)* @i8xx_compute_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8xx_compute_dpll(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1, %struct.dpll* %2) #0 {
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.dpll*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpll*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  store %struct.dpll* %2, %struct.dpll** %6, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %16 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %8, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 1
  store %struct.dpll* %18, %struct.dpll** %10, align 8
  %19 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %21 = load %struct.dpll*, %struct.dpll** %6, align 8
  %22 = call i32 @i9xx_update_pll_dividers(%struct.intel_crtc* %19, %struct.intel_crtc_state* %20, %struct.dpll* %21)
  %23 = load i32, i32* @DPLL_VGA_MODE_DIS, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %26 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load %struct.dpll*, %struct.dpll** %10, align 8
  %30 = getelementptr inbounds %struct.dpll, %struct.dpll* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  %34 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %66

38:                                               ; preds = %3
  %39 = load %struct.dpll*, %struct.dpll** %10, align 8
  %40 = getelementptr inbounds %struct.dpll, %struct.dpll* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @PLL_P1_DIVIDE_BY_TWO, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %56

47:                                               ; preds = %38
  %48 = load %struct.dpll*, %struct.dpll** %10, align 8
  %49 = getelementptr inbounds %struct.dpll, %struct.dpll* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 2
  %52 = load i32, i32* @DPLL_FPA01_P1_POST_DIV_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %47, %43
  %57 = load %struct.dpll*, %struct.dpll** %10, align 8
  %58 = getelementptr inbounds %struct.dpll, %struct.dpll* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @PLL_P2_DIVIDE_BY_4, align 4
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = call i64 @IS_I830(%struct.drm_i915_private* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %72 = load i32, i32* @INTEL_OUTPUT_DVO, align 4
  %73 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70, %66
  %76 = load i32, i32* @DPLL_DVO_2X_MODE, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %81 = load i32, i32* @INTEL_OUTPUT_LVDS, align 4
  %82 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %86 = call i64 @intel_panel_use_ssc(%struct.drm_i915_private* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @PLLB_REF_INPUT_SPREADSPECTRUMIN, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %9, align 4
  br label %96

92:                                               ; preds = %84, %79
  %93 = load i32, i32* @PLL_REF_INPUT_DREFCLK, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %102 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @i9xx_update_pll_dividers(%struct.intel_crtc*, %struct.intel_crtc_state*, %struct.dpll*) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local i64 @IS_I830(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_panel_use_ssc(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
