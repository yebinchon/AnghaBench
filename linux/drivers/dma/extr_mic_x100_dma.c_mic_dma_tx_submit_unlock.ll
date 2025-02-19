; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_tx_submit_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_tx_submit_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32, i32 }
%struct.mic_dma_chan = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @mic_dma_tx_submit_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_dma_tx_submit_unlock(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.mic_dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %5 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mic_dma_chan* @to_mic_dma_chan(i32 %7)
  store %struct.mic_dma_chan* %8, %struct.mic_dma_chan** %3, align 8
  %9 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %10 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %9)
  %11 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %12 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = call i32 (...) @smp_wmb()
  %15 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %3, align 8
  %24 = call i32 @mic_dma_update_pending(%struct.mic_dma_chan* %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.mic_dma_chan* @to_mic_dma_chan(i32) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mic_dma_update_pending(%struct.mic_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
