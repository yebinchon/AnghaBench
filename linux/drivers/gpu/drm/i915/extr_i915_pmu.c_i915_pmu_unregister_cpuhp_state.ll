; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_unregister_cpuhp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_unregister_cpuhp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_pmu = type { i32 }

@cpuhp_slot = common dso_local global i64 0, align 8
@CPUHP_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_pmu*)* @i915_pmu_unregister_cpuhp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_pmu_unregister_cpuhp_state(%struct.i915_pmu* %0) #0 {
  %2 = alloca %struct.i915_pmu*, align 8
  store %struct.i915_pmu* %0, %struct.i915_pmu** %2, align 8
  %3 = load i64, i64* @cpuhp_slot, align 8
  %4 = load i64, i64* @CPUHP_INVALID, align 8
  %5 = icmp eq i64 %3, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load i64, i64* @cpuhp_slot, align 8
  %9 = load %struct.i915_pmu*, %struct.i915_pmu** %2, align 8
  %10 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %9, i32 0, i32 0
  %11 = call i32 @cpuhp_state_remove_instance(i64 %8, i32* %10)
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i64, i64* @cpuhp_slot, align 8
  %14 = call i32 @cpuhp_remove_multi_state(i64 %13)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpuhp_state_remove_instance(i64, i32*) #1

declare dso_local i32 @cpuhp_remove_multi_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
