; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_pte_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_pte_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu_as = type { i32, %struct.page** }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.tegra_smmu_as*, i64, i32*)* @tegra_smmu_pte_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tegra_smmu_pte_lookup(%struct.tegra_smmu_as* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tegra_smmu_as*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32*, align 8
  store %struct.tegra_smmu_as* %0, %struct.tegra_smmu_as** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @iova_pd_index(i64 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %14 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %13, i32 0, i32 1
  %15 = load %struct.page**, %struct.page*** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.page*, %struct.page** %15, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %9, align 8
  %20 = load %struct.page*, %struct.page** %9, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @page_address(i32 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @smmu_pde_to_dma(i32 %32)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.page*, %struct.page** %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32* @tegra_smmu_pte_offset(%struct.page* %35, i64 %36)
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %23, %22
  %39 = load i32*, i32** %4, align 8
  ret i32* %39
}

declare dso_local i32 @iova_pd_index(i64) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i32 @smmu_pde_to_dma(i32) #1

declare dso_local i32* @tegra_smmu_pte_offset(%struct.page*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
