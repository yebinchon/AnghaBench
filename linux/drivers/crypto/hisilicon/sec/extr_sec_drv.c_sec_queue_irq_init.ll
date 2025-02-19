; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i32, i32, %struct.sec_dev_info* }
%struct.sec_dev_info = type { i32 }

@sec_isr_handle_th = common dso_local global i32 0, align 4
@sec_isr_handle = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"request irq(%d) failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_queue*)* @sec_queue_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_queue_irq_init(%struct.sec_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_queue*, align 8
  %4 = alloca %struct.sec_dev_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sec_queue* %0, %struct.sec_queue** %3, align 8
  %7 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %8 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %7, i32 0, i32 2
  %9 = load %struct.sec_dev_info*, %struct.sec_dev_info** %8, align 8
  store %struct.sec_dev_info* %9, %struct.sec_dev_info** %4, align 8
  %10 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %11 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @sec_isr_handle_th, align 4
  %15 = load i32, i32* @sec_isr_handle, align 4
  %16 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %17 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %18 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %21 = call i32 @request_threaded_irq(i32 %13, i32 %14, i32 %15, i32 %16, i32 %19, %struct.sec_queue* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.sec_dev_info*, %struct.sec_dev_info** %4, align 8
  %26 = getelementptr inbounds %struct.sec_dev_info, %struct.sec_dev_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @disable_irq(i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i32, %struct.sec_queue*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
