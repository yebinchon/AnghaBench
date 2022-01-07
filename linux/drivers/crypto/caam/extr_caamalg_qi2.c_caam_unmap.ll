; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_caam_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi2.c_caam_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, %struct.scatterlist*, i32, i32, i64, i32, i32, i64, i32)* @caam_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caam_unmap(%struct.device* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i64 %5, i32 %6, i32 %7, i64 %8, i32 %9) #0 {
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %11, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  store i32 %9, i32* %20, align 4
  %21 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %23 = icmp ne %struct.scatterlist* %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %10
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.device*, %struct.device** %11, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @DMA_TO_DEVICE, align 4
  %32 = call i32 @dma_unmap_sg(%struct.device* %28, %struct.scatterlist* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %24
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.device*, %struct.device** %11, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %41 = call i32 @dma_unmap_sg(%struct.device* %37, %struct.scatterlist* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  br label %49

43:                                               ; preds = %10
  %44 = load %struct.device*, %struct.device** %11, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %48 = call i32 @dma_unmap_sg(%struct.device* %44, %struct.scatterlist* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.device*, %struct.device** %11, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @dma_unmap_single(%struct.device* %53, i64 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %49
  %59 = load i32, i32* %20, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.device*, %struct.device** %11, align 8
  %63 = load i64, i64* %19, align 8
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @dma_unmap_single(%struct.device* %62, i64 %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
