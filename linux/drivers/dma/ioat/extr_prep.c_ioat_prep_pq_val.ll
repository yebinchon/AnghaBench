; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_pq_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_pq_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32 }

@IOAT_CHAN_DOWN = common dso_local global i32 0, align 4
@DMA_PREP_PQ_DISABLE_P = common dso_local global i64 0, align 8
@DMA_PREP_PQ_DISABLE_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_async_tx_descriptor* @ioat_prep_pq_val(%struct.dma_chan* %0, i32* %1, i32* %2, i32 %3, i8* %4, i64 %5, i32* %6, i64 %7) #0 {
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ioatdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %20 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %19)
  store %struct.ioatdma_chan* %20, %struct.ioatdma_chan** %18, align 8
  %21 = load i32, i32* @IOAT_CHAN_DOWN, align 4
  %22 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %18, align 8
  %23 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %9, align 8
  br label %77

27:                                               ; preds = %8
  %28 = load i64, i64* %17, align 8
  %29 = load i64, i64* @DMA_PREP_PQ_DISABLE_P, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %11, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32*, i32** %16, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i64, i64* %17, align 8
  %53 = call i32 @src_cnt_flags(i32 %51, i64 %52)
  %54 = icmp sgt i32 %53, 8
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %17, align 8
  %64 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq16_lock(%struct.dma_chan* %56, i32* %57, i32* %58, i32* %59, i32 %60, i8* %61, i64 %62, i64 %63)
  br label %75

65:                                               ; preds = %49
  %66 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %17, align 8
  %74 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq_lock(%struct.dma_chan* %66, i32* %67, i32* %68, i32* %69, i32 %70, i8* %71, i64 %72, i64 %73)
  br label %75

75:                                               ; preds = %65, %55
  %76 = phi %struct.dma_async_tx_descriptor* [ %64, %55 ], [ %74, %65 ]
  store %struct.dma_async_tx_descriptor* %76, %struct.dma_async_tx_descriptor** %9, align 8
  br label %77

77:                                               ; preds = %75, %26
  %78 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  ret %struct.dma_async_tx_descriptor* %78
}

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @src_cnt_flags(i32, i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @__ioat_prep_pq16_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @__ioat_prep_pq_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
