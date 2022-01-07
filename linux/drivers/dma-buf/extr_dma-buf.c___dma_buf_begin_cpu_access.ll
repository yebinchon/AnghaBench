; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c___dma_buf_begin_cpu_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-buf.c___dma_buf_begin_cpu_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.dma_resv* }
%struct.dma_resv = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, i32)* @__dma_buf_begin_cpu_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dma_buf_begin_cpu_access(%struct.dma_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_resv*, align 8
  %8 = alloca i64, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DMA_TO_DEVICE, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i1 [ true, %2 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %20 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %19, i32 0, i32 0
  %21 = load %struct.dma_resv*, %struct.dma_resv** %20, align 8
  store %struct.dma_resv* %21, %struct.dma_resv** %7, align 8
  %22 = load %struct.dma_resv*, %struct.dma_resv** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %25 = call i64 @dma_resv_wait_timeout_rcu(%struct.dma_resv* %22, i32 %23, i32 1, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i64, i64* %8, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @dma_resv_wait_timeout_rcu(%struct.dma_resv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
