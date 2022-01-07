; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_account_end_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_account_end_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cow_threshold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*)* @account_end_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_end_copy(%struct.dm_snapshot* %0) #0 {
  %2 = alloca %struct.dm_snapshot*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %2, align 8
  %3 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %4 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %8 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %15 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %19 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @cow_threshold, align 8
  %22 = icmp sle i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %28 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %27, i32 0, i32 1
  %29 = call i32 @waitqueue_active(%struct.TYPE_3__* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %34 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %33, i32 0, i32 1
  %35 = call i32 @wake_up_locked(%struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %32, %26, %1
  %37 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %38 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @waitqueue_active(%struct.TYPE_3__*) #1

declare dso_local i32 @wake_up_locked(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
