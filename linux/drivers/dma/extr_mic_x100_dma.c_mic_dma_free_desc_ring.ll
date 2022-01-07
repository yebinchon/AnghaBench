; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_free_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_free_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_chan = type { i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MIC_DMA_DESC_RX_SIZE = common dso_local global i32 0, align 4
@MIC_DMA_ALIGN_BYTES = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_dma_chan*)* @mic_dma_free_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_dma_free_desc_ring(%struct.mic_dma_chan* %0) #0 {
  %2 = alloca %struct.mic_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %2, align 8
  %4 = load i32, i32* @MIC_DMA_DESC_RX_SIZE, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @vfree(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MIC_DMA_ALIGN_BYTES, align 4
  %14 = call i32 @ALIGN(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %16 = call %struct.TYPE_2__* @to_mbus_device(%struct.mic_dma_chan* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %23 = call i32 @dma_unmap_single(i32* %17, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %25 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  ret void
}

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_mbus_device(%struct.mic_dma_chan*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
