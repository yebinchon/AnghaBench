; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_handle_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_at_hdmac.c_atc_handle_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { i32 }
%struct.at_desc = type { %struct.dma_async_tx_descriptor }
%struct.dma_async_tx_descriptor = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"new cyclic period llp 0x%08x\0A\00", align 1
@DSCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at_dma_chan*)* @atc_handle_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atc_handle_cyclic(%struct.at_dma_chan* %0) #0 {
  %2 = alloca %struct.at_dma_chan*, align 8
  %3 = alloca %struct.at_desc*, align 8
  %4 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.at_dma_chan* %0, %struct.at_dma_chan** %2, align 8
  %5 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %6 = call %struct.at_desc* @atc_first_active(%struct.at_dma_chan* %5)
  store %struct.at_desc* %6, %struct.at_desc** %3, align 8
  %7 = load %struct.at_desc*, %struct.at_desc** %3, align 8
  %8 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %7, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* %8, %struct.dma_async_tx_descriptor** %4, align 8
  %9 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %9, i32 0, i32 0
  %11 = call i32 @chan2dev(i32* %10)
  %12 = load %struct.at_dma_chan*, %struct.at_dma_chan** %2, align 8
  %13 = load i32, i32* @DSCR, align 4
  %14 = call i32 @channel_readl(%struct.at_dma_chan* %12, i32 %13)
  %15 = call i32 @dev_vdbg(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %4, align 8
  %17 = call i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor* %16, i32* null)
  ret void
}

declare dso_local %struct.at_desc* @atc_first_active(%struct.at_dma_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @chan2dev(i32*) #1

declare dso_local i32 @channel_readl(%struct.at_dma_chan*, i32) #1

declare dso_local i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
