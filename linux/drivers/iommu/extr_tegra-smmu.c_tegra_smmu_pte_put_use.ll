; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_pte_put_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_pte_put_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu_as = type { i64*, %struct.page**, i32, %struct.tegra_smmu* }
%struct.page = type { i32 }
%struct.tegra_smmu = type { i32 }

@SMMU_SIZE_PT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu_as*, i64)* @tegra_smmu_pte_put_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_pte_put_use(%struct.tegra_smmu_as* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_smmu_as*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.tegra_smmu*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_smmu_as* %0, %struct.tegra_smmu_as** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @iova_pd_index(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %12, i32 0, i32 1
  %14 = load %struct.page**, %struct.page*** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.page*, %struct.page** %14, i64 %16
  %18 = load %struct.page*, %struct.page** %17, align 8
  store %struct.page* %18, %struct.page** %6, align 8
  %19 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %2
  %29 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %29, i32 0, i32 3
  %31 = load %struct.tegra_smmu*, %struct.tegra_smmu** %30, align 8
  store %struct.tegra_smmu* %31, %struct.tegra_smmu** %7, align 8
  %32 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @page_address(i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @smmu_pde_to_dma(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @tegra_smmu_set_pde(%struct.tegra_smmu_as* %42, i64 %43, i32 0)
  %45 = load %struct.tegra_smmu*, %struct.tegra_smmu** %7, align 8
  %46 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SMMU_SIZE_PT, align 4
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i32 @dma_unmap_page(i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.page*, %struct.page** %6, align 8
  %53 = call i32 @__free_page(%struct.page* %52)
  %54 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %54, i32 0, i32 1
  %56 = load %struct.page**, %struct.page*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.page*, %struct.page** %56, i64 %58
  store %struct.page* null, %struct.page** %59, align 8
  br label %60

60:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @iova_pd_index(i64) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i32 @smmu_pde_to_dma(i32) #1

declare dso_local i32 @tegra_smmu_set_pde(%struct.tegra_smmu_as*, i64, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
