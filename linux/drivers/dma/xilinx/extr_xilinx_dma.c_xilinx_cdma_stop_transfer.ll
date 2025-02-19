; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_cdma_stop_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_cdma_stop_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i32 }

@XILINX_DMA_REG_DMASR = common dso_local global i32 0, align 4
@XILINX_DMA_DMASR_IDLE = common dso_local global i32 0, align 4
@XILINX_DMA_LOOP_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinx_dma_chan*)* @xilinx_cdma_stop_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_cdma_stop_transfer(%struct.xilinx_dma_chan* %0) #0 {
  %2 = alloca %struct.xilinx_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.xilinx_dma_chan* %0, %struct.xilinx_dma_chan** %2, align 8
  %4 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %5 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @XILINX_DMA_DMASR_IDLE, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @XILINX_DMA_LOOP_COUNT, align 4
  %11 = call i32 @xilinx_dma_poll_timeout(%struct.xilinx_dma_chan* %4, i32 %5, i32 %6, i32 %9, i32 0, i32 %10)
  ret i32 %11
}

declare dso_local i32 @xilinx_dma_poll_timeout(%struct.xilinx_dma_chan*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
