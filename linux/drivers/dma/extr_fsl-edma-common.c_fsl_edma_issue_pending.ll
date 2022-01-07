; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.fsl_edma_chan = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_edma_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.fsl_edma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan* %5)
  store %struct.fsl_edma_chan* %6, %struct.fsl_edma_chan** %3, align 8
  %7 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RUNNING, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %45

26:                                               ; preds = %1
  %27 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %28 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %27, i32 0, i32 1
  %29 = call i64 @vchan_issue_pending(%struct.TYPE_2__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %38 = call i32 @fsl_edma_xfer_desc(%struct.fsl_edma_chan* %37)
  br label %39

39:                                               ; preds = %36, %31, %26
  %40 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %20
  ret void
}

declare dso_local %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @vchan_issue_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @fsl_edma_xfer_desc(%struct.fsl_edma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
