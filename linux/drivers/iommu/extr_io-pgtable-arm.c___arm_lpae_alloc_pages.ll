; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_alloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_io-pgtable-arm.c___arm_lpae_alloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pgtable_cfg = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.page = type { i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Cannot accommodate DMA translation for IOMMU page tables\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32, %struct.io_pgtable_cfg*)* @__arm_lpae_alloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__arm_lpae_alloc_pages(i64 %0, i32 %1, %struct.io_pgtable_cfg* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.io_pgtable_cfg*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.io_pgtable_cfg* %2, %struct.io_pgtable_cfg** %7, align 8
  %13 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %7, align 8
  %14 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %13, i32 0, i32 1
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @get_order(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @__GFP_HIGHMEM, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @VM_BUG_ON(i32 %20)
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = call i32 @dev_to_node(%struct.device* %25)
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @NUMA_NO_NODE, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ %26, %24 ], [ %28, %27 ]
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @__GFP_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.page* @alloc_pages_node(i32 %30, i32 %33, i32 %34)
  store %struct.page* %35, %struct.page** %10, align 8
  %36 = load %struct.page*, %struct.page** %10, align 8
  %37 = icmp ne %struct.page* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i8* null, i8** %4, align 8
  br label %78

39:                                               ; preds = %29
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = call i8* @page_address(%struct.page* %40)
  store i8* %41, i8** %12, align 8
  %42 = load %struct.io_pgtable_cfg*, %struct.io_pgtable_cfg** %7, align 8
  %43 = getelementptr inbounds %struct.io_pgtable_cfg, %struct.io_pgtable_cfg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %39
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i64 @dma_map_single(%struct.device* %47, i8* %48, i64 %49, i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @dma_mapping_error(%struct.device* %52, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %74

57:                                               ; preds = %46
  %58 = load i64, i64* %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = call i64 @virt_to_phys(i8* %59)
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %66

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %4, align 8
  br label %78

66:                                               ; preds = %62
  %67 = load %struct.device*, %struct.device** %8, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.device*, %struct.device** %8, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @dma_unmap_single(%struct.device* %69, i64 %70, i64 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %56
  %75 = load %struct.page*, %struct.page** %10, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @__free_pages(%struct.page* %75, i32 %76)
  store i8* null, i8** %4, align 8
  br label %78

78:                                               ; preds = %74, %64, %38
  %79 = load i8*, i8** %4, align 8
  ret i8* %79
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i64 @dma_map_single(%struct.device*, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i64) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
