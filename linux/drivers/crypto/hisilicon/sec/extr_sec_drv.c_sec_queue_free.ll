; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i32, i32, %struct.sec_dev_info* }
%struct.sec_dev_info = type { i32, i32, i32 }

@SEC_Q_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No queue %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Queue %d is idle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_queue*)* @sec_queue_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_queue_free(%struct.sec_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_queue*, align 8
  %4 = alloca %struct.sec_dev_info*, align 8
  store %struct.sec_queue* %0, %struct.sec_queue** %3, align 8
  %5 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %6 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %5, i32 0, i32 2
  %7 = load %struct.sec_dev_info*, %struct.sec_dev_info** %6, align 8
  store %struct.sec_dev_info* %7, %struct.sec_dev_info** %4, align 8
  %8 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %9 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SEC_Q_NUM, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %15 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %18 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %25 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %30 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %33 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %51

38:                                               ; preds = %23
  %39 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %40 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %43 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %45 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %49 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %38, %28, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
