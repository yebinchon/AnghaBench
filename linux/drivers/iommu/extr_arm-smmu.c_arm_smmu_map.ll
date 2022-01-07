; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.io_pgtable_ops = type { i32 (%struct.io_pgtable_ops*, i64, i32, i64, i32)* }
%struct.arm_smmu_device = type { i32 }
%struct.TYPE_2__ = type { %struct.arm_smmu_device*, %struct.io_pgtable_ops* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i64, i32, i64, i32)* @arm_smmu_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_map(%struct.iommu_domain* %0, i64 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.io_pgtable_ops*, align 8
  %13 = alloca %struct.arm_smmu_device*, align 8
  %14 = alloca i32, align 4
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %16 = call %struct.TYPE_2__* @to_smmu_domain(%struct.iommu_domain* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %17, align 8
  store %struct.io_pgtable_ops* %18, %struct.io_pgtable_ops** %12, align 8
  %19 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %20 = call %struct.TYPE_2__* @to_smmu_domain(%struct.iommu_domain* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %21, align 8
  store %struct.arm_smmu_device* %22, %struct.arm_smmu_device** %13, align 8
  %23 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %12, align 8
  %24 = icmp ne %struct.io_pgtable_ops* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %43

28:                                               ; preds = %5
  %29 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %13, align 8
  %30 = call i32 @arm_smmu_rpm_get(%struct.arm_smmu_device* %29)
  %31 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %12, align 8
  %32 = getelementptr inbounds %struct.io_pgtable_ops, %struct.io_pgtable_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.io_pgtable_ops*, i64, i32, i64, i32)*, i32 (%struct.io_pgtable_ops*, i64, i32, i64, i32)** %32, align 8
  %34 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %12, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 %33(%struct.io_pgtable_ops* %34, i64 %35, i32 %36, i64 %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %13, align 8
  %41 = call i32 @arm_smmu_rpm_put(%struct.arm_smmu_device* %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %28, %25
  %44 = load i32, i32* %6, align 4
  ret i32 %44
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
