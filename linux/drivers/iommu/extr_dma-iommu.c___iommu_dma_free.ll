; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c___iommu_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c___iommu_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@CONFIG_DMA_DIRECT_REMAP = common dso_local global i32 0, align 4
@CONFIG_DMA_REMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*)* @__iommu_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iommu_dma_free(%struct.device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page**, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @PAGE_ALIGN(i64 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  store %struct.page* null, %struct.page** %9, align 8
  store %struct.page** null, %struct.page*** %10, align 8
  %17 = load i32, i32* @CONFIG_DMA_DIRECT_REMAP, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @dma_free_from_pool(i8* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %64

26:                                               ; preds = %20, %3
  %27 = load i32, i32* @CONFIG_DMA_REMAP, align 4
  %28 = call i64 @IS_ENABLED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @is_vmalloc_addr(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i8*, i8** %6, align 8
  %36 = call %struct.page** @dma_common_find_pages(i8* %35)
  store %struct.page** %36, %struct.page*** %10, align 8
  %37 = load %struct.page**, %struct.page*** %10, align 8
  %38 = icmp ne %struct.page** %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = call %struct.page* @vmalloc_to_page(i8* %40)
  store %struct.page* %41, %struct.page** %9, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @dma_common_free_remap(i8* %43, i64 %44)
  br label %49

46:                                               ; preds = %30, %26
  %47 = load i8*, i8** %6, align 8
  %48 = call %struct.page* @virt_to_page(i8* %47)
  store %struct.page* %48, %struct.page** %9, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.page**, %struct.page*** %10, align 8
  %51 = icmp ne %struct.page** %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.page**, %struct.page*** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @__iommu_dma_free_pages(%struct.page** %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = icmp ne %struct.page* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.page*, %struct.page** %9, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @dma_free_contiguous(%struct.device* %60, %struct.page* %61, i64 %62)
  br label %64

64:                                               ; preds = %25, %59, %56
  ret void
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @dma_free_from_pool(i8*, i64) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local %struct.page** @dma_common_find_pages(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i32 @dma_common_free_remap(i8*, i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @__iommu_dma_free_pages(%struct.page**, i32) #1

declare dso_local i32 @dma_free_contiguous(%struct.device*, %struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
