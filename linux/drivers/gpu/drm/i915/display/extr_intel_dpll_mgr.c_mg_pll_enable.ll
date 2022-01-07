; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_mg_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_mg_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @mg_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_pll_enable(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %6 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %7 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @icl_pll_id_to_tc_port(i32 %10)
  %12 = call i32 @MG_PLL_ENABLE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @icl_pll_power_enable(%struct.drm_i915_private* %13, %struct.intel_shared_dpll* %14, i32 %15)
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %19 = call i32 @icl_mg_pll_write(%struct.drm_i915_private* %17, %struct.intel_shared_dpll* %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @icl_pll_enable(%struct.drm_i915_private* %20, %struct.intel_shared_dpll* %21, i32 %22)
  ret void
}

declare dso_local i32 @MG_PLL_ENABLE(i32) #1

declare dso_local i32 @icl_pll_id_to_tc_port(i32) #1

declare dso_local i32 @icl_pll_power_enable(%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32) #1

declare dso_local i32 @icl_mg_pll_write(%struct.drm_i915_private*, %struct.intel_shared_dpll*) #1

declare dso_local i32 @icl_pll_enable(%struct.drm_i915_private*, %struct.intel_shared_dpll*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
