; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_domain_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_tegra-smmu.c_tegra_smmu_domain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.tegra_smmu_as = type { %struct.tegra_smmu_as*, %struct.tegra_smmu_as*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*)* @tegra_smmu_domain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_smmu_domain_free(%struct.iommu_domain* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.tegra_smmu_as*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %2, align 8
  %4 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  %5 = call %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain* %4)
  store %struct.tegra_smmu_as* %5, %struct.tegra_smmu_as** %3, align 8
  %6 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %10, i32 0, i32 1
  %12 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %11, align 8
  %13 = call i32 @kfree(%struct.tegra_smmu_as* %12)
  %14 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_smmu_as, %struct.tegra_smmu_as* %14, i32 0, i32 0
  %16 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %15, align 8
  %17 = call i32 @kfree(%struct.tegra_smmu_as* %16)
  %18 = load %struct.tegra_smmu_as*, %struct.tegra_smmu_as** %3, align 8
  %19 = call i32 @kfree(%struct.tegra_smmu_as* %18)
  ret void
}

declare dso_local %struct.tegra_smmu_as* @to_smmu_as(%struct.iommu_domain*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kfree(%struct.tegra_smmu_as*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
