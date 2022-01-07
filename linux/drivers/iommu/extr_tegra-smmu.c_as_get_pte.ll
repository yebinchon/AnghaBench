; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_as_get_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_as_get_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu_as = type { %struct.page**, i32, %struct.tegra_smmu* }
%struct.page = type { i32 }
%struct.tegra_smmu = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@SMMU_SIZE_PT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SMMU_PDE_ATTR = common dso_local global i32 0, align 4
@SMMU_PDE_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tegra_smmu_as*, i32, i32*)* @as_get_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @as_get_pte(%struct.tegra_smmu_as* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tegra_smmu_as*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_smmu*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.tegra_smmu_as* %0, %struct.tegra_smmu_as** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @iova_pd_index(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %15, i32 0, i32 2
  %17 = load %struct.tegra_smmu*, %struct.tegra_smmu** %16, align 8
  store %struct.tegra_smmu* %17, %struct.tegra_smmu** %9, align 8
  %18 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %19 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %18, i32 0, i32 0
  %20 = load %struct.page**, %struct.page*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.page*, %struct.page** %20, i64 %22
  %24 = load %struct.page*, %struct.page** %23, align 8
  %25 = icmp ne %struct.page* %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = load i32, i32* @__GFP_DMA, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @__GFP_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.page* @alloc_page(i32 %31)
  store %struct.page* %32, %struct.page** %10, align 8
  %33 = load %struct.page*, %struct.page** %10, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %108

36:                                               ; preds = %26
  %37 = load %struct.tegra_smmu*, %struct.tegra_smmu** %9, align 8
  %38 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.page*, %struct.page** %10, align 8
  %41 = load i32, i32* @SMMU_SIZE_PT, align 4
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @dma_map_page(i32 %39, %struct.page* %40, i32 0, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.tegra_smmu*, %struct.tegra_smmu** %9, align 8
  %45 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @dma_mapping_error(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.page*, %struct.page** %10, align 8
  %52 = call i32 @__free_page(%struct.page* %51)
  store i32* null, i32** %4, align 8
  br label %108

53:                                               ; preds = %36
  %54 = load %struct.tegra_smmu*, %struct.tegra_smmu** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @smmu_dma_addr_valid(%struct.tegra_smmu* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.tegra_smmu*, %struct.tegra_smmu** %9, align 8
  %60 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SMMU_SIZE_PT, align 4
  %64 = load i32, i32* @DMA_TO_DEVICE, align 4
  %65 = call i32 @dma_unmap_page(i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = call i32 @__free_page(%struct.page* %66)
  store i32* null, i32** %4, align 8
  br label %108

68:                                               ; preds = %53
  %69 = load %struct.page*, %struct.page** %10, align 8
  %70 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %71 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %70, i32 0, i32 0
  %72 = load %struct.page**, %struct.page*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.page*, %struct.page** %72, i64 %74
  store %struct.page* %69, %struct.page** %75, align 8
  %76 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @SMMU_PDE_ATTR, align 4
  %80 = load i32, i32* @SMMU_PDE_NEXT, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @SMMU_MK_PDE(i32 %78, i32 %81)
  %83 = call i32 @tegra_smmu_set_pde(%struct.tegra_smmu_as* %76, i32 %77, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %98

86:                                               ; preds = %3
  %87 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %88 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32* @page_address(i32 %89)
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @smmu_pde_to_dma(i32 %95)
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %86, %68
  %99 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %100 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %99, i32 0, i32 0
  %101 = load %struct.page**, %struct.page*** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.page*, %struct.page** %101, i64 %103
  %105 = load %struct.page*, %struct.page** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32* @tegra_smmu_pte_offset(%struct.page* %105, i32 %106)
  store i32* %107, i32** %4, align 8
  br label %108

108:                                              ; preds = %98, %58, %50, %35
  %109 = load i32*, i32** %4, align 8
  ret i32* %109
}

declare dso_local i32 @iova_pd_index(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @smmu_dma_addr_valid(%struct.tegra_smmu*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @tegra_smmu_set_pde(%struct.tegra_smmu_as*, i32, i32) #1

declare dso_local i32 @SMMU_MK_PDE(i32, i32) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i32 @smmu_pde_to_dma(i32) #1

declare dso_local i32* @tegra_smmu_pte_offset(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
