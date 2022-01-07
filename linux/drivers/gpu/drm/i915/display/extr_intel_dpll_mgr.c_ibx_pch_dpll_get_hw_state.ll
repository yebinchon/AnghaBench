; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_ibx_pch_dpll_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_ibx_pch_dpll_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_dpll_hw_state = type { i32, i8*, i8* }

@POWER_DOMAIN_DISPLAY_CORE = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)* @ibx_pch_dpll_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibx_pch_dpll_get_hw_state(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1, %struct.intel_dpll_hw_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_shared_dpll*, align 8
  %7 = alloca %struct.intel_dpll_hw_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %6, align 8
  store %struct.intel_dpll_hw_state* %2, %struct.intel_dpll_hw_state** %7, align 8
  %11 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %12 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %17 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %18 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @PCH_DPLL(i32 %23)
  %25 = call i8* @I915_READ(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %7, align 8
  %29 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @PCH_FP0(i32 %30)
  %32 = call i8* @I915_READ(i32 %31)
  %33 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %7, align 8
  %34 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @PCH_FP1(i32 %35)
  %37 = call i8* @I915_READ(i32 %36)
  %38 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %7, align 8
  %39 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %41 = load i32, i32* @POWER_DOMAIN_DISPLAY_CORE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @intel_display_power_put(%struct.drm_i915_private* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %22, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @PCH_DPLL(i32) #1

declare dso_local i32 @PCH_FP0(i32) #1

declare dso_local i32 @PCH_FP1(i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
