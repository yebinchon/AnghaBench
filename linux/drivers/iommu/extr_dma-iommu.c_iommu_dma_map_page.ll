; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_map_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_dma-iommu.c_iommu_dma_map_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@DMA_ATTR_SKIP_CPU_SYNC = common dso_local global i64 0, align 8
@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.page*, i64, i64, i32, i64)* @iommu_dma_map_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_dma_map_page(%struct.device* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = call i64 @page_to_phys(%struct.page* %17)
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %13, align 8
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = call i32 @dev_is_dma_coherent(%struct.device* %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i64, i64* %12, align 8
  %26 = call i32 @dma_info_to_prot(i32 %23, i32 %24, i64 %25)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %15, align 4
  %31 = call i64 @__iommu_dma_map(%struct.device* %27, i64 %28, i64 %29, i32 %30)
  store i64 %31, i64* %16, align 8
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %6
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @DMA_ATTR_SKIP_CPU_SYNC, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @arch_sync_dma_for_device(%struct.device* %44, i64 %45, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %39, %34, %6
  %50 = load i64, i64* %16, align 8
  ret i64 %50
}

declare dso_local i64 @page_to_phys(%struct.page*) #1

declare dso_local i32 @dev_is_dma_coherent(%struct.device*) #1

declare dso_local i32 @dma_info_to_prot(i32, i32, i64) #1

declare dso_local i64 @__iommu_dma_map(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @arch_sync_dma_for_device(%struct.device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
