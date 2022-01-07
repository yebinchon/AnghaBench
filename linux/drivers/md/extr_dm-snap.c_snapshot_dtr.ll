; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_dtr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, i32, i32, i32, i32, i32*, i32, i32, i64 }

@_origins_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cancelling snapshot handover.\00", align 1
@DM_TRACKED_CHUNK_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @snapshot_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snapshot_dtr(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.dm_snapshot*, %struct.dm_snapshot** %7, align 8
  store %struct.dm_snapshot* %8, %struct.dm_snapshot** %3, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %4, align 8
  store %struct.dm_snapshot* null, %struct.dm_snapshot** %5, align 8
  %9 = call i32 @down_read(i32* @_origins_lock)
  %10 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %11 = call i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot* %10, %struct.dm_snapshot** %4, %struct.dm_snapshot** %5, i32* null)
  %12 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %13 = icmp ne %struct.dm_snapshot* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %16 = icmp ne %struct.dm_snapshot* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %19 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %20 = icmp eq %struct.dm_snapshot* %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %23 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %22, i32 0, i32 7
  %24 = call i32 @down_write(i32* %23)
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %26 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %28 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %27, i32 0, i32 7
  %29 = call i32 @up_write(i32* %28)
  %30 = call i32 @DMERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %21, %17, %14, %1
  %32 = call i32 @up_read(i32* @_origins_lock)
  %33 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %34 = call i64 @dm_target_is_snapshot_merge(%struct.dm_target* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %38 = call i32 @stop_merge(%struct.dm_snapshot* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %41 = call i32 @unregister_snapshot(%struct.dm_snapshot* %40)
  br label %42

42:                                               ; preds = %47, %39
  %43 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %44 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %43, i32 0, i32 6
  %45 = call i64 @atomic_read(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @msleep(i32 1)
  br label %42

49:                                               ; preds = %42
  %50 = call i32 (...) @smp_mb()
  %51 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %52 = call i32 @__free_exceptions(%struct.dm_snapshot* %51)
  %53 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %54 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %53, i32 0, i32 4
  %55 = call i32 @mempool_exit(i32* %54)
  %56 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %57 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dm_exception_store_destroy(i32 %58)
  %60 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %61 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %62 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dm_put_device(%struct.dm_target* %60, i32 %63)
  %65 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %66 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %67 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dm_put_device(%struct.dm_target* %65, i32 %68)
  %70 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %71 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @WARN_ON(i32 %72)
  %74 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %75 = call i32 @kfree(%struct.dm_snapshot* %74)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @__find_snapshots_sharing_cow(%struct.dm_snapshot*, %struct.dm_snapshot**, %struct.dm_snapshot**, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @dm_target_is_snapshot_merge(%struct.dm_target*) #1

declare dso_local i32 @stop_merge(%struct.dm_snapshot*) #1

declare dso_local i32 @unregister_snapshot(%struct.dm_snapshot*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @__free_exceptions(%struct.dm_snapshot*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @dm_exception_store_destroy(i32) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.dm_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
