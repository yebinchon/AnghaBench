; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dma_chan_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.axi_dma_chan = type { i64 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@DMA_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @dma_chan_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_chan_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_tx_state*, align 8
  %7 = alloca %struct.axi_dma_chan*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %6, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = call %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan* %9)
  store %struct.axi_dma_chan* %10, %struct.axi_dma_chan** %7, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %14 = call i32 @dma_cookie_status(%struct.dma_chan* %11, i32 %12, %struct.dma_tx_state* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %7, align 8
  %16 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @DMA_PAUSED, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %19, %3
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.axi_dma_chan* @dchan_to_axi_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
