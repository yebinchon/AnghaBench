; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_device_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_device_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mtk_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@VFF_EN = common dso_local global i32 0, align 4
@VFF_EN_CLR_B = common dso_local global i32 0, align 4
@VFF_INT_EN = common dso_local global i32 0, align 4
@VFF_INT_EN_CLR_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mtk_uart_apdma_device_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_apdma_device_pause(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.mtk_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan* %5)
  store %struct.mtk_chan* %6, %struct.mtk_chan** %3, align 8
  %7 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %13 = load i32, i32* @VFF_EN, align 4
  %14 = load i32, i32* @VFF_EN_CLR_B, align 4
  %15 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %12, i32 %13, i32 %14)
  %16 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %17 = load i32, i32* @VFF_INT_EN, align 4
  %18 = load i32, i32* @VFF_INT_EN_CLR_B, align 4
  %19 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %16, i32 %17, i32 %18)
  %20 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @synchronize_irq(i32 %22)
  %24 = load %struct.mtk_chan*, %struct.mtk_chan** %3, align 8
  %25 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret i32 0
}

declare dso_local %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mtk_uart_apdma_write(%struct.mtk_chan*, i32, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
