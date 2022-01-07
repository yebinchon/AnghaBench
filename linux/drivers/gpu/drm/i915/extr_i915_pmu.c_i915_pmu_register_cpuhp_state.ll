; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_register_cpuhp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_pmu.c_i915_pmu_register_cpuhp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_pmu = type { i32 }

@CPUHP_AP_ONLINE_DYN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"perf/x86/intel/i915:online\00", align 1
@i915_pmu_cpu_online = common dso_local global i32 0, align 4
@i915_pmu_cpu_offline = common dso_local global i32 0, align 4
@cpuhp_slot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_pmu*)* @i915_pmu_register_cpuhp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_pmu_register_cpuhp_state(%struct.i915_pmu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_pmu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i915_pmu* %0, %struct.i915_pmu** %3, align 8
  %6 = load i32, i32* @CPUHP_AP_ONLINE_DYN, align 4
  %7 = load i32, i32* @i915_pmu_cpu_online, align 4
  %8 = load i32, i32* @i915_pmu_cpu_offline, align 4
  %9 = call i32 @cpuhp_setup_state_multi(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.i915_pmu*, %struct.i915_pmu** %3, align 8
  %18 = getelementptr inbounds %struct.i915_pmu, %struct.i915_pmu* %17, i32 0, i32 0
  %19 = call i32 @cpuhp_state_add_instance(i32 %16, i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @cpuhp_remove_multi_state(i32 %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* @cpuhp_slot, align 4
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %22, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @cpuhp_setup_state_multi(i32, i8*, i32, i32) #1

declare dso_local i32 @cpuhp_state_add_instance(i32, i32*) #1

declare dso_local i32 @cpuhp_remove_multi_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
