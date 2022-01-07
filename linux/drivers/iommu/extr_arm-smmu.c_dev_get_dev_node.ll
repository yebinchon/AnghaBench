; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_dev_get_dev_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_dev_get_dev_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.pci_bus = type { %struct.TYPE_5__*, %struct.pci_bus* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.pci_bus* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device*)* @dev_get_dev_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @dev_get_dev_node(%struct.device* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call i64 @dev_is_pci(%struct.device* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.TYPE_6__* @to_pci_dev(%struct.device* %9)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  store %struct.pci_bus* %12, %struct.pci_bus** %4, align 8
  br label %13

13:                                               ; preds = %18, %8
  %14 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %15 = call i32 @pci_is_root_bus(%struct.pci_bus* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 1
  %21 = load %struct.pci_bus*, %struct.pci_bus** %20, align 8
  store %struct.pci_bus* %21, %struct.pci_bus** %4, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %24 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.device_node* @of_node_get(i32 %29)
  store %struct.device_node* %30, %struct.device_node** %2, align 8
  br label %36

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.device_node* @of_node_get(i32 %34)
  store %struct.device_node* %35, %struct.device_node** %2, align 8
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %37
}

declare dso_local i64 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.TYPE_6__* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @pci_is_root_bus(%struct.pci_bus*) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
