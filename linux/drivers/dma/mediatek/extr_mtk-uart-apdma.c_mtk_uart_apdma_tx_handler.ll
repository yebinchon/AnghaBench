; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_tx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_tx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_chan = type { %struct.mtk_uart_apdma_desc* }
%struct.mtk_uart_apdma_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VFF_INT_FLAG = common dso_local global i32 0, align 4
@VFF_TX_INT_CLR_B = common dso_local global i32 0, align 4
@VFF_INT_EN = common dso_local global i32 0, align 4
@VFF_INT_EN_CLR_B = common dso_local global i32 0, align 4
@VFF_EN = common dso_local global i32 0, align 4
@VFF_EN_CLR_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_chan*)* @mtk_uart_apdma_tx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_uart_apdma_tx_handler(%struct.mtk_chan* %0) #0 {
  %2 = alloca %struct.mtk_chan*, align 8
  %3 = alloca %struct.mtk_uart_apdma_desc*, align 8
  store %struct.mtk_chan* %0, %struct.mtk_chan** %2, align 8
  %4 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %4, i32 0, i32 0
  %6 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %5, align 8
  store %struct.mtk_uart_apdma_desc* %6, %struct.mtk_uart_apdma_desc** %3, align 8
  %7 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %8 = load i32, i32* @VFF_INT_FLAG, align 4
  %9 = load i32, i32* @VFF_TX_INT_CLR_B, align 4
  %10 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %7, i32 %8, i32 %9)
  %11 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %12 = load i32, i32* @VFF_INT_EN, align 4
  %13 = load i32, i32* @VFF_INT_EN_CLR_B, align 4
  %14 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %11, i32 %12, i32 %13)
  %15 = load %struct.mtk_chan*, %struct.mtk_chan** %2, align 8
  %16 = load i32, i32* @VFF_EN, align 4
  %17 = load i32, i32* @VFF_EN_CLR_B, align 4
  %18 = call i32 @mtk_uart_apdma_write(%struct.mtk_chan* %15, i32 %16, i32 %17)
  %19 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %3, align 8
  %20 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.mtk_uart_apdma_desc*, %struct.mtk_uart_apdma_desc** %3, align 8
  %24 = getelementptr inbounds %struct.mtk_uart_apdma_desc, %struct.mtk_uart_apdma_desc* %23, i32 0, i32 0
  %25 = call i32 @vchan_cookie_complete(%struct.TYPE_2__* %24)
  ret void
}

declare dso_local i32 @mtk_uart_apdma_write(%struct.mtk_chan*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @vchan_cookie_complete(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
