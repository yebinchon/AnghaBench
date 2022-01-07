; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_as_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_as_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_smmu = type { i32 }
%struct.tegra_smmu_as = type { i64, i32*, i32, i32 }

@SMMU_SIZE_PD = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_smmu*, %struct.tegra_smmu_as*)* @tegra_smmu_as_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_as_unprepare(%struct.tegra_smmu* %0, %struct.tegra_smmu_as* %1) #0 {
  %3 = alloca %struct.tegra_smmu*, align 8
  %4 = alloca %struct.tegra_smmu_as*, align 8
  store %struct.tegra_smmu* %0, %struct.tegra_smmu** %3, align 8
  store %struct.tegra_smmu_as* %1, %struct.tegra_smmu_as** %4, align 8
  %5 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %6 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %28

11:                                               ; preds = %2
  %12 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %13 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @tegra_smmu_free_asid(%struct.tegra_smmu* %12, i32 %15)
  %17 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SMMU_SIZE_PD, align 4
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @dma_unmap_page(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @tegra_smmu_free_asid(%struct.tegra_smmu*, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
