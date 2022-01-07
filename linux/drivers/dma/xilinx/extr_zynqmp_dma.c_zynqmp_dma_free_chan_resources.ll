; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.zynqmp_dma_chan = type { i32, i32, i32, i32, i32 }

@ZYNQMP_DMA_NUM_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @zynqmp_dma_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_dma_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.zynqmp_dma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.zynqmp_dma_chan* @to_chan(%struct.dma_chan* %5)
  store %struct.zynqmp_dma_chan* %6, %struct.zynqmp_dma_chan** %3, align 8
  %7 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %8 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %7, i32 0, i32 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %12 = call i32 @zynqmp_dma_free_descriptors(%struct.zynqmp_dma_chan* %11)
  %13 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %13, i32 0, i32 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %18 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %21 = call i32 @ZYNQMP_DMA_DESC_SIZE(%struct.zynqmp_dma_chan* %20)
  %22 = mul nsw i32 2, %21
  %23 = load i32, i32* @ZYNQMP_DMA_NUM_DESCS, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dma_free_coherent(i32 %19, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %37 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_runtime_mark_last_busy(i32 %38)
  %40 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %41 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pm_runtime_put_autosuspend(i32 %42)
  ret void
}

declare dso_local %struct.zynqmp_dma_chan* @to_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zynqmp_dma_free_descriptors(%struct.zynqmp_dma_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @ZYNQMP_DMA_DESC_SIZE(%struct.zynqmp_dma_chan*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
