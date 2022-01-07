; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.jz4780_dma_chan = type { i64, i32, i32 }
%struct.jz4780_dma_desc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i64 }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@JZ_DMA_DRT_AUTO = common dso_local global i32 0, align 4
@JZ_DMA_DCM_TIE = common dso_local global i32 0, align 4
@JZ_DMA_DCM_SAI = common dso_local global i32 0, align 4
@JZ_DMA_DCM_DAI = common dso_local global i32 0, align 4
@JZ_DMA_DCM_TSZ_SHIFT = common dso_local global i32 0, align 4
@JZ_DMA_WIDTH_32_BIT = common dso_local global i32 0, align 4
@JZ_DMA_DCM_SP_SHIFT = common dso_local global i32 0, align 4
@JZ_DMA_DCM_DP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)* @jz4780_dma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @jz4780_dma_prep_dma_memcpy(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.jz4780_dma_chan*, align 8
  %13 = alloca %struct.jz4780_dma_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %16 = call %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan* %15)
  store %struct.jz4780_dma_chan* %16, %struct.jz4780_dma_chan** %12, align 8
  %17 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %12, align 8
  %18 = load i32, i32* @DMA_MEMCPY, align 4
  %19 = call %struct.jz4780_dma_desc* @jz4780_dma_desc_alloc(%struct.jz4780_dma_chan* %17, i32 1, i32 %18)
  store %struct.jz4780_dma_desc* %19, %struct.jz4780_dma_desc** %13, align 8
  %20 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %13, align 8
  %21 = icmp ne %struct.jz4780_dma_desc* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %86

23:                                               ; preds = %5
  %24 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %12, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* %10, align 8
  %29 = or i64 %27, %28
  %30 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %12, align 8
  %31 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %30, i32 0, i32 0
  %32 = call i32 @jz4780_dma_transfer_size(%struct.jz4780_dma_chan* %24, i64 %29, i64* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* @JZ_DMA_DRT_AUTO, align 4
  %34 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %12, align 8
  %35 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %13, align 8
  %38 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %13, align 8
  %44 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i64 %42, i64* %47, align 8
  %48 = load i32, i32* @JZ_DMA_DCM_TIE, align 4
  %49 = load i32, i32* @JZ_DMA_DCM_SAI, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @JZ_DMA_DCM_DAI, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @JZ_DMA_DCM_TSZ_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %52, %55
  %57 = load i32, i32* @JZ_DMA_WIDTH_32_BIT, align 4
  %58 = load i32, i32* @JZ_DMA_DCM_SP_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = load i32, i32* @JZ_DMA_WIDTH_32_BIT, align 4
  %62 = load i32, i32* @JZ_DMA_DCM_DP_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %60, %63
  %65 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %13, align 8
  %66 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %64, i32* %69, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %12, align 8
  %72 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = lshr i64 %70, %73
  %75 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %13, align 8
  %76 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  store i64 %74, i64* %79, align 8
  %80 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %12, align 8
  %81 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %80, i32 0, i32 1
  %82 = load %struct.jz4780_dma_desc*, %struct.jz4780_dma_desc** %13, align 8
  %83 = getelementptr inbounds %struct.jz4780_dma_desc, %struct.jz4780_dma_desc* %82, i32 0, i32 0
  %84 = load i64, i64* %11, align 8
  %85 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %81, i32* %83, i64 %84)
  store %struct.dma_async_tx_descriptor* %85, %struct.dma_async_tx_descriptor** %6, align 8
  br label %86

86:                                               ; preds = %23, %22
  %87 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %87
}

declare dso_local %struct.jz4780_dma_chan* @to_jz4780_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.jz4780_dma_desc* @jz4780_dma_desc_alloc(%struct.jz4780_dma_chan*, i32, i32) #1

declare dso_local i32 @jz4780_dma_transfer_size(%struct.jz4780_dma_chan*, i64, i64*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
