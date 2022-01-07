; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_dma_prep_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_dma_prep_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_dma_data = type { %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qce_dma_prep_sgs(%struct.qce_dma_data* %0, %struct.scatterlist* %1, i32 %2, %struct.scatterlist* %3, i32 %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qce_dma_data*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dma_chan*, align 8
  %17 = alloca %struct.dma_chan*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.qce_dma_data* %0, %struct.qce_dma_data** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load %struct.qce_dma_data*, %struct.qce_dma_data** %9, align 8
  %21 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %20, i32 0, i32 1
  %22 = load %struct.dma_chan*, %struct.dma_chan** %21, align 8
  store %struct.dma_chan* %22, %struct.dma_chan** %16, align 8
  %23 = load %struct.qce_dma_data*, %struct.qce_dma_data** %9, align 8
  %24 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %23, i32 0, i32 0
  %25 = load %struct.dma_chan*, %struct.dma_chan** %24, align 8
  store %struct.dma_chan* %25, %struct.dma_chan** %17, align 8
  %26 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %27 = load i64, i64* @DMA_CTRL_ACK, align 8
  %28 = or i64 %26, %27
  store i64 %28, i64* %18, align 8
  %29 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %18, align 8
  %33 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %34 = call i32 @qce_dma_prep_sg(%struct.dma_chan* %29, %struct.scatterlist* %30, i32 %31, i64 %32, i32 %33, i32* null, i8* null)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %7
  %38 = load i32, i32* %19, align 4
  store i32 %38, i32* %8, align 4
  br label %48

39:                                               ; preds = %7
  %40 = load %struct.dma_chan*, %struct.dma_chan** %17, align 8
  %41 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i64, i64* %18, align 8
  %44 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 @qce_dma_prep_sg(%struct.dma_chan* %40, %struct.scatterlist* %41, i32 %42, i64 %43, i32 %44, i32* %45, i8* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @qce_dma_prep_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i64, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
