; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_combo_pll_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_combo_pll_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.intel_dpll_hw_state = type { i32 }

@DPLL_ID_EHL_DPLL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)* @combo_pll_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @combo_pll_get_hw_state(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1, %struct.intel_dpll_hw_state* %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  %6 = alloca %struct.intel_dpll_hw_state*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %5, align 8
  store %struct.intel_dpll_hw_state* %2, %struct.intel_dpll_hw_state** %6, align 8
  %8 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %9 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @CNL_DPLL_ENABLE(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %19 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DPLL_ID_EHL_DPLL4, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @MG_PLL_ENABLE(i32 0)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %25, %17, %3
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %30 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @icl_pll_get_hw_state(%struct.drm_i915_private* %28, %struct.intel_shared_dpll* %29, %struct.intel_dpll_hw_state* %30, i32 %31)
  ret i32 %32
}

declare dso_local i32 @CNL_DPLL_ENABLE(i64) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @MG_PLL_ENABLE(i32) #1

declare dso_local i32 @icl_pll_get_hw_state(%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
