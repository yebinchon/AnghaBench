; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_get_shared_dpll_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_get_shared_dpll_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shared_dpll = type { i32 }
%struct.drm_i915_private = type { %struct.intel_shared_dpll* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_shared_dpll* @intel_get_shared_dpll_by_id(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %7, i64 %9
  ret %struct.intel_shared_dpll* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
