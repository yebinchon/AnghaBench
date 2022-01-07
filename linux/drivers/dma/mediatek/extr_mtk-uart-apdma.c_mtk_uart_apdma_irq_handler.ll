; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_chan = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_uart_apdma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_apdma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.mtk_chan*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.dma_chan*
  store %struct.dma_chan* %9, %struct.dma_chan** %5, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = call %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan* %10)
  store %struct.mtk_chan* %11, %struct.mtk_chan** %6, align 8
  %12 = load %struct.mtk_chan*, %struct.mtk_chan** %6, align 8
  %13 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mtk_chan*, %struct.mtk_chan** %6, align 8
  %18 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.mtk_chan*, %struct.mtk_chan** %6, align 8
  %24 = call i32 @mtk_uart_apdma_rx_handler(%struct.mtk_chan* %23)
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.mtk_chan*, %struct.mtk_chan** %6, align 8
  %27 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.mtk_chan*, %struct.mtk_chan** %6, align 8
  %33 = call i32 @mtk_uart_apdma_tx_handler(%struct.mtk_chan* %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %22
  %36 = load %struct.mtk_chan*, %struct.mtk_chan** %6, align 8
  %37 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtk_uart_apdma_rx_handler(%struct.mtk_chan*) #1

declare dso_local i32 @mtk_uart_apdma_tx_handler(%struct.mtk_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
