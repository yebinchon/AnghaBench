; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_get_by_fwnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c_viommu_get_by_fwnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.viommu_dev = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.viommu_dev* }

@virtio_iommu_drv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@viommu_match_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.viommu_dev* (%struct.fwnode_handle*)* @viommu_get_by_fwnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.viommu_dev* @viommu_get_by_fwnode(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %2, align 8
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %5 = load i32, i32* @viommu_match_node, align 4
  %6 = call %struct.device* @driver_find_device(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @virtio_iommu_drv, i32 0, i32 0), i32* null, %struct.fwnode_handle* %4, i32 %5)
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @put_device(%struct.device* %7)
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.TYPE_4__* @dev_to_virtio(%struct.device* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.viommu_dev*, %struct.viommu_dev** %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi %struct.viommu_dev* [ %15, %11 ], [ null, %16 ]
  ret %struct.viommu_dev* %18
}

declare dso_local %struct.device* @driver_find_device(i32*, i32*, %struct.fwnode_handle*, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @dev_to_virtio(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
