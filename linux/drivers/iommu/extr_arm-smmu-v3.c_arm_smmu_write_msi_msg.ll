; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_write_msi_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_write_msi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.msi_msg = type { i32, i32, i64 }
%struct.device = type { i32 }
%struct.arm_smmu_device = type { i32 }

@arm_smmu_msi_cfg = common dso_local global i32** null, align 8
@MSI_CFG0_ADDR_MASK = common dso_local global i32 0, align 4
@ARM_SMMU_MEMATTR_DEVICE_nGnRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_desc*, %struct.msi_msg*)* @arm_smmu_write_msi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_write_msi_msg(%struct.msi_desc* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca %struct.msi_desc*, align 8
  %4 = alloca %struct.msi_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.arm_smmu_device*, align 8
  %8 = alloca i32*, align 8
  store %struct.msi_desc* %0, %struct.msi_desc** %3, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %4, align 8
  %9 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %10 = call %struct.device* @msi_desc_to_dev(%struct.msi_desc* %9)
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.arm_smmu_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.arm_smmu_device* %12, %struct.arm_smmu_device** %7, align 8
  %13 = load i32**, i32*** @arm_smmu_msi_cfg, align 8
  %14 = load %struct.msi_desc*, %struct.msi_desc** %3, align 8
  %15 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32*, i32** %13, i64 %17
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %21 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 32
  %25 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %26 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @MSI_CFG0_ADDR_MASK, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %7, align 8
  %34 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = call i32 @writeq_relaxed(i32 %32, i32 %39)
  %41 = load %struct.msi_msg*, %struct.msi_msg** %4, align 8
  %42 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %7, align 8
  %45 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = call i32 @writel_relaxed(i32 %43, i32 %50)
  %52 = load i32, i32* @ARM_SMMU_MEMATTR_DEVICE_nGnRE, align 4
  %53 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %7, align 8
  %54 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  %60 = call i32 @writel_relaxed(i32 %52, i32 %59)
  ret void
}

declare dso_local %struct.device* @msi_desc_to_dev(%struct.msi_desc*) #1

declare dso_local %struct.arm_smmu_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @writeq_relaxed(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
