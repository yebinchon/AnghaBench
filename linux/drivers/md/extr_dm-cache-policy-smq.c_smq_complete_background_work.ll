; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_complete_background_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_complete_background_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { i32 }
%struct.policy_work = type { i32 }
%struct.smq_policy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_cache_policy*, %struct.policy_work*, i32)* @smq_complete_background_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smq_complete_background_work(%struct.dm_cache_policy* %0, %struct.policy_work* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_cache_policy*, align 8
  %5 = alloca %struct.policy_work*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.smq_policy*, align 8
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %4, align 8
  store %struct.policy_work* %1, %struct.policy_work** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %10 = call %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy* %9)
  store %struct.smq_policy* %10, %struct.smq_policy** %8, align 8
  %11 = load %struct.smq_policy*, %struct.smq_policy** %8, align 8
  %12 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.smq_policy*, %struct.smq_policy** %8, align 8
  %16 = load %struct.policy_work*, %struct.policy_work** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @__complete_background_work(%struct.smq_policy* %15, %struct.policy_work* %16, i32 %17)
  %19 = load %struct.smq_policy*, %struct.smq_policy** %8, align 8
  %20 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__complete_background_work(%struct.smq_policy*, %struct.policy_work*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
