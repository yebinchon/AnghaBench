; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_set_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_domain_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.arm_smmu_domain = type { i32, i32, i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@ARM_SMMU_DOMAIN_NESTED = common dso_local global i32 0, align 4
@ARM_SMMU_DOMAIN_S1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iommu_domain*, i32, i8*)* @arm_smmu_domain_set_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_smmu_domain_set_attr(%struct.iommu_domain* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.arm_smmu_domain*, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %10 = call %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain* %9)
  store %struct.arm_smmu_domain* %10, %struct.arm_smmu_domain** %8, align 8
  %11 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %12 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %15 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %57 [
    i32 128, label %17
    i32 129, label %45
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %41 [
    i32 130, label %19
  ]

19:                                               ; preds = %17
  %20 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %21 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %61

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @ARM_SMMU_DOMAIN_NESTED, align 4
  %34 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %35 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @ARM_SMMU_DOMAIN_S1, align 4
  %38 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %39 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %32
  br label %44

41:                                               ; preds = %17
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %60

45:                                               ; preds = %3
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %53 [
    i32 131, label %47
  ]

47:                                               ; preds = %45
  %48 = load i8*, i8** %6, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %52 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %47
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %56, %44
  br label %61

61:                                               ; preds = %60, %24
  %62 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %8, align 8
  %63 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.arm_smmu_domain* @to_smmu_domain(%struct.iommu_domain*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
