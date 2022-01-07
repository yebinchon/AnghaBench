; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tegra_smmu* }
%struct.tegra_smmu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @tegra_smmu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tegra_smmu*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.tegra_smmu*, %struct.tegra_smmu** %6, align 8
  store %struct.tegra_smmu* %7, %struct.tegra_smmu** %3, align 8
  %8 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %9 = icmp ne %struct.tegra_smmu* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.tegra_smmu*, %struct.tegra_smmu** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_smmu, %struct.tegra_smmu* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = call i32 @iommu_device_unlink(i32* %12, %struct.device* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.tegra_smmu* null, %struct.tegra_smmu** %18, align 8
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = call i32 @iommu_group_remove_device(%struct.device* %19)
  ret void
}

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
