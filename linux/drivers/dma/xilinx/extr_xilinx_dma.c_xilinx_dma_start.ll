; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i32, i32 }

@XILINX_DMA_REG_DMACR = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_RUNSTOP = common dso_local global i32 0, align 4
@XILINX_DMA_REG_DMASR = common dso_local global i32 0, align 4
@XILINX_DMA_DMASR_HALTED = common dso_local global i32 0, align 4
@XILINX_DMA_LOOP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot start channel %p: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_dma_chan*)* @xilinx_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_dma_start(%struct.xilinx_dma_chan* %0) #0 {
  %2 = alloca %struct.xilinx_dma_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xilinx_dma_chan* %0, %struct.xilinx_dma_chan** %2, align 8
  %5 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %6 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %7 = load i32, i32* @XILINX_DMA_DMACR_RUNSTOP, align 4
  %8 = call i32 @dma_ctrl_set(%struct.xilinx_dma_chan* %5, i32 %6, i32 %7)
  %9 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %10 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @XILINX_DMA_DMASR_HALTED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @XILINX_DMA_LOOP_COUNT, align 4
  %19 = call i32 @xilinx_dma_poll_timeout(%struct.xilinx_dma_chan* %9, i32 %10, i32 %11, i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %27 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %28 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %29 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %27, i32 %28)
  %30 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.xilinx_dma_chan* %26, i32 %29)
  %31 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %2, align 8
  %32 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @dma_ctrl_set(%struct.xilinx_dma_chan*, i32, i32) #1

declare dso_local i32 @xilinx_dma_poll_timeout(%struct.xilinx_dma_chan*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.xilinx_dma_chan*, i32) #1

declare dso_local i32 @dma_ctrl_read(%struct.xilinx_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
