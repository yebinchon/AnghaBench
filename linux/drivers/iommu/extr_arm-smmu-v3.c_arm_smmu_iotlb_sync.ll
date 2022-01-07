; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_iotlb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_iotlb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32, i64, i64 }
%struct.arm_smmu_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.iommu_iotlb_gather*)* @arm_smmu_iotlb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_iotlb_sync(%struct.iommu_domain* %0, %struct.iommu_iotlb_gather* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.iommu_iotlb_gather*, align 8
  %5 = alloca %struct.arm_smmu_domain*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.iommu_iotlb_gather* %1, %struct.iommu_iotlb_gather** %4, align 8
  %6 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %7 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %6)
  store %struct.arm_smmu_domain* %7, %struct.arm_smmu_domain** %5, align 8
  %8 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %4, align 8
  %9 = getelementptr inbounds %struct.iommu_iotlb_gather, %struct.iommu_iotlb_gather* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %4, align 8
  %12 = getelementptr inbounds %struct.iommu_iotlb_gather, %struct.iommu_iotlb_gather* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %4, align 8
  %15 = getelementptr inbounds %struct.iommu_iotlb_gather, %struct.iommu_iotlb_gather* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %4, align 8
  %19 = getelementptr inbounds %struct.iommu_iotlb_gather, %struct.iommu_iotlb_gather* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %5, align 8
  %22 = call i32 @arm_smmu_tlb_inv_range(i64 %10, i64 %17, i32 %20, i32 1, %struct.arm_smmu_domain* %21)
  ret void
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @arm_smmu_tlb_inv_range(i64, i64, i32, i32, %struct.arm_smmu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
