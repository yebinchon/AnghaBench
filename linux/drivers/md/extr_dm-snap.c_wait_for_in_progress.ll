; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_wait_for_in_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_wait_for_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cow_threshold = common dso_local global i64 0, align 8
@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@_origins_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_snapshot*, i32)* @wait_for_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_in_progress(%struct.dm_snapshot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %7 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @cow_threshold, align 8
  %10 = icmp sgt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %16 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %20 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @cow_threshold, align 8
  %23 = icmp sgt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %14
  %28 = load i32, i32* @wait, align 4
  %29 = load i32, i32* @current, align 4
  %30 = call i32 @DECLARE_WAITQUEUE(i32 %28, i32 %29)
  %31 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %32 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %31, i32 0, i32 1
  %33 = call i32 @__add_wait_queue(%struct.TYPE_3__* %32, i32* @wait)
  %34 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %35 = call i32 @__set_current_state(i32 %34)
  %36 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %37 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = call i32 @up_read(i32* @_origins_lock)
  br label %44

44:                                               ; preds = %42, %27
  %45 = call i32 (...) @io_schedule()
  %46 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %47 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %46, i32 0, i32 1
  %48 = call i32 @remove_wait_queue(%struct.TYPE_3__* %47, i32* @wait)
  store i32 0, i32* %3, align 4
  br label %55

49:                                               ; preds = %14
  %50 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %51 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  br label %54

54:                                               ; preds = %49, %2
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @__add_wait_queue(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @remove_wait_queue(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
