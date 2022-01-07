; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_device_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_device_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tegra_smmu* }
%struct.tegra_smmu = type { i32 }
%struct.iommu_fwspec = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iommu_group* (%struct.device*)* @tegra_smmu_device_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iommu_group* @tegra_smmu_device_group(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iommu_fwspec*, align 8
  %4 = alloca %struct.tegra_smmu*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %6)
  store %struct.iommu_fwspec* %7, %struct.iommu_fwspec** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.tegra_smmu*, %struct.tegra_smmu** %10, align 8
  store %struct.tegra_smmu* %11, %struct.tegra_smmu** %4, align 8
  %12 = load %struct.tegra_smmu*, %struct.tegra_smmu** %4, align 8
  %13 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %14 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.iommu_group* @tegra_smmu_group_get(%struct.tegra_smmu* %12, i32 %17)
  store %struct.iommu_group* %18, %struct.iommu_group** %5, align 8
  %19 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %20 = icmp ne %struct.iommu_group* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call %struct.iommu_group* @generic_device_group(%struct.device* %22)
  store %struct.iommu_group* %23, %struct.iommu_group** %5, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  ret %struct.iommu_group* %25
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local %struct.iommu_group* @tegra_smmu_group_get(%struct.tegra_smmu*, i32) #1

declare dso_local %struct.iommu_group* @generic_device_group(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
