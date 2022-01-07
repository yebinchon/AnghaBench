; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_cached_dev_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_cached_dev_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i32 }

@BACKING_DEV_OFFLINE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%s: device offline for %d seconds\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: disable I/O request due to backing device offline\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cached_dev_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cached_dev_status_update(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cached_dev*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cached_dev*
  store %struct.cached_dev* %6, %struct.cached_dev** %3, align 8
  br label %7

7:                                                ; preds = %57, %1
  %8 = call i32 (...) @kthread_should_stop()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br i1 %17, label %18, label %60

18:                                               ; preds = %16
  %19 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %20 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.request_queue* @bdev_get_queue(i32 %21)
  store %struct.request_queue* %22, %struct.request_queue** %4, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = call i64 @blk_queue_dying(%struct.request_queue* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %28 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %33 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %36 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BACKING_DEV_OFFLINE_TIMEOUT, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %42 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @BACKING_DEV_OFFLINE_TIMEOUT, align 8
  %45 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %44)
  %46 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %52 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = call i32 (...) @smp_mb()
  %54 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %55 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %54, i32 0, i32 2
  %56 = call i32 @bcache_device_stop(%struct.TYPE_2__* %55)
  br label %60

57:                                               ; preds = %34
  %58 = load i32, i32* @HZ, align 4
  %59 = call i32 @schedule_timeout_interruptible(i32 %58)
  br label %7

60:                                               ; preds = %40, %16
  %61 = call i32 (...) @wait_for_kthread_stop()
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i64 @blk_queue_dying(%struct.request_queue*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @bcache_device_stop(%struct.TYPE_2__*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @wait_for_kthread_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
