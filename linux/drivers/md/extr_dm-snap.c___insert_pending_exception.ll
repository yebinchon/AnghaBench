; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c___insert_pending_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c___insert_pending_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32 }
%struct.dm_snap_pending_exception = type { %struct.TYPE_7__, i64, i32*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_snap_pending_exception* (%struct.dm_snapshot*, %struct.dm_snap_pending_exception*, i32)* @__insert_pending_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_snap_pending_exception* @__insert_pending_exception(%struct.dm_snapshot* %0, %struct.dm_snap_pending_exception* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_snap_pending_exception*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_snap_pending_exception*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %5, align 8
  store %struct.dm_snap_pending_exception* %1, %struct.dm_snap_pending_exception** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %10 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %13 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %12, i32 0, i32 5
  %14 = call i32 @bio_list_init(i32* %13)
  %15 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %16 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %15, i32 0, i32 4
  %17 = call i32 @bio_list_init(i32* %16)
  %18 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %19 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %21 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %23 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %26 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64 (%struct.TYPE_6__*, %struct.TYPE_7__*)*, i64 (%struct.TYPE_6__*, %struct.TYPE_7__*)** %30, align 8
  %32 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %33 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %36 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %35, i32 0, i32 0
  %37 = call i64 %31(%struct.TYPE_6__* %34, %struct.TYPE_7__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %3
  %40 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %41 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %44 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %43)
  store %struct.dm_snap_pending_exception* null, %struct.dm_snap_pending_exception** %4, align 8
  br label %62

45:                                               ; preds = %3
  %46 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %47 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %48 to i64
  %51 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %52 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %54 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %57 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %56, i32 0, i32 0
  %58 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %59 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %58, i32 0, i32 0
  %60 = call i32 @dm_insert_exception(i32* %57, %struct.TYPE_7__* %59)
  %61 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  store %struct.dm_snap_pending_exception* %61, %struct.dm_snap_pending_exception** %4, align 8
  br label %62

62:                                               ; preds = %45, %39
  %63 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %4, align 8
  ret %struct.dm_snap_pending_exception* %63
}

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_pending_exception(%struct.dm_snap_pending_exception*) #1

declare dso_local i32 @dm_insert_exception(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
