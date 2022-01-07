; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_bcm2835-dma.c_bcm2835_dma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.bcm2835_chan = type { i32 }
%struct.bcm2835_desc = type { i32 }

@BCM2835_DMA_D_INC = common dso_local global i32 0, align 4
@BCM2835_DMA_S_INC = common dso_local global i32 0, align 4
@BCM2835_DMA_INT_EN = common dso_local global i32 0, align 4
@BCM2835_DMA_WAIT_RESP = common dso_local global i32 0, align 4
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i64, i64)* @bcm2835_dma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @bcm2835_dma_prep_dma_memcpy(%struct.dma_chan* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bcm2835_chan*, align 8
  %13 = alloca %struct.bcm2835_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %19 = call %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan* %18)
  store %struct.bcm2835_chan* %19, %struct.bcm2835_chan** %12, align 8
  %20 = load i32, i32* @BCM2835_DMA_D_INC, align 4
  %21 = load i32, i32* @BCM2835_DMA_S_INC, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @BCM2835_DMA_INT_EN, align 4
  %24 = load i32, i32* @BCM2835_DMA_WAIT_RESP, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %12, align 8
  %27 = call i64 @bcm2835_dma_max_frame_length(%struct.bcm2835_chan* %26)
  store i64 %27, i64* %16, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %30, %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %61

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %16, align 8
  %40 = call i64 @bcm2835_dma_frames_for_length(i64 %38, i64 %39)
  store i64 %40, i64* %17, align 8
  %41 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %42 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i64, i64* %17, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.bcm2835_desc* @bcm2835_dma_create_cb_chain(%struct.dma_chan* %41, i32 %42, i32 0, i32 %43, i32 %44, i64 %45, i32 %46, i32 %47, i64 %48, i32 0, i32 %49)
  store %struct.bcm2835_desc* %50, %struct.bcm2835_desc** %13, align 8
  %51 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %13, align 8
  %52 = icmp ne %struct.bcm2835_desc* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %61

54:                                               ; preds = %37
  %55 = load %struct.bcm2835_chan*, %struct.bcm2835_chan** %12, align 8
  %56 = getelementptr inbounds %struct.bcm2835_chan, %struct.bcm2835_chan* %55, i32 0, i32 0
  %57 = load %struct.bcm2835_desc*, %struct.bcm2835_desc** %13, align 8
  %58 = getelementptr inbounds %struct.bcm2835_desc, %struct.bcm2835_desc* %57, i32 0, i32 0
  %59 = load i64, i64* %11, align 8
  %60 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %56, i32* %58, i64 %59)
  store %struct.dma_async_tx_descriptor* %60, %struct.dma_async_tx_descriptor** %6, align 8
  br label %61

61:                                               ; preds = %54, %53, %36
  %62 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %62
}

declare dso_local %struct.bcm2835_chan* @to_bcm2835_dma_chan(%struct.dma_chan*) #1

declare dso_local i64 @bcm2835_dma_max_frame_length(%struct.bcm2835_chan*) #1

declare dso_local i64 @bcm2835_dma_frames_for_length(i64, i64) #1

declare dso_local %struct.bcm2835_desc* @bcm2835_dma_create_cb_chain(%struct.dma_chan*, i32, i32, i32, i32, i64, i32, i32, i64, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
