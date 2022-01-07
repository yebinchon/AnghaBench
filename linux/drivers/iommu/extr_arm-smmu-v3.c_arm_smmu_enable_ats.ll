; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_enable_ats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_enable_ats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_master = type { i32, i32, %struct.arm_smmu_domain*, %struct.arm_smmu_device* }
%struct.arm_smmu_domain = type { i32 }
%struct.arm_smmu_device = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to enable ATS (STU %zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_master*)* @arm_smmu_enable_ats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_enable_ats(%struct.arm_smmu_master* %0) #0 {
  %2 = alloca %struct.arm_smmu_master*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.arm_smmu_device*, align 8
  %6 = alloca %struct.arm_smmu_domain*, align 8
  store %struct.arm_smmu_master* %0, %struct.arm_smmu_master** %2, align 8
  %7 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %8 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %7, i32 0, i32 3
  %9 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %8, align 8
  store %struct.arm_smmu_device* %9, %struct.arm_smmu_device** %5, align 8
  %10 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %11 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %10, i32 0, i32 2
  %12 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %11, align 8
  store %struct.arm_smmu_domain* %12, %struct.arm_smmu_domain** %6, align 8
  %13 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %14 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %42

18:                                               ; preds = %1
  %19 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %20 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @__ffs(i32 %21)
  store i64 %22, i64* %3, align 8
  %23 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %24 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.pci_dev* @to_pci_dev(i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %4, align 8
  %27 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %6, align 8
  %28 = getelementptr inbounds %struct.arm_smmu_domain, %struct.arm_smmu_domain* %27, i32 0, i32 0
  %29 = call i32 @atomic_inc(i32* %28)
  %30 = load %struct.arm_smmu_domain*, %struct.arm_smmu_domain** %6, align 8
  %31 = call i32 @arm_smmu_atc_inv_domain(%struct.arm_smmu_domain* %30, i32 0, i32 0, i32 0)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @pci_enable_ats(%struct.pci_dev* %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %2, align 8
  %38 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %17, %36, %18
  ret void
}

declare dso_local i64 @__ffs(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @arm_smmu_atc_inv_domain(%struct.arm_smmu_domain*, i32, i32, i32) #1

declare dso_local i64 @pci_enable_ats(%struct.pci_dev*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
