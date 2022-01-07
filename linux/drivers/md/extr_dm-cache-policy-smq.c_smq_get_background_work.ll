; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_get_background_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_smq_get_background_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_policy = type { i32 }
%struct.policy_work = type { i32 }
%struct.smq_policy = type { i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_cache_policy*, i32, %struct.policy_work**)* @smq_get_background_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smq_get_background_work(%struct.dm_cache_policy* %0, i32 %1, %struct.policy_work** %2) #0 {
  %4 = alloca %struct.dm_cache_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.policy_work**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.smq_policy*, align 8
  store %struct.dm_cache_policy* %0, %struct.dm_cache_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.policy_work** %2, %struct.policy_work*** %6, align 8
  %10 = load %struct.dm_cache_policy*, %struct.dm_cache_policy** %4, align 8
  %11 = call %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy* %10)
  store %struct.smq_policy* %11, %struct.smq_policy** %9, align 8
  %12 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %13 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %17 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.policy_work**, %struct.policy_work*** %6, align 8
  %20 = call i32 @btracker_issue(i32 %18, %struct.policy_work** %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @clean_target_met(%struct.smq_policy* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %25
  %31 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @queue_writeback(%struct.smq_policy* %31, i32 %32)
  %34 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %35 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.policy_work**, %struct.policy_work*** %6, align 8
  %38 = call i32 @btracker_issue(i32 %36, %struct.policy_work** %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %30, %25
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.smq_policy*, %struct.smq_policy** %9, align 8
  %42 = getelementptr inbounds %struct.smq_policy, %struct.smq_policy* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local %struct.smq_policy* @to_smq_policy(%struct.dm_cache_policy*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @btracker_issue(i32, %struct.policy_work**) #1

declare dso_local i32 @clean_target_met(%struct.smq_policy*, i32) #1

declare dso_local i32 @queue_writeback(%struct.smq_policy*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
