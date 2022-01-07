; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_fwspec = type { %struct.arm_smmu_master_cfg*, i32* }
%struct.arm_smmu_master_cfg = type { %struct.arm_smmu_device* }
%struct.arm_smmu_device = type { i32 }

@arm_smmu_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @arm_smmu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iommu_fwspec*, align 8
  %4 = alloca %struct.arm_smmu_master_cfg*, align 8
  %5 = alloca %struct.arm_smmu_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %7)
  store %struct.iommu_fwspec* %8, %struct.iommu_fwspec** %3, align 8
  %9 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %10 = icmp ne %struct.iommu_fwspec* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %13 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, @arm_smmu_ops
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %19 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %18, i32 0, i32 0
  %20 = load %struct.arm_smmu_master_cfg*, %struct.arm_smmu_master_cfg** %19, align 8
  store %struct.arm_smmu_master_cfg* %20, %struct.arm_smmu_master_cfg** %4, align 8
  %21 = load %struct.arm_smmu_master_cfg*, %struct.arm_smmu_master_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.arm_smmu_master_cfg, %struct.arm_smmu_master_cfg* %21, i32 0, i32 0
  %23 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %22, align 8
  store %struct.arm_smmu_device* %23, %struct.arm_smmu_device** %5, align 8
  %24 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %25 = call i32 @arm_smmu_rpm_get(%struct.arm_smmu_device* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %46

29:                                               ; preds = %17
  %30 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %31 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %30, i32 0, i32 0
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = call i32 @iommu_device_unlink(i32* %31, %struct.device* %32)
  %34 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %35 = call i32 @arm_smmu_master_free_smes(%struct.iommu_fwspec* %34)
  %36 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %37 = call i32 @arm_smmu_rpm_put(%struct.arm_smmu_device* %36)
  %38 = load %struct.device*, %struct.device** %2, align 8
  %39 = call i32 @iommu_group_remove_device(%struct.device* %38)
  %40 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %41 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %40, i32 0, i32 0
  %42 = load %struct.arm_smmu_master_cfg*, %struct.arm_smmu_master_cfg** %41, align 8
  %43 = call i32 @kfree(%struct.arm_smmu_master_cfg* %42)
  %44 = load %struct.device*, %struct.device** %2, align 8
  %45 = call i32 @iommu_fwspec_free(%struct.device* %44)
  br label %46

46:                                               ; preds = %29, %28, %16
  ret void
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @arm_smmu_rpm_get(%struct.arm_smmu_device*) #1

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @arm_smmu_master_free_smes(%struct.iommu_fwspec*) #1

declare dso_local i32 @arm_smmu_rpm_put(%struct.arm_smmu_device*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.arm_smmu_master_cfg*) #1

declare dso_local i32 @iommu_fwspec_free(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
