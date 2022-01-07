; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_alloc_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_alloc_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i32 }
%struct.sec_dev_info = type { i32, %struct.sec_queue*, i32 }

@SEC_Q_NUM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sec_queue* (%struct.sec_dev_info*)* @sec_alloc_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sec_queue* @sec_alloc_queue(%struct.sec_dev_info* %0) #0 {
  %2 = alloca %struct.sec_queue*, align 8
  %3 = alloca %struct.sec_dev_info*, align 8
  %4 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %3, align 8
  %5 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %6 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %44, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @SEC_Q_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %14 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %13, i32 0, i32 1
  %15 = load %struct.sec_queue*, %struct.sec_queue** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %15, i64 %17
  %19 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %43, label %22

22:                                               ; preds = %12
  %23 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %23, i32 0, i32 1
  %25 = load %struct.sec_queue*, %struct.sec_queue** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %25, i64 %27
  %29 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %31 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %35 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %38 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %37, i32 0, i32 1
  %39 = load %struct.sec_queue*, %struct.sec_queue** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %39, i64 %41
  store %struct.sec_queue* %42, %struct.sec_queue** %2, align 8
  br label %54

43:                                               ; preds = %12
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %8

47:                                               ; preds = %8
  %48 = load %struct.sec_dev_info*, %struct.sec_dev_info** %3, align 8
  %49 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.sec_queue* @ERR_PTR(i32 %52)
  store %struct.sec_queue* %53, %struct.sec_queue** %2, align 8
  br label %54

54:                                               ; preds = %47, %22
  %55 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  ret %struct.sec_queue* %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sec_queue* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
