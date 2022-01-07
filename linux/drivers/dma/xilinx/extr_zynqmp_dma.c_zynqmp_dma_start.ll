; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_chan = type { i32, i64 }

@ZYNQMP_DMA_INT_EN_DEFAULT_MASK = common dso_local global i32 0, align 4
@ZYNQMP_DMA_IER = common dso_local global i64 0, align 8
@ZYNQMP_DMA_TOTAL_BYTE = common dso_local global i64 0, align 8
@ZYNQMP_DMA_ENABLE = common dso_local global i32 0, align 4
@ZYNQMP_DMA_CTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_dma_chan*)* @zynqmp_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_dma_start(%struct.zynqmp_dma_chan* %0) #0 {
  %2 = alloca %struct.zynqmp_dma_chan*, align 8
  store %struct.zynqmp_dma_chan* %0, %struct.zynqmp_dma_chan** %2, align 8
  %3 = load i32, i32* @ZYNQMP_DMA_INT_EN_DEFAULT_MASK, align 4
  %4 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ZYNQMP_DMA_IER, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  %10 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZYNQMP_DMA_TOTAL_BYTE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 0, i64 %14)
  %16 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @ZYNQMP_DMA_ENABLE, align 4
  %19 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZYNQMP_DMA_CTRL2, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
