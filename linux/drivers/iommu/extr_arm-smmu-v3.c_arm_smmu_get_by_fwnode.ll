; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_get_by_fwnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu-v3.c_arm_smmu_get_by_fwnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.arm_smmu_device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.device = type { i32 }

@arm_smmu_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arm_smmu_device* (%struct.fwnode_handle*)* @arm_smmu_get_by_fwnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arm_smmu_device* @arm_smmu_get_by_fwnode(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %2, align 8
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %5 = call %struct.device* @driver_find_device_by_fwnode(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arm_smmu_driver, i32 0, i32 0), %struct.fwnode_handle* %4)
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @put_device(%struct.device* %6)
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.arm_smmu_device* @dev_get_drvdata(%struct.device* %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi %struct.arm_smmu_device* [ %12, %10 ], [ null, %13 ]
  ret %struct.arm_smmu_device* %15
}

declare dso_local %struct.device* @driver_find_device_by_fwnode(i32*, %struct.fwnode_handle*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.arm_smmu_device* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
