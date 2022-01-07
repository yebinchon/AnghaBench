; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ads.c_guc_policy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ads.c_guc_policy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guc_policy = type { i64, i32, i32, i32 }

@POLICY_DEFAULT_EXECUTION_QUANTUM_US = common dso_local global i32 0, align 4
@POLICY_DEFAULT_PREEMPTION_TIME_US = common dso_local global i32 0, align 4
@POLICY_DEFAULT_FAULT_TIME_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.guc_policy*)* @guc_policy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_policy_init(%struct.guc_policy* %0) #0 {
  %2 = alloca %struct.guc_policy*, align 8
  store %struct.guc_policy* %0, %struct.guc_policy** %2, align 8
  %3 = load i32, i32* @POLICY_DEFAULT_EXECUTION_QUANTUM_US, align 4
  %4 = load %struct.guc_policy*, %struct.guc_policy** %2, align 8
  %5 = getelementptr inbounds %struct.guc_policy, %struct.guc_policy* %4, i32 0, i32 3
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @POLICY_DEFAULT_PREEMPTION_TIME_US, align 4
  %7 = load %struct.guc_policy*, %struct.guc_policy** %2, align 8
  %8 = getelementptr inbounds %struct.guc_policy, %struct.guc_policy* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @POLICY_DEFAULT_FAULT_TIME_US, align 4
  %10 = load %struct.guc_policy*, %struct.guc_policy** %2, align 8
  %11 = getelementptr inbounds %struct.guc_policy, %struct.guc_policy* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load %struct.guc_policy*, %struct.guc_policy** %2, align 8
  %13 = getelementptr inbounds %struct.guc_policy, %struct.guc_policy* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
