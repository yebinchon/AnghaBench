; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.fsl_edma_chan = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_edma_resume(%struct.dma_chan* %0) #0 {
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
  %13 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %18 = call i32 @fsl_edma_enable_request(%struct.fsl_edma_chan* %17)
  %19 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %20 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret i32 0
}

declare dso_local %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fsl_edma_enable_request(%struct.fsl_edma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
