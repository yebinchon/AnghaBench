; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_pq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32 }

@IOAT_CHAN_DOWN = common dso_local global i32 0, align 4
@DMA_PREP_PQ_DISABLE_P = common dso_local global i64 0, align 8
@DMA_PREP_PQ_DISABLE_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_async_tx_descriptor* @ioat_prep_pq(%struct.dma_chan* %0, i32* %1, i32* %2, i32 %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca %struct.dma_chan*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ioatdma_chan*, align 8
  %17 = alloca [2 x i32], align 4
  %18 = alloca [2 x i8], align 1
  store %struct.dma_chan* %0, %struct.dma_chan** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %20 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %19)
  store %struct.ioatdma_chan* %20, %struct.ioatdma_chan** %16, align 8
  %21 = load i32, i32* @IOAT_CHAN_DOWN, align 4
  %22 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %16, align 8
  %23 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %8, align 8
  br label %122

27:                                               ; preds = %7
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* @DMA_PREP_PQ_DISABLE_P, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @DMA_PREP_PQ_DISABLE_P, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %49
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %97

57:                                               ; preds = %54
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %60 = and i64 %58, %59
  %61 = call i32 @BUG_ON(i64 %60)
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %68, i32* %69, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  store i8 %72, i8* %73, align 1
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 1
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %12, align 4
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @src_cnt_flags(i32 %75, i64 %76)
  %78 = icmp sgt i32 %77, 8
  br i1 %78, label %79, label %87

79:                                               ; preds = %57
  %80 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %83 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %15, align 8
  %86 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq16_lock(%struct.dma_chan* %80, i32* null, i32* %81, i32* %82, i32 2, i8* %83, i64 %84, i64 %85)
  br label %95

87:                                               ; preds = %57
  %88 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %18, i64 0, i64 0
  %92 = load i64, i64* %14, align 8
  %93 = load i64, i64* %15, align 8
  %94 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq_lock(%struct.dma_chan* %88, i32* null, i32* %89, i32* %90, i32 2, i8* %91, i64 %92, i64 %93)
  br label %95

95:                                               ; preds = %87, %79
  %96 = phi %struct.dma_async_tx_descriptor* [ %86, %79 ], [ %94, %87 ]
  store %struct.dma_async_tx_descriptor* %96, %struct.dma_async_tx_descriptor** %8, align 8
  br label %122

97:                                               ; preds = %54, %49
  %98 = load i32, i32* %12, align 4
  %99 = load i64, i64* %15, align 8
  %100 = call i32 @src_cnt_flags(i32 %98, i64 %99)
  %101 = icmp sgt i32 %100, 8
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i8*, i8** %13, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* %15, align 8
  %110 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq16_lock(%struct.dma_chan* %103, i32* null, i32* %104, i32* %105, i32 %106, i8* %107, i64 %108, i64 %109)
  br label %120

111:                                              ; preds = %97
  %112 = load %struct.dma_chan*, %struct.dma_chan** %9, align 8
  %113 = load i32*, i32** %10, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* %15, align 8
  %119 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq_lock(%struct.dma_chan* %112, i32* null, i32* %113, i32* %114, i32 %115, i8* %116, i64 %117, i64 %118)
  br label %120

120:                                              ; preds = %111, %102
  %121 = phi %struct.dma_async_tx_descriptor* [ %110, %102 ], [ %119, %111 ]
  store %struct.dma_async_tx_descriptor* %121, %struct.dma_async_tx_descriptor** %8, align 8
  br label %122

122:                                              ; preds = %120, %95, %26
  %123 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  ret %struct.dma_async_tx_descriptor* %123
}

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @src_cnt_flags(i32, i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @__ioat_prep_pq16_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @__ioat_prep_pq_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
