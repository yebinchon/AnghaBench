; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.arm_smmu_domain = type { i32, i32 }

@ARM_SMMU_DOMAIN_NESTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i32, i8*)* @arm_smmu_domain_get_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_domain_get_attr(%struct.iommu_domain* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.arm_smmu_domain*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %10 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %9)
  store %struct.arm_smmu_domain* %10, %struct.arm_smmu_domain** %8, align 8
  %11 = load %struct.iommu_domain*, %struct.iommu_domain** %5, align 8
  %12 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %39 [
    i32 128, label %14
    i32 129, label %28
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %25 [
    i32 130, label %16
  ]

16:                                               ; preds = %14
  %17 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %18 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ARM_SMMU_DOMAIN_NESTED, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %42

25:                                               ; preds = %14
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %36 [
    i32 131, label %30
  ]

30:                                               ; preds = %28
  %31 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %32 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %42

36:                                               ; preds = %28
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %36, %30, %25, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
