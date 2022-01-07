; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_alloc_multipath_stage2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_alloc_multipath_stage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i32 }
%struct.multipath = type { i64, i32, i32, i32, i32, i32, i32 }

@DM_TYPE_NONE = common dso_local global i64 0, align 8
@DM_TYPE_REQUEST_BASED = common dso_local global i64 0, align 8
@DM_TYPE_BIO_BASED = common dso_local global i64 0, align 8
@process_queued_bios = common dso_local global i32 0, align 4
@MPATHF_RETAIN_ATTACHED_HW_HANDLER = common dso_local global i32 0, align 4
@MPATHF_QUEUE_IO = common dso_local global i32 0, align 4
@DM_PG_INIT_DELAY_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.multipath*)* @alloc_multipath_stage2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_multipath_stage2(%struct.dm_target* %0, %struct.multipath* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.multipath*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.multipath* %1, %struct.multipath** %4, align 8
  %5 = load %struct.multipath*, %struct.multipath** %4, align 8
  %6 = getelementptr inbounds %struct.multipath, %struct.multipath* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DM_TYPE_NONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i64, i64* @DM_TYPE_REQUEST_BASED, align 8
  %12 = load %struct.multipath*, %struct.multipath** %4, align 8
  %13 = getelementptr inbounds %struct.multipath, %struct.multipath* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.multipath*, %struct.multipath** %4, align 8
  %16 = getelementptr inbounds %struct.multipath, %struct.multipath* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DM_TYPE_BIO_BASED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.multipath*, %struct.multipath** %4, align 8
  %22 = getelementptr inbounds %struct.multipath, %struct.multipath* %21, i32 0, i32 6
  %23 = load i32, i32* @process_queued_bios, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load i32, i32* @MPATHF_RETAIN_ATTACHED_HW_HANDLER, align 4
  %26 = load %struct.multipath*, %struct.multipath** %4, align 8
  %27 = getelementptr inbounds %struct.multipath, %struct.multipath* %26, i32 0, i32 5
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %20, %14
  br label %30

30:                                               ; preds = %29, %10
  %31 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %32 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.multipath*, %struct.multipath** %4, align 8
  %35 = getelementptr inbounds %struct.multipath, %struct.multipath* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dm_table_set_type(i32 %33, i64 %36)
  %38 = load i32, i32* @MPATHF_QUEUE_IO, align 4
  %39 = load %struct.multipath*, %struct.multipath** %4, align 8
  %40 = getelementptr inbounds %struct.multipath, %struct.multipath* %39, i32 0, i32 5
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.multipath*, %struct.multipath** %4, align 8
  %43 = getelementptr inbounds %struct.multipath, %struct.multipath* %42, i32 0, i32 4
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.multipath*, %struct.multipath** %4, align 8
  %46 = getelementptr inbounds %struct.multipath, %struct.multipath* %45, i32 0, i32 3
  %47 = call i32 @atomic_set(i32* %46, i32 0)
  %48 = load i32, i32* @DM_PG_INIT_DELAY_DEFAULT, align 4
  %49 = load %struct.multipath*, %struct.multipath** %4, align 8
  %50 = getelementptr inbounds %struct.multipath, %struct.multipath* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.multipath*, %struct.multipath** %4, align 8
  %52 = getelementptr inbounds %struct.multipath, %struct.multipath* %51, i32 0, i32 1
  %53 = call i32 @init_waitqueue_head(i32* %52)
  ret i32 0
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dm_table_set_type(i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
