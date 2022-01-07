; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_xfer_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_xfer_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_chan = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.virt_dma_desc = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_edma_xfer_desc(%struct.fsl_edma_chan* %0) #0 {
  %2 = alloca %struct.fsl_edma_chan*, align 8
  %3 = alloca %struct.virt_dma_desc*, align 8
  store %struct.fsl_edma_chan* %0, %struct.fsl_edma_chan** %2, align 8
  %4 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %4, i32 0, i32 3
  %6 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %5)
  store %struct.virt_dma_desc* %6, %struct.virt_dma_desc** %3, align 8
  %7 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %8 = icmp ne %struct.virt_dma_desc* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %3, align 8
  %12 = call %struct.TYPE_4__* @to_fsl_edma_desc(%struct.virt_dma_desc* %11)
  %13 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %14 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %13, i32 0, i32 2
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %16 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fsl_edma_set_tcd_regs(%struct.fsl_edma_chan* %15, i32 %23)
  %25 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %26 = call i32 @fsl_edma_enable_request(%struct.fsl_edma_chan* %25)
  %27 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %28 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local %struct.TYPE_4__* @to_fsl_edma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @fsl_edma_set_tcd_regs(%struct.fsl_edma_chan*, i32) #1

declare dso_local i32 @fsl_edma_enable_request(%struct.fsl_edma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
