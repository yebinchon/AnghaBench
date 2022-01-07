; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_queue_if_no_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_queue_if_no_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MPATHF_SAVED_QUEUE_IF_NO_PATH = common dso_local global i32 0, align 4
@MPATHF_QUEUE_IF_NO_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multipath*, i32, i32)* @queue_if_no_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_if_no_path(%struct.multipath* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.multipath*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.multipath* %0, %struct.multipath** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.multipath*, %struct.multipath** %4, align 8
  %9 = getelementptr inbounds %struct.multipath, %struct.multipath* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @MPATHF_SAVED_QUEUE_IF_NO_PATH, align 4
  %13 = load %struct.multipath*, %struct.multipath** %4, align 8
  %14 = getelementptr inbounds %struct.multipath, %struct.multipath* %13, i32 0, i32 2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @MPATHF_QUEUE_IF_NO_PATH, align 4
  %19 = load %struct.multipath*, %struct.multipath** %4, align 8
  %20 = getelementptr inbounds %struct.multipath, %struct.multipath* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %17, %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi i1 [ true, %17 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assign_bit(i32 %12, i32* %14, i32 %33)
  %35 = load i32, i32* @MPATHF_QUEUE_IF_NO_PATH, align 4
  %36 = load %struct.multipath*, %struct.multipath** %4, align 8
  %37 = getelementptr inbounds %struct.multipath, %struct.multipath* %36, i32 0, i32 2
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @assign_bit(i32 %35, i32* %37, i32 %38)
  %40 = load %struct.multipath*, %struct.multipath** %4, align 8
  %41 = getelementptr inbounds %struct.multipath, %struct.multipath* %40, i32 0, i32 1
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %31
  %47 = load %struct.multipath*, %struct.multipath** %4, align 8
  %48 = getelementptr inbounds %struct.multipath, %struct.multipath* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dm_table_run_md_queue_async(i32 %51)
  %53 = load %struct.multipath*, %struct.multipath** %4, align 8
  %54 = call i32 @process_queued_io_list(%struct.multipath* %53)
  br label %55

55:                                               ; preds = %46, %31
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @assign_bit(i32, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dm_table_run_md_queue_async(i32) #1

declare dso_local i32 @process_queued_io_list(%struct.multipath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
