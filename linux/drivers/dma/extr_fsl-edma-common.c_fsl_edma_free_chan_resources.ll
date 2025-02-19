; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.fsl_edma_chan = type { i32*, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_edma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.fsl_edma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan* %5)
  store %struct.fsl_edma_chan* %6, %struct.fsl_edma_chan** %3, align 8
  %7 = load i32, i32* @head, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %15 = call i32 @fsl_edma_disable_request(%struct.fsl_edma_chan* %14)
  %16 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %17 = call i32 @fsl_edma_chan_mux(%struct.fsl_edma_chan* %16, i32 0, i32 0)
  %18 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %20, i32 0, i32 1
  %22 = call i32 @vchan_get_all_descriptors(%struct.TYPE_3__* %21, i32* @head)
  %23 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %24 = call i32 @fsl_edma_unprep_slave_dma(%struct.fsl_edma_chan* %23)
  %25 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %30, i32 0, i32 1
  %32 = call i32 @vchan_dma_desc_free_list(%struct.TYPE_3__* %31, i32* @head)
  %33 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %34 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @dma_pool_destroy(i32* %35)
  %37 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  ret void
}

declare dso_local %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fsl_edma_disable_request(%struct.fsl_edma_chan*) #1

declare dso_local i32 @fsl_edma_chan_mux(%struct.fsl_edma_chan*, i32, i32) #1

declare dso_local i32 @vchan_get_all_descriptors(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @fsl_edma_unprep_slave_dma(%struct.fsl_edma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vchan_dma_desc_free_list(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
