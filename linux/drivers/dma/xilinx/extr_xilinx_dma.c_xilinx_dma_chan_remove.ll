; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_chan_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_chan_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@XILINX_DMA_REG_DMACR = common dso_local global i32 0, align 4
@XILINX_DMA_DMAXR_ALL_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_dma_chan*)* @xilinx_dma_chan_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_dma_chan_remove(%struct.xilinx_dma_chan* %0) #0 {
  %2 = alloca %struct.xilinx_dma_chan*, align 8
  store %struct.xilinx_dma_chan* %0, %struct.xilinx_dma_chan** %2, align 8
  %3 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %4 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %5 = load i32, i32* @XILINX_DMA_DMAXR_ALL_IRQ_MASK, align 4
  %6 = call i32 @dma_ctrl_clr(%struct.xilinx_dma_chan* %3, i32 %4, i32 %5)
  %7 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %16 = call i32 @free_irq(i64 %14, %struct.xilinx_dma_chan* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %18, i32 0, i32 2
  %20 = call i32 @tasklet_kill(i32* %19)
  %21 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @list_del(i32* %23)
  ret void
}

declare dso_local i32 @dma_ctrl_clr(%struct.xilinx_dma_chan*, i32, i32) #1

declare dso_local i32 @free_irq(i64, %struct.xilinx_dma_chan*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
