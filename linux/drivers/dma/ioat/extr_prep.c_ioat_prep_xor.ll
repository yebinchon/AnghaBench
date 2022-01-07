; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_xor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_xor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32 }

@IOAT_CHAN_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_async_tx_descriptor* @ioat_prep_xor(%struct.dma_chan* %0, i32 %1, i32* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ioatdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %16 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %15)
  store %struct.ioatdma_chan* %16, %struct.ioatdma_chan** %14, align 8
  %17 = load i32, i32* @IOAT_CHAN_DOWN, align 4
  %18 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %14, align 8
  %19 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %18, i32 0, i32 0
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %31

23:                                               ; preds = %6
  %24 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call %struct.dma_async_tx_descriptor* @__ioat_prep_xor_lock(%struct.dma_chan* %24, i32* null, i32 %25, i32* %26, i32 %27, i64 %28, i64 %29)
  store %struct.dma_async_tx_descriptor* %30, %struct.dma_async_tx_descriptor** %7, align 8
  br label %31

31:                                               ; preds = %23, %22
  %32 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %32
}

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @__ioat_prep_xor_lock(%struct.dma_chan*, i32*, i32, i32*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
