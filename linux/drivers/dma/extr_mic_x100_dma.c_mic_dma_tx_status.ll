; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.mic_dma_chan = type { i32 }

@DMA_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i32, %struct.dma_tx_state*)* @mic_dma_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_tx_status(%struct.dma_chan* %0, i32 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_tx_state*, align 8
  %7 = alloca %struct.mic_dma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %6, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan* %8)
  store %struct.mic_dma_chan* %9, %struct.mic_dma_chan** %7, align 8
  %10 = load i64, i64* @DMA_COMPLETE, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %14 = call i32 @dma_cookie_status(%struct.dma_chan* %11, i32 %12, %struct.dma_tx_state* %13)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %10, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %7, align 8
  %19 = call i32 @mic_dma_cleanup(%struct.mic_dma_chan* %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.dma_tx_state*, %struct.dma_tx_state** %6, align 8
  %24 = call i32 @dma_cookie_status(%struct.dma_chan* %21, i32 %22, %struct.dma_tx_state* %23)
  ret i32 %24
}

declare dso_local %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @mic_dma_cleanup(%struct.mic_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
