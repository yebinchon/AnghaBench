; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_interrupt_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_prep_interrupt_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.mic_dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64)* @mic_dma_prep_interrupt_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @mic_dma_prep_interrupt_lock(%struct.dma_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mic_dma_chan*, align 8
  %7 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan* %8)
  store %struct.mic_dma_chan* %9, %struct.mic_dma_chan** %6, align 8
  %10 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %11 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @mic_dma_do_dma(%struct.mic_dma_chan* %13, i64 %14, i32 0, i32 0, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %20 = call %struct.dma_async_tx_descriptor* @allocate_tx(%struct.mic_dma_chan* %19)
  store %struct.dma_async_tx_descriptor* %20, %struct.dma_async_tx_descriptor** %3, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %6, align 8
  %23 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %3, align 8
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  ret %struct.dma_async_tx_descriptor* %26
}

declare dso_local %struct.mic_dma_chan* @to_mic_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mic_dma_do_dma(%struct.mic_dma_chan*, i64, i32, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @allocate_tx(%struct.mic_dma_chan*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
