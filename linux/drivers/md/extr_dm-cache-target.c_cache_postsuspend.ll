; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_postsuspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_cache_postsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.cache* }
%struct.cache = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CM_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @cache_postsuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_postsuspend(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.cache*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.cache*, %struct.cache** %5, align 8
  store %struct.cache* %6, %struct.cache** %3, align 8
  %7 = load %struct.cache*, %struct.cache** %3, align 8
  %8 = call i32 @prevent_background_work(%struct.cache* %7)
  %9 = load %struct.cache*, %struct.cache** %3, align 8
  %10 = getelementptr inbounds %struct.cache, %struct.cache* %9, i32 0, i32 3
  %11 = call i32 @atomic_read(i32* %10)
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.cache*, %struct.cache** %3, align 8
  %14 = getelementptr inbounds %struct.cache, %struct.cache* %13, i32 0, i32 2
  %15 = call i32 @cancel_delayed_work(i32* %14)
  %16 = load %struct.cache*, %struct.cache** %3, align 8
  %17 = getelementptr inbounds %struct.cache, %struct.cache* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @flush_workqueue(i32 %18)
  %20 = load %struct.cache*, %struct.cache** %3, align 8
  %21 = getelementptr inbounds %struct.cache, %struct.cache* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.cache*, %struct.cache** %3, align 8
  %26 = call i32 @requeue_deferred_bios(%struct.cache* %25)
  %27 = load %struct.cache*, %struct.cache** %3, align 8
  %28 = call i64 @get_cache_mode(%struct.cache* %27)
  %29 = load i64, i64* @CM_WRITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load %struct.cache*, %struct.cache** %3, align 8
  %33 = call i32 @sync_metadata(%struct.cache* %32)
  br label %34

34:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @prevent_background_work(%struct.cache*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @requeue_deferred_bios(%struct.cache*) #1

declare dso_local i64 @get_cache_mode(%struct.cache*) #1

declare dso_local i32 @sync_metadata(%struct.cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
