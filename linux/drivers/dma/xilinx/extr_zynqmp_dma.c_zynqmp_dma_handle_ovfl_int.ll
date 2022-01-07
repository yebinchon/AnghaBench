; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_handle_ovfl_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_zynqmp_dma.c_zynqmp_dma_handle_ovfl_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_dma_chan = type { i64 }

@ZYNQMP_DMA_BYTE_CNT_OVRFL = common dso_local global i32 0, align 4
@ZYNQMP_DMA_TOTAL_BYTE = common dso_local global i64 0, align 8
@ZYNQMP_DMA_IRQ_DST_ACCT_ERR = common dso_local global i32 0, align 4
@ZYNQMP_DMA_IRQ_DST_ACCT = common dso_local global i64 0, align 8
@ZYNQMP_DMA_IRQ_SRC_ACCT_ERR = common dso_local global i32 0, align 4
@ZYNQMP_DMA_IRQ_SRC_ACCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_dma_chan*, i32)* @zynqmp_dma_handle_ovfl_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_dma_handle_ovfl_int(%struct.zynqmp_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.zynqmp_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.zynqmp_dma_chan* %0, %struct.zynqmp_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ZYNQMP_DMA_BYTE_CNT_OVRFL, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ZYNQMP_DMA_TOTAL_BYTE, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 0, i64 %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ZYNQMP_DMA_IRQ_DST_ACCT_ERR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZYNQMP_DMA_IRQ_DST_ACCT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @ZYNQMP_DMA_IRQ_SRC_ACCT_ERR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.zynqmp_dma_chan*, %struct.zynqmp_dma_chan** %3, align 8
  %35 = getelementptr inbounds %struct.zynqmp_dma_chan, %struct.zynqmp_dma_chan* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ZYNQMP_DMA_IRQ_SRC_ACCT, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  br label %40

40:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
