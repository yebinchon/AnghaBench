; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_iotlb_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_iotlb_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.arm_smmu_domain = type { %struct.TYPE_2__*, %struct.arm_smmu_device* }
%struct.TYPE_2__ = type { i32 (%struct.arm_smmu_domain*)* }
%struct.arm_smmu_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iommu_domain*, %struct.iommu_iotlb_gather*)* @arm_smmu_iotlb_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_iotlb_sync(%struct.iommu_domain* %0, %struct.iommu_iotlb_gather* %1) #0 {
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.iommu_iotlb_gather*, align 8
  %5 = alloca %struct.arm_smmu_domain*, align 8
  %6 = alloca %struct.arm_smmu_device*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %3, align 8
  store %struct.iommu_iotlb_gather* %1, %struct.iommu_iotlb_gather** %4, align 8
  %7 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %8 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %7)
  store %struct.arm_smmu_domain* %8, %struct.arm_smmu_domain** %5, align 8
  %9 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %5, align 8
  %10 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %9, i32 0, i32 1
  %11 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %10, align 8
  store %struct.arm_smmu_device* %11, %struct.arm_smmu_device** %6, align 8
  %12 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %5, align 8
  %13 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %18 = call i32 @arm_smmu_rpm_get(%struct.arm_smmu_device* %17)
  %19 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %5, align 8
  %20 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.arm_smmu_domain*)*, i32 (%struct.arm_smmu_domain*)** %22, align 8
  %24 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %5, align 8
  %25 = call i32 %23(%struct.arm_smmu_domain* %24)
  %26 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %6, align 8
  %27 = call i32 @arm_smmu_rpm_put(%struct.arm_smmu_device* %26)
  br label %28

28:                                               ; preds = %16, %2
  ret void
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @arm_smmu_rpm_get(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_rpm_put(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
