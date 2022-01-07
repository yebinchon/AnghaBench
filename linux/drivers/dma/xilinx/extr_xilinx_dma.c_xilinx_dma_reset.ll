; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_dma_chan = type { i32, i32, i64, i32 }

@XILINX_DMA_REG_DMACR = common dso_local global i32 0, align 4
@XILINX_DMA_DMACR_RESET = common dso_local global i32 0, align 4
@XILINX_DMA_LOOP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reset timeout, cr %x, sr %x\0A\00", align 1
@XILINX_DMA_REG_DMASR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinx_dma_chan*)* @xilinx_dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_dma_reset(%struct.xilinx_dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xilinx_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xilinx_dma_chan* %0, %struct.xilinx_dma_chan** %3, align 8
  %6 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %7 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %8 = load i32, i32* @XILINX_DMA_DMACR_RESET, align 4
  %9 = call i32 @dma_ctrl_set(%struct.xilinx_dma_chan* %6, i32 %7, i32 %8)
  %10 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %11 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @XILINX_DMA_DMACR_RESET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @XILINX_DMA_LOOP_COUNT, align 4
  %20 = call i32 @xilinx_dma_poll_timeout(%struct.xilinx_dma_chan* %10, i32 %11, i32 %12, i32 %18, i32 0, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %25 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %28 = load i32, i32* @XILINX_DMA_REG_DMACR, align 4
  %29 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %27, i32 %28)
  %30 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %31 = load i32, i32* @XILINX_DMA_REG_DMASR, align 4
  %32 = call i32 @dma_ctrl_read(%struct.xilinx_dma_chan* %30, i32 %31)
  %33 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %1
  %37 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %40 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %3, align 8
  %42 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %36, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @dma_ctrl_set(%struct.xilinx_dma_chan*, i32, i32) #1

declare dso_local i32 @xilinx_dma_poll_timeout(%struct.xilinx_dma_chan*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_ctrl_read(%struct.xilinx_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
