; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_allocate_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_allocate_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.mic_dma_chan = type { i32, %struct.dma_async_tx_descriptor*, i32 }

@mic_dma_tx_submit_unlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.mic_dma_chan*)* @allocate_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @allocate_tx(%struct.mic_dma_chan* %0) #0 {
  %2 = alloca %struct.mic_dma_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %2, align 8
  %5 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @mic_dma_hw_ring_dec(i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %9, i32 0, i32 1
  %11 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %11, i64 %12
  store %struct.dma_async_tx_descriptor* %13, %struct.dma_async_tx_descriptor** %4, align 8
  %14 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %15 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %16 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %15, i32 0, i32 0
  %17 = call i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor* %14, i32* %16)
  %18 = load i32, i32* @mic_dma_tx_submit_unlock, align 4
  %19 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %20 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  ret %struct.dma_async_tx_descriptor* %21
}

declare dso_local i64 @mic_dma_hw_ring_dec(i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
