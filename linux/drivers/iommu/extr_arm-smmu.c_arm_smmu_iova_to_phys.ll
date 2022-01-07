; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_iova_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_iova_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i64 }
%struct.arm_smmu_domain = type { i64, %struct.TYPE_2__*, %struct.io_pgtable_ops* }
%struct.TYPE_2__ = type { i32 }
%struct.io_pgtable_ops = type { i32 (%struct.io_pgtable_ops*, i32)* }

@IOMMU_DOMAIN_IDENTITY = common dso_local global i64 0, align 8
@ARM_SMMU_FEAT_TRANS_OPS = common dso_local global i32 0, align 4
@ARM_SMMU_DOMAIN_S1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i32)* @arm_smmu_iova_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_iova_to_phys(%struct.iommu_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arm_smmu_domain*, align 8
  %7 = alloca %struct.io_pgtable_ops*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %9 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %8)
  store %struct.arm_smmu_domain* %9, %struct.arm_smmu_domain** %6, align 8
  %10 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %6, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %10, i32 0, i32 2
  %12 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %11, align 8
  store %struct.io_pgtable_ops* %12, %struct.io_pgtable_ops** %7, align 8
  %13 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %14 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IOMMU_DOMAIN_IDENTITY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %7, align 8
  %22 = icmp ne %struct.io_pgtable_ops* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %50

24:                                               ; preds = %20
  %25 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %6, align 8
  %26 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ARM_SMMU_FEAT_TRANS_OPS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %6, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ARM_SMMU_DOMAIN_S1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @arm_smmu_iova_to_phys_hard(%struct.iommu_domain* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %33, %24
  %44 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %7, align 8
  %45 = getelementptr inbounds %struct.io_pgtable_ops, %struct.io_pgtable_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.io_pgtable_ops*, i32)*, i32 (%struct.io_pgtable_ops*, i32)** %45, align 8
  %47 = load %struct.io_pgtable_ops*, %struct.io_pgtable_ops** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 %46(%struct.io_pgtable_ops* %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %43, %39, %23, %18
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @arm_smmu_iova_to_phys_hard(%struct.iommu_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
