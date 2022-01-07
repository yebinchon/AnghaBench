; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_chain_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pch_dma.c_pdc_chain_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_dma_chan = type { i32 }
%struct.pch_dma_desc = type { i32, i32, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.dmaengine_desc_callback = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_dma_chan*, %struct.pch_dma_desc*)* @pdc_chain_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_chain_complete(%struct.pch_dma_chan* %0, %struct.pch_dma_desc* %1) #0 {
  %3 = alloca %struct.pch_dma_chan*, align 8
  %4 = alloca %struct.pch_dma_desc*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  %6 = alloca %struct.dmaengine_desc_callback, align 4
  store %struct.pch_dma_chan* %0, %struct.pch_dma_chan** %3, align 8
  store %struct.pch_dma_desc* %1, %struct.pch_dma_desc** %4, align 8
  %7 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %8 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %7, i32 0, i32 2
  store %struct.dma_async_tx_descriptor* %8, %struct.dma_async_tx_descriptor** %5, align 8
  %9 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %10 = call i32 @dmaengine_desc_get_callback(%struct.dma_async_tx_descriptor* %9, %struct.dmaengine_desc_callback* %6)
  %11 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %12 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %11, i32 0, i32 1
  %13 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %13, i32 0, i32 0
  %15 = call i32 @list_splice_init(i32* %12, i32* %14)
  %16 = load %struct.pch_dma_desc*, %struct.pch_dma_desc** %4, align 8
  %17 = getelementptr inbounds %struct.pch_dma_desc, %struct.pch_dma_desc* %16, i32 0, i32 0
  %18 = load %struct.pch_dma_chan*, %struct.pch_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.pch_dma_chan, %struct.pch_dma_chan* %18, i32 0, i32 0
  %20 = call i32 @list_move(i32* %17, i32* %19)
  %21 = call i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback* %6, i32* null)
  ret void
}

declare dso_local i32 @dmaengine_desc_get_callback(%struct.dma_async_tx_descriptor*, %struct.dmaengine_desc_callback*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
