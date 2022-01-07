; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_fwspec = type { %struct.arm_smmu_master*, i32* }
%struct.arm_smmu_master = type { %struct.arm_smmu_device* }
%struct.arm_smmu_device = type { i32 }

@arm_smmu_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @arm_smmu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iommu_fwspec*, align 8
  %4 = alloca %struct.arm_smmu_master*, align 8
  %5 = alloca %struct.arm_smmu_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device* %6)
  store %struct.iommu_fwspec* %7, %struct.iommu_fwspec** %3, align 8
  %8 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %9 = icmp ne %struct.iommu_fwspec* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %12 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, @arm_smmu_ops
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %35

16:                                               ; preds = %10
  %17 = load %struct.iommu_fwspec*, %struct.iommu_fwspec** %3, align 8
  %18 = getelementptr inbounds %struct.iommu_fwspec, %struct.iommu_fwspec* %17, i32 0, i32 0
  %19 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %18, align 8
  store %struct.arm_smmu_master* %19, %struct.arm_smmu_master** %4, align 8
  %20 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %21 = getelementptr inbounds %struct.arm_smmu_master, %struct.arm_smmu_master* %20, i32 0, i32 0
  %22 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %21, align 8
  store %struct.arm_smmu_device* %22, %struct.arm_smmu_device** %5, align 8
  %23 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %24 = call i32 @arm_smmu_detach_dev(%struct.arm_smmu_master* %23)
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @iommu_group_remove_device(%struct.device* %25)
  %27 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %5, align 8
  %28 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = call i32 @iommu_device_unlink(i32* %28, %struct.device* %29)
  %31 = load %struct.arm_smmu_master*, %struct.arm_smmu_master** %4, align 8
  %32 = call i32 @kfree(%struct.arm_smmu_master* %31)
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = call i32 @iommu_fwspec_free(%struct.device* %33)
  br label %35

35:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.iommu_fwspec* @dev_iommu_fwspec_get(%struct.device*) #1

declare dso_local i32 @arm_smmu_detach_dev(%struct.arm_smmu_master*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @kfree(%struct.arm_smmu_master*) #1

declare dso_local i32 @iommu_fwspec_free(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
