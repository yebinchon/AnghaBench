; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_process_queued_io_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_process_queued_io_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DM_TYPE_REQUEST_BASED = common dso_local global i64 0, align 8
@DM_TYPE_BIO_BASED = common dso_local global i64 0, align 8
@kmultipathd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multipath*)* @process_queued_io_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_queued_io_list(%struct.multipath* %0) #0 {
  %2 = alloca %struct.multipath*, align 8
  store %struct.multipath* %0, %struct.multipath** %2, align 8
  %3 = load %struct.multipath*, %struct.multipath** %2, align 8
  %4 = getelementptr inbounds %struct.multipath, %struct.multipath* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DM_TYPE_REQUEST_BASED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.multipath*, %struct.multipath** %2, align 8
  %10 = getelementptr inbounds %struct.multipath, %struct.multipath* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dm_table_get_md(i32 %13)
  %15 = call i32 @dm_mq_kick_requeue_list(i32 %14)
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.multipath*, %struct.multipath** %2, align 8
  %18 = getelementptr inbounds %struct.multipath, %struct.multipath* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DM_TYPE_BIO_BASED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32, i32* @kmultipathd, align 4
  %24 = load %struct.multipath*, %struct.multipath** %2, align 8
  %25 = getelementptr inbounds %struct.multipath, %struct.multipath* %24, i32 0, i32 1
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %16
  br label %28

28:                                               ; preds = %27, %8
  ret void
}

declare dso_local i32 @dm_mq_kick_requeue_list(i32) #1

declare dso_local i32 @dm_table_get_md(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
