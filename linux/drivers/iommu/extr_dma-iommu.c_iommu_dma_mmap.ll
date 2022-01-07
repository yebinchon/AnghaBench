; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vm_area_struct = type { i64, i32, i64, i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@CONFIG_DMA_REMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.vm_area_struct*, i8*, i32, i64, i64)* @iommu_dma_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_dma_mmap(%struct.device* %0, %struct.vm_area_struct* %1, i8* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.page**, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i64 @PAGE_ALIGN(i64 %19)
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  store i64 %22, i64* %14, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %16, align 8
  %26 = load %struct.device*, %struct.device** %8, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @dma_pgprot(%struct.device* %26, i32 %29, i64 %30)
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i64 @dma_mmap_from_dev_coherent(%struct.device* %34, %struct.vm_area_struct* %35, i8* %36, i64 %37, i32* %17)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %7, align 4
  br label %100

42:                                               ; preds = %6
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %48 = call i64 @vma_pages(%struct.vm_area_struct* %47)
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %16, align 8
  %51 = sub i64 %49, %50
  %52 = icmp ugt i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %46, %42
  %54 = load i32, i32* @ENXIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %100

56:                                               ; preds = %46
  %57 = load i32, i32* @CONFIG_DMA_REMAP, align 4
  %58 = call i64 @IS_ENABLED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = call i64 @is_vmalloc_addr(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = call %struct.page** @dma_common_find_pages(i8* %65)
  store %struct.page** %66, %struct.page*** %18, align 8
  %67 = load %struct.page**, %struct.page*** %18, align 8
  %68 = icmp ne %struct.page** %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.page**, %struct.page*** %18, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %73 = call i32 @__iommu_dma_mmap(%struct.page** %70, i64 %71, %struct.vm_area_struct* %72)
  store i32 %73, i32* %7, align 4
  br label %100

74:                                               ; preds = %64
  %75 = load i8*, i8** %10, align 8
  %76 = call i64 @vmalloc_to_pfn(i8* %75)
  store i64 %76, i64* %15, align 8
  br label %81

77:                                               ; preds = %60, %56
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @virt_to_page(i8* %78)
  %80 = call i64 @page_to_pfn(i32 %79)
  store i64 %80, i64* %15, align 8
  br label %81

81:                                               ; preds = %77, %74
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = add i64 %86, %87
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %90 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @remap_pfn_range(%struct.vm_area_struct* %82, i64 %85, i64 %88, i64 %95, i32 %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %81, %69, %53, %40
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @dma_pgprot(%struct.device*, i32, i64) #1

declare dso_local i64 @dma_mmap_from_dev_coherent(%struct.device*, %struct.vm_area_struct*, i8*, i64, i32*) #1

declare dso_local i64 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local %struct.page** @dma_common_find_pages(i8*) #1

declare dso_local i32 @__iommu_dma_mmap(%struct.page**, i64, %struct.vm_area_struct*) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
