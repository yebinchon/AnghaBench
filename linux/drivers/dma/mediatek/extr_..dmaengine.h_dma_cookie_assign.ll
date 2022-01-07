; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_..dmaengine.h_dma_cookie_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/mediatek/extr_..dmaengine.h_dma_cookie_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64, %struct.dma_chan* }
%struct.dma_chan = type { i64 }

@DMA_MIN_COOKIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dma_async_tx_descriptor*)* @dma_cookie_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i64, align 8
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %5 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %5, i32 0, i32 1
  %7 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  store %struct.dma_chan* %7, %struct.dma_chan** %3, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @DMA_MIN_COOKIE, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @DMA_MIN_COOKIE, align 8
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %20 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %22 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  %23 = load i64, i64* %4, align 8
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
