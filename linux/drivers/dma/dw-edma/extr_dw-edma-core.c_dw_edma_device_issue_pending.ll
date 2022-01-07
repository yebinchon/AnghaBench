; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-core.c_dw_edma_device_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dw_edma_chan = type { i64, i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@EDMA_REQ_NONE = common dso_local global i64 0, align 8
@EDMA_ST_IDLE = common dso_local global i64 0, align 8
@EDMA_ST_BUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @dw_edma_device_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_edma_device_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.dw_edma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan* %5)
  store %struct.dw_edma_chan* %6, %struct.dw_edma_chan** %3, align 8
  %7 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EDMA_REQ_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %24 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EDMA_ST_IDLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %30 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %29, i32 0, i32 2
  %31 = call i64 @vchan_issue_pending(%struct.TYPE_2__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* @EDMA_ST_BUSY, align 8
  %35 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %38 = call i32 @dw_edma_start_transfer(%struct.dw_edma_chan* %37)
  br label %39

39:                                               ; preds = %33, %28, %22, %16, %1
  %40 = load %struct.dw_edma_chan*, %struct.dw_edma_chan** %3, align 8
  %41 = getelementptr inbounds %struct.dw_edma_chan, %struct.dw_edma_chan* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local %struct.dw_edma_chan* @dchan2dw_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @dw_edma_start_transfer(%struct.dw_edma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
