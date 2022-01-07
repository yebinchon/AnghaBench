; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_prep_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-qdma.c_fsl_qdma_prep_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.fsl_qdma_comp = type { i32 }
%struct.fsl_qdma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i64, i64)* @fsl_qdma_prep_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @fsl_qdma_prep_memcpy(%struct.dma_chan* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fsl_qdma_comp*, align 8
  %13 = alloca %struct.fsl_qdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %15 = call %struct.fsl_qdma_chan* @to_fsl_qdma_chan(%struct.dma_chan* %14)
  store %struct.fsl_qdma_chan* %15, %struct.fsl_qdma_chan** %13, align 8
  %16 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %13, align 8
  %17 = call %struct.fsl_qdma_comp* @fsl_qdma_request_enqueue_desc(%struct.fsl_qdma_chan* %16)
  store %struct.fsl_qdma_comp* %17, %struct.fsl_qdma_comp** %12, align 8
  %18 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %12, align 8
  %19 = icmp ne %struct.fsl_qdma_comp* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %33

21:                                               ; preds = %5
  %22 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @fsl_qdma_comp_fill_memcpy(%struct.fsl_qdma_comp* %22, i32 %23, i32 %24, i64 %25)
  %27 = load %struct.fsl_qdma_chan*, %struct.fsl_qdma_chan** %13, align 8
  %28 = getelementptr inbounds %struct.fsl_qdma_chan, %struct.fsl_qdma_chan* %27, i32 0, i32 0
  %29 = load %struct.fsl_qdma_comp*, %struct.fsl_qdma_comp** %12, align 8
  %30 = getelementptr inbounds %struct.fsl_qdma_comp, %struct.fsl_qdma_comp* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %28, i32* %30, i64 %31)
  store %struct.dma_async_tx_descriptor* %32, %struct.dma_async_tx_descriptor** %6, align 8
  br label %33

33:                                               ; preds = %21, %20
  %34 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %34
}

declare dso_local %struct.fsl_qdma_chan* @to_fsl_qdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.fsl_qdma_comp* @fsl_qdma_request_enqueue_desc(%struct.fsl_qdma_chan*) #1

declare dso_local i32 @fsl_qdma_comp_fill_memcpy(%struct.fsl_qdma_comp*, i32, i32, i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
