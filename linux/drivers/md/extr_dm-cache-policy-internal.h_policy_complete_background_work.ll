; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-internal.h_policy_complete_background_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-internal.h_policy_complete_background_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { {}* }
%struct.policy_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_policy*, %struct.policy_work*, i32)* @policy_complete_background_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @policy_complete_background_work(%struct.dm_cache_policy* %0, %struct.policy_work* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_cache_policy*, align 8
  %5 = alloca %struct.policy_work*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %4, align 8
  store %struct.policy_work* %1, %struct.policy_work** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %8 = getelementptr inbounds %struct.dm_cache_policy, %struct.dm_cache_policy* %7, i32 0, i32 0
  %9 = bitcast {}** %8 to void (%struct.dm_cache_policy*, %struct.policy_work*, i32)**
  %10 = load void (%struct.dm_cache_policy*, %struct.policy_work*, i32)*, void (%struct.dm_cache_policy*, %struct.policy_work*, i32)** %9, align 8
  %11 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %12 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %13 = load i32, i32* %6, align 4
  call void %10(%struct.dm_cache_policy* %11, %struct.policy_work* %12, i32 %13)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
