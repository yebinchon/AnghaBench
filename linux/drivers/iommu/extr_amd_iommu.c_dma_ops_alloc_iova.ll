; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_dma_ops_alloc_iova.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_dma_ops_alloc_iova.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_ops_domain = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.dma_ops_domain*, i32, i64)* @dma_ops_alloc_iova to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dma_ops_alloc_iova(%struct.device* %0, %struct.dma_ops_domain* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dma_ops_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.dma_ops_domain* %1, %struct.dma_ops_domain** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @__roundup_pow_of_two(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @DMA_BIT_MASK(i32 32)
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %6, align 8
  %17 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %16, i32 0, i32 0
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @DMA_BIT_MASK(i32 32)
  %20 = call i32 @IOVA_PFN(i64 %19)
  %21 = call i64 @alloc_iova_fast(i32* %17, i32 %18, i32 %20, i32 0)
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %15, %4
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %6, align 8
  %27 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @IOVA_PFN(i64 %29)
  %31 = call i64 @alloc_iova_fast(i32* %27, i32 %28, i32 %30, i32 1)
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = shl i64 %33, %34
  ret i64 %35
}

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i64 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @alloc_iova_fast(i32*, i32, i32, i32) #1

declare dso_local i32 @IOVA_PFN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
