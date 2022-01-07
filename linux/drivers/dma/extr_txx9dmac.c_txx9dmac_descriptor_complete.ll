; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_descriptor_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_txx9dmac.c_txx9dmac_descriptor_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txx9dmac_chan = type { i32, i32 }
%struct.txx9dmac_desc = type { i32, i32, %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }
%struct.dmaengine_desc_callback = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"descriptor %u %p complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txx9dmac_chan*, %struct.txx9dmac_desc*)* @txx9dmac_descriptor_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txx9dmac_descriptor_complete(%struct.txx9dmac_chan* %0, %struct.txx9dmac_desc* %1) #0 {
  %3 = alloca %struct.txx9dmac_chan*, align 8
  %4 = alloca %struct.txx9dmac_desc*, align 8
  %5 = alloca %struct.dmaengine_desc_callback, align 4
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.txx9dmac_chan* %0, %struct.txx9dmac_chan** %3, align 8
  store %struct.txx9dmac_desc* %1, %struct.txx9dmac_desc** %4, align 8
  %7 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %8 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %7, i32 0, i32 2
  store %struct.dma_async_tx_descriptor* %8, %struct.dma_async_tx_descriptor** %6, align 8
  %9 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %10 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %9, i32 0, i32 1
  %11 = call i32 @chan2dev(i32* %10)
  %12 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %13 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %16 = call i32 @dev_vdbg(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.txx9dmac_desc* %15)
  %17 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %18 = call i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor* %17)
  %19 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %20 = call i32 @dmaengine_desc_get_callback(%struct.dma_async_tx_descriptor* %19, %struct.dmaengine_desc_callback* %5)
  %21 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %22 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %23 = call i32 @txx9dmac_sync_desc_for_cpu(%struct.txx9dmac_chan* %21, %struct.txx9dmac_desc* %22)
  %24 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %25 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %24, i32 0, i32 1
  %26 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %27 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %26, i32 0, i32 0
  %28 = call i32 @list_splice_init(i32* %25, i32* %27)
  %29 = load %struct.txx9dmac_desc*, %struct.txx9dmac_desc** %4, align 8
  %30 = getelementptr inbounds %struct.txx9dmac_desc, %struct.txx9dmac_desc* %29, i32 0, i32 0
  %31 = load %struct.txx9dmac_chan*, %struct.txx9dmac_chan** %3, align 8
  %32 = getelementptr inbounds %struct.txx9dmac_chan, %struct.txx9dmac_chan* %31, i32 0, i32 0
  %33 = call i32 @list_move(i32* %30, i32* %32)
  %34 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %35 = call i32 @dma_descriptor_unmap(%struct.dma_async_tx_descriptor* %34)
  %36 = call i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback* %5, i32* null)
  %37 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %38 = call i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor* %37)
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, %struct.txx9dmac_desc*) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dmaengine_desc_get_callback(%struct.dma_async_tx_descriptor*, %struct.dmaengine_desc_callback*) #1

declare dso_local i32 @txx9dmac_sync_desc_for_cpu(%struct.txx9dmac_chan*, %struct.txx9dmac_desc*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @dma_descriptor_unmap(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback*, i32*) #1

declare dso_local i32 @dma_run_dependencies(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
