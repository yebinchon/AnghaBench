; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_mark_nosync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c_dm_rh_mark_nosync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region_hash = type { i32, i32, i32, %struct.dm_dirty_log* }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_dirty_log*, i32, i32)* }
%struct.bio = type { i32 }
%struct.dm_region = type { i64, i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@DM_RH_RECOVERING = common dso_local global i64 0, align 8
@DM_RH_NOSYNC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_rh_mark_nosync(%struct.dm_region_hash* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dm_dirty_log*, align 8
  %7 = alloca %struct.dm_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %10 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %11 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %10, i32 0, i32 3
  %12 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %11, align 8
  store %struct.dm_dirty_log* %12, %struct.dm_dirty_log** %6, align 8
  %13 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = call i32 @dm_rh_bio_to_region(%struct.dm_region_hash* %13, %struct.bio* %14)
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @REQ_PREFLUSH, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %24 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.bio*, %struct.bio** %4, align 8
  %27 = call i64 @bio_op(%struct.bio* %26)
  %28 = load i64, i64* @REQ_OP_DISCARD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %90

31:                                               ; preds = %25
  %32 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  %33 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dm_dirty_log*, i32, i32)*, i32 (%struct.dm_dirty_log*, i32, i32)** %35, align 8
  %37 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 %36(%struct.dm_dirty_log* %37, i32 %38, i32 0)
  %40 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %41 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %40, i32 0, i32 2
  %42 = call i32 @read_lock(i32* %41)
  %43 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.dm_region* @__rh_find(%struct.dm_region_hash* %43, i32 %44)
  store %struct.dm_region* %45, %struct.dm_region** %7, align 8
  %46 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %47 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %46, i32 0, i32 2
  %48 = call i32 @read_unlock(i32* %47)
  %49 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %50 = icmp ne %struct.dm_region* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %55 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %54, i32 0, i32 1
  %56 = call i32 @list_empty(i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %62 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %61, i32 0, i32 1
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %66 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DM_RH_RECOVERING, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = load i64, i64* @DM_RH_NOSYNC, align 8
  %72 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %73 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %75 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %74, i32 0, i32 1
  %76 = call i32 @list_empty(i32* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %82 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %81, i32 0, i32 1
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %31
  %88 = load %struct.dm_region*, %struct.dm_region** %7, align 8
  %89 = call i32 @complete_resync_work(%struct.dm_region* %88, i32 0)
  br label %90

90:                                               ; preds = %22, %30, %87, %31
  ret void
}

declare dso_local i32 @dm_rh_bio_to_region(%struct.dm_region_hash*, %struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.dm_region* @__rh_find(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete_resync_work(%struct.dm_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
