; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_pll_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_ddi_pll_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_dpll_hw_state = type { i32, i8* }

@POWER_DOMAIN_DISPLAY_CORE = common dso_local global i32 0, align 4
@PLL_ENABLE = common dso_local global i32 0, align 4
@DPLL_CFGCR0_HDMI_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)* @cnl_ddi_pll_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnl_ddi_pll_get_hw_state(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1, %struct.intel_dpll_hw_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_shared_dpll*, align 8
  %7 = alloca %struct.intel_dpll_hw_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %6, align 8
  store %struct.intel_dpll_hw_state* %2, %struct.intel_dpll_hw_state** %7, align 8
  %12 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %13 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %19 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

23:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @CNL_DPLL_ENABLE(i32 %24)
  %26 = call i8* @I915_READ(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PLL_ENABLE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %52

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @CNL_DPLL_CFGCR0(i32 %34)
  %36 = call i8* @I915_READ(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %7, align 8
  %40 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @DPLL_CFGCR0_HDMI_MODE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @CNL_DPLL_CFGCR1(i32 %46)
  %48 = call i8* @I915_READ(i32 %47)
  %49 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %7, align 8
  %50 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %45, %33
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %54 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @intel_display_power_put(%struct.drm_i915_private* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @CNL_DPLL_ENABLE(i32) #1

declare dso_local i32 @CNL_DPLL_CFGCR0(i32) #1

declare dso_local i32 @CNL_DPLL_CFGCR1(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
