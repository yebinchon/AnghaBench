; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.iommu_iotlb_gather = type { i32 }
%struct.io_pgtable_ops = type { i64 (%struct.io_pgtable_ops*, i64, i64, %struct.iommu_iotlb_gather*)* }
%struct.arm_smmu_device = type { i32 }
%struct.TYPE_2__ = type { %struct.arm_smmu_device*, %struct.io_pgtable_ops* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iommu_domain*, i64, i64, %struct.iommu_iotlb_gather*)* @arm_smmu_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_smmu_unmap(%struct.iommu_domain* %0, i64 %1, i64 %2, %struct.iommu_iotlb_gather* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iommu_domain*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iommu_iotlb_gather*, align 8
  %10 = alloca %struct.io_pgtable_ops*, align 8
  %11 = alloca %struct.arm_smmu_device*, align 8
  %12 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.iommu_iotlb_gather* %3, %struct.iommu_iotlb_gather** %9, align 8
  %13 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %14 = call %struct.TYPE_2__* @to_smmu_domain(%struct.iommu_domain* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %15, align 8
  store %struct.io_pgtable_ops* %16, %struct.io_pgtable_ops** %10, align 8
  %17 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  %18 = call %struct.TYPE_2__* @to_smmu_domain(%struct.iommu_domain* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %19, align 8
  store %struct.arm_smmu_device* %20, %struct.arm_smmu_device** %11, align 8
  %21 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %10, align 8
  %22 = icmp ne %struct.io_pgtable_ops* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %38

24:                                               ; preds = %4
  %25 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %11, align 8
  %26 = call i32 @arm_smmu_rpm_get(%struct.arm_smmu_device* %25)
  %27 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %10, align 8
  %28 = getelementptr inbounds %struct.io_pgtable_ops, %struct.io_pgtable_ops* %27, i32 0, i32 0
  %29 = load i64 (%struct.io_pgtable_ops*, i64, i64, %struct.iommu_iotlb_gather*)*, i64 (%struct.io_pgtable_ops*, i64, i64, %struct.iommu_iotlb_gather*)** %28, align 8
  %30 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.iommu_iotlb_gather*, %struct.iommu_iotlb_gather** %9, align 8
  %34 = call i64 %29(%struct.io_pgtable_ops* %30, i64 %31, i64 %32, %struct.iommu_iotlb_gather* %33)
  store i64 %34, i64* %12, align 8
  %35 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %11, align 8
  %36 = call i32 @arm_smmu_rpm_put(%struct.arm_smmu_device* %35)
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %24, %23
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

declare dso_local %struct.TYPE_2__* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @arm_smmu_rpm_get(%struct.arm_smmu_device*) #1

declare dso_local i32 @arm_smmu_rpm_put(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
