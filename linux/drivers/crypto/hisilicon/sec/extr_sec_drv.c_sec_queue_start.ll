; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i64, i64, i32 }

@SEC_Q_INIT_AND_STAT_CLEAR = common dso_local global i32 0, align 4
@SEC_Q_INIT_REG = common dso_local global i64 0, align 8
@SEC_QUEUE_ENB_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_queue*)* @sec_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_queue_start(%struct.sec_queue* %0) #0 {
  %2 = alloca %struct.sec_queue*, align 8
  store %struct.sec_queue* %0, %struct.sec_queue** %2, align 8
  %3 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %4 = call i32 @sec_queue_irq_enable(%struct.sec_queue* %3)
  %5 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %6 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @enable_irq(i32 %7)
  %9 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %10 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @SEC_Q_INIT_AND_STAT_CLEAR, align 4
  %12 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %13 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SEC_Q_INIT_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel_relaxed(i32 %11, i64 %16)
  %18 = load %struct.sec_queue*, %struct.sec_queue** %2, align 8
  %19 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SEC_QUEUE_ENB_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 1, i64 %22)
  ret void
}

declare dso_local i32 @sec_queue_irq_enable(%struct.sec_queue*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
