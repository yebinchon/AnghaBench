; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.queue_limits = type { i32, i32 }

@_origins_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @snapshot_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snapshot_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_snapshot*, align 8
  %7 = alloca %struct.dm_snapshot*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.dm_snapshot*, %struct.dm_snapshot** %9, align 8
  store %struct.dm_snapshot* %10, %struct.dm_snapshot** %5, align 8
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %12 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %2
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %6, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %7, align 8
  %16 = call i32 @down_read(i32* @_origins_lock)
  %17 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %18 = call i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot* %17, %struct.dm_snapshot** %6, %struct.dm_snapshot** %7, i32* null)
  %19 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  %20 = icmp ne %struct.dm_snapshot* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  %23 = icmp ne %struct.dm_snapshot* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %6, align 8
  store %struct.dm_snapshot* %25, %struct.dm_snapshot** %5, align 8
  br label %26

26:                                               ; preds = %24, %21, %15
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %28 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %33 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %35 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %40 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = call i32 @up_read(i32* @_origins_lock)
  br label %42

42:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot*, %struct.dm_snapshot**, %struct.dm_snapshot**, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
