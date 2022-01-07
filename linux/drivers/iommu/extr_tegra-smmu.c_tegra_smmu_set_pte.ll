; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_set_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_set_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu_as = type { i32, %struct.tegra_smmu* }
%struct.tegra_smmu = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu_as*, i64, i32*, i32, i32)* @tegra_smmu_set_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_set_pte(%struct.tegra_smmu_as* %0, i64 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tegra_smmu_as*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tegra_smmu*, align 8
  %12 = alloca i64, align 8
  store %struct.tegra_smmu_as* %0, %struct.tegra_smmu_as** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %6, align 8
  %14 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %13, i32 0, i32 1
  %15 = load %struct.tegra_smmu*, %struct.tegra_smmu** %14, align 8
  store %struct.tegra_smmu* %15, %struct.tegra_smmu** %11, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @offset_in_page(i32* %16)
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %8, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.tegra_smmu*, %struct.tegra_smmu** %11, align 8
  %21 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* @DMA_TO_DEVICE, align 4
  %26 = call i32 @dma_sync_single_range_for_device(i32 %22, i32 %23, i64 %24, i32 4, i32 %25)
  %27 = load %struct.tegra_smmu*, %struct.tegra_smmu** %11, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @smmu_flush_ptc(%struct.tegra_smmu* %27, i32 %28, i64 %29)
  %31 = load %struct.tegra_smmu*, %struct.tegra_smmu** %11, align 8
  %32 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @smmu_flush_tlb_group(%struct.tegra_smmu* %31, i32 %34, i64 %35)
  %37 = load %struct.tegra_smmu*, %struct.tegra_smmu** %11, align 8
  %38 = call i32 @smmu_flush(%struct.tegra_smmu* %37)
  ret void
}

declare dso_local i64 @offset_in_page(i32*) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i32, i64, i32, i32) #1

declare dso_local i32 @smmu_flush_ptc(%struct.tegra_smmu*, i32, i64) #1

declare dso_local i32 @smmu_flush_tlb_group(%struct.tegra_smmu*, i32, i64) #1

declare dso_local i32 @smmu_flush(%struct.tegra_smmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
