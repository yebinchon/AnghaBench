; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_caam_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg.c_caam_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, %struct.scatterlist*, i32, i32, i64, i32, i64, i32)* @caam_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @caam_unmap(%struct.device* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i32 %4, i64 %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %10, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %21 = icmp ne %struct.scatterlist* %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %9
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.device*, %struct.device** %10, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_sg(%struct.device* %26, %struct.scatterlist* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %10, align 8
  %36 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %39 = call i32 @dma_unmap_sg(%struct.device* %35, %struct.scatterlist* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %31
  br label %47

41:                                               ; preds = %9
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %46 = call i32 @dma_unmap_sg(%struct.device* %42, %struct.scatterlist* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %40
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.device*, %struct.device** %10, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %55 = call i32 @dma_unmap_single(%struct.device* %51, i64 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %10, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @dma_unmap_single(%struct.device* %60, i64 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %56
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
