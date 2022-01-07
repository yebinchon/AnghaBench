; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_mtk-uart-apdma.c_mtk_uart_apdma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.mtk_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @mtk_uart_apdma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_uart_apdma_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.mtk_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = call %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan* %10)
  store %struct.mtk_chan* %11, %struct.mtk_chan** %8, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %15 = call i32 @dma_cookie_status(%struct.dma_chan* %12, i32 %13, %struct.dma_tx_state* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %17 = icmp ne %struct.dma_tx_state* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %27

20:                                               ; preds = %3
  %21 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %22 = load %struct.mtk_chan*, %struct.mtk_chan** %8, align 8
  %23 = getelementptr inbounds %struct.mtk_chan, %struct.mtk_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_set_residue(%struct.dma_tx_state* %21, i32 %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %20, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.mtk_chan* @to_mtk_uart_apdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
