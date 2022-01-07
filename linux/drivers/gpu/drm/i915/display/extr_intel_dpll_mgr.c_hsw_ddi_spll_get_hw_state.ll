; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_spll_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_spll_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { i32 }
%struct.intel_dpll_hw_state = type { i32 }

@POWER_DOMAIN_DISPLAY_CORE = common dso_local global i32 0, align 4
@SPLL_CTL = common dso_local global i32 0, align 4
@SPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)* @hsw_ddi_spll_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_ddi_spll_get_hw_state(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1, %struct.intel_dpll_hw_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_shared_dpll*, align 8
  %7 = alloca %struct.intel_dpll_hw_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %6, align 8
  store %struct.intel_dpll_hw_state* %2, %struct.intel_dpll_hw_state** %7, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %11 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %12 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load i32, i32* @SPLL_CTL, align 4
  %18 = call i32 @I915_READ(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %7, align 8
  %21 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %23 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @intel_display_power_put(%struct.drm_i915_private* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SPLL_PLL_ENABLE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %16, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
