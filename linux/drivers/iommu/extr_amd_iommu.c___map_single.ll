; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___map_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c___map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dma_ops_domain = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_MAPPING_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.dma_ops_domain*, i32, i64, i32, i32)* @__map_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__map_single(%struct.device* %0, %struct.dma_ops_domain* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dma_ops_domain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.dma_ops_domain* %1, %struct.dma_ops_domain** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PAGE_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  store i32 %25, i32* %14, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = call i32 @iommu_num_pages(i32 %26, i64 %27, i32 %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* @PAGE_MASK, align 4
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %10, align 4
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @dma_ops_alloc_iova(%struct.device* %33, %struct.dma_ops_domain* %34, i32 %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %6
  br label %80

41:                                               ; preds = %6
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dir2prot(i32 %42)
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %45

45:                                               ; preds = %68, %41
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %51 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %50, i32 0, i32 0
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call i32 @iommu_map_page(%struct.TYPE_6__* %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %82

61:                                               ; preds = %49
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  br label %45

71:                                               ; preds = %45
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %76 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %75, i32 0, i32 0
  %77 = load i32, i32* %15, align 4
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @domain_flush_np_cache(%struct.TYPE_6__* %76, i32 %77, i64 %78)
  br label %80

80:                                               ; preds = %71, %40
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %7, align 4
  br label %122

82:                                               ; preds = %60
  %83 = load i32, i32* %21, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %21, align 4
  br label %85

85:                                               ; preds = %97, %82
  %86 = load i32, i32* %21, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load i32, i32* %16, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %93 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %92, i32 0, i32 0
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @PAGE_SIZE, align 4
  %96 = call i32 @iommu_unmap_page(%struct.TYPE_6__* %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %21, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %102 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %18, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %107 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %106, i32 0, i32 0
  %108 = call i32 @domain_flush_tlb(%struct.TYPE_6__* %107)
  %109 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %110 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %109, i32 0, i32 0
  %111 = call i32 @domain_flush_complete(%struct.TYPE_6__* %110)
  %112 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %113 = getelementptr inbounds %struct.dma_ops_domain, %struct.dma_ops_domain* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %18, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load %struct.dma_ops_domain*, %struct.dma_ops_domain** %9, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @dma_ops_free_iova(%struct.dma_ops_domain* %117, i32 %118, i32 %119)
  %121 = load i32, i32* @DMA_MAPPING_ERROR, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %100, %80
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @iommu_num_pages(i32, i64, i32) #1

declare dso_local i32 @dma_ops_alloc_iova(%struct.device*, %struct.dma_ops_domain*, i32, i32) #1

declare dso_local i32 @dir2prot(i32) #1

declare dso_local i32 @iommu_map_page(%struct.TYPE_6__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @domain_flush_np_cache(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @iommu_unmap_page(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @domain_flush_tlb(%struct.TYPE_6__*) #1

declare dso_local i32 @domain_flush_complete(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_ops_free_iova(%struct.dma_ops_domain*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
