; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_prep_dma_xor_zero_sum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_prep_dma_xor_zero_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }

@DMA_PREP_PQ_DISABLE_Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64*, i32, i64, i32*, i64)* @ppc440spe_adma_prep_dma_xor_zero_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @ppc440spe_adma_prep_dma_xor_zero_sum(%struct.dma_chan* %0, i64* %1, i32 %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dma_async_tx_descriptor*, align 8
  %14 = alloca [2 x i64], align 16
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64*, i64** %8, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  store i64 %17, i64* %18, align 16
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %21 = load i64, i64* %12, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %12, align 8
  %23 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 0
  %25 = load i64*, i64** %8, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i32, i32* %9, align 4
  %28 = sub i32 %27, 1
  %29 = load i64, i64* %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call %struct.dma_async_tx_descriptor* @ppc440spe_adma_prep_dma_pqzero_sum(%struct.dma_chan* %23, i64* %24, i64* %26, i32 %28, i32 0, i64 %29, i32* %30, i64 %31)
  store %struct.dma_async_tx_descriptor* %32, %struct.dma_async_tx_descriptor** %13, align 8
  %33 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %13, align 8
  ret %struct.dma_async_tx_descriptor* %33
}

declare dso_local %struct.dma_async_tx_descriptor* @ppc440spe_adma_prep_dma_pqzero_sum(%struct.dma_chan*, i64*, i64*, i32, i32, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
