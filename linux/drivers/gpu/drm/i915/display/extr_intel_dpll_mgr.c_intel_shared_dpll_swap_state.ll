; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_shared_dpll_swap_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_shared_dpll_swap_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32, %struct.intel_shared_dpll_state*, %struct.TYPE_2__ }
%struct.intel_shared_dpll_state = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32, %struct.intel_shared_dpll* }
%struct.intel_shared_dpll = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_shared_dpll_swap_state(%struct.intel_atomic_state* %0) #0 {
  %2 = alloca %struct.intel_atomic_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_shared_dpll*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %2, align 8
  %7 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %2, align 8
  %8 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %2, align 8
  %13 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %12, i32 0, i32 1
  %14 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %13, align 8
  store %struct.intel_shared_dpll_state* %14, %struct.intel_shared_dpll_state** %4, align 8
  %15 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %2, align 8
  %16 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %47

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %30, i64 %32
  store %struct.intel_shared_dpll* %33, %struct.intel_shared_dpll** %6, align 8
  %34 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %35 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %37, i64 %39
  %41 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @swap(i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %21

47:                                               ; preds = %19, %21
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
