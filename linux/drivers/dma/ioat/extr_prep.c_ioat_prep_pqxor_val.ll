; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_pqxor_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_ioat_prep_pqxor_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32 }

@MAX_SCF = common dso_local global i32 0, align 4
@IOAT_CHAN_DOWN = common dso_local global i32 0, align 4
@DMA_PREP_PQ_DISABLE_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_async_tx_descriptor* @ioat_prep_pqxor_val(%struct.dma_chan* %0, i32* %1, i32 %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca %struct.ioatdma_chan*, align 8
  %18 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i32, i32* @MAX_SCF, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %24 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %23)
  store %struct.ioatdma_chan* %24, %struct.ioatdma_chan** %17, align 8
  %25 = load i32, i32* @IOAT_CHAN_DOWN, align 4
  %26 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %17, align 8
  %27 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  store i32 1, i32* %18, align 4
  br label %78

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @MAX_SCF, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  store i32 1, i32* %18, align 4
  br label %78

36:                                               ; preds = %31
  %37 = load i32*, i32** %12, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @memset(i8* %22, i32 0, i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* @DMA_PREP_PQ_DISABLE_Q, align 8
  %45 = load i64, i64* %13, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %13, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @src_cnt_flags(i32 %50, i64 %51)
  %53 = icmp sgt i32 %52, 8
  br i1 %53, label %54, label %65

54:                                               ; preds = %36
  %55 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 %60, 1
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq16_lock(%struct.dma_chan* %55, i32* %56, i32* %57, i32* %59, i32 %61, i8* %22, i64 %62, i64 %63)
  br label %76

65:                                               ; preds = %36
  %66 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %10, align 4
  %72 = sub i32 %71, 1
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call %struct.dma_async_tx_descriptor* @__ioat_prep_pq_lock(%struct.dma_chan* %66, i32* %67, i32* %68, i32* %70, i32 %72, i8* %22, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %65, %54
  %77 = phi %struct.dma_async_tx_descriptor* [ %64, %54 ], [ %75, %65 ]
  store %struct.dma_async_tx_descriptor* %77, %struct.dma_async_tx_descriptor** %7, align 8
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %76, %35, %30
  %79 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @src_cnt_flags(i32, i64) #2

declare dso_local %struct.dma_async_tx_descriptor* @__ioat_prep_pq16_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #2

declare dso_local %struct.dma_async_tx_descriptor* @__ioat_prep_pq_lock(%struct.dma_chan*, i32*, i32*, i32*, i32, i8*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
