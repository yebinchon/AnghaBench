; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mic_x100_dma.c_mic_dma_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_dma_chan = type { i64, i32, %struct.dma_async_tx_descriptor* }
%struct.dma_async_tx_descriptor = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mic_dma_chan*)* @mic_dma_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_dma_cleanup(%struct.mic_dma_chan* %0) #0 {
  %2 = alloca %struct.mic_dma_chan*, align 8
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mic_dma_chan* %0, %struct.mic_dma_chan** %2, align 8
  %6 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %7 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %10 = call i64 @mic_dma_read_cmp_cnt(%struct.mic_dma_chan* %9)
  store i64 %10, i64* %4, align 8
  %11 = call i32 (...) @smp_rmb()
  %12 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %13 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %36, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %21 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %20, i32 0, i32 2
  %22 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %22, i64 %23
  store %struct.dma_async_tx_descriptor* %24, %struct.dma_async_tx_descriptor** %3, align 8
  %25 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %31 = call i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor* %30)
  %32 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %33 = call i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor* %32, i32* null)
  %34 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %35 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %34, i32 0, i32 0
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %29, %19
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @mic_dma_hw_ring_inc(i64 %37)
  store i64 %38, i64* %5, align 8
  br label %15

39:                                               ; preds = %15
  %40 = call i32 (...) @smp_mb()
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %43 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.mic_dma_chan*, %struct.mic_dma_chan** %2, align 8
  %45 = getelementptr inbounds %struct.mic_dma_chan, %struct.mic_dma_chan* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mic_dma_read_cmp_cnt(%struct.mic_dma_chan*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @dma_cookie_complete(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dmaengine_desc_get_callback_invoke(%struct.dma_async_tx_descriptor*, i32*) #1

declare dso_local i64 @mic_dma_hw_ring_inc(i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
