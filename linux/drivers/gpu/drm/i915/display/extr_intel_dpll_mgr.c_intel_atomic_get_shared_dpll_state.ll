; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_atomic_get_shared_dpll_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_atomic_get_shared_dpll_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_shared_dpll_state = type { i32 }
%struct.drm_atomic_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_atomic_state = type { i32, %struct.intel_shared_dpll_state* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_shared_dpll_state* (%struct.drm_atomic_state*)* @intel_atomic_get_shared_dpll_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_shared_dpll_state* @intel_atomic_get_shared_dpll_state(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.intel_atomic_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %4 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %5 = call %struct.intel_atomic_state* @to_intel_atomic_state(%struct.drm_atomic_state* %4)
  store %struct.intel_atomic_state* %5, %struct.intel_atomic_state** %3, align 8
  %6 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %7 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @drm_modeset_is_locked(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %17 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %22 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %24 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @to_i915(%struct.TYPE_4__* %25)
  %27 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %28 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %27, i32 0, i32 1
  %29 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %28, align 8
  %30 = call i32 @intel_atomic_duplicate_dpll_state(i32 %26, %struct.intel_shared_dpll_state* %29)
  br label %31

31:                                               ; preds = %20, %1
  %32 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %33 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %32, i32 0, i32 1
  %34 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %33, align 8
  ret %struct.intel_shared_dpll_state* %34
}

declare dso_local %struct.intel_atomic_state* @to_intel_atomic_state(%struct.drm_atomic_state*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_modeset_is_locked(i32*) #1

declare dso_local i32 @intel_atomic_duplicate_dpll_state(i32, %struct.intel_shared_dpll_state*) #1

declare dso_local i32 @to_i915(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
