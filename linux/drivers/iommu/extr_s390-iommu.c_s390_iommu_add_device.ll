; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_group = type { i32 }
%struct.zpci_dev = type { i32 }
%struct.TYPE_2__ = type { %struct.zpci_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @s390_iommu_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_iommu_add_device(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_group*, align 8
  %5 = alloca %struct.zpci_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %6)
  store %struct.iommu_group* %7, %struct.iommu_group** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.TYPE_2__* @to_pci_dev(%struct.device* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.zpci_dev*, %struct.zpci_dev** %10, align 8
  store %struct.zpci_dev* %11, %struct.zpci_dev** %5, align 8
  %12 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %13 = call i64 @IS_ERR(%struct.iommu_group* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.iommu_group* %16)
  store i32 %17, i32* %2, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.iommu_group*, %struct.iommu_group** %4, align 8
  %20 = call i32 @iommu_group_put(%struct.iommu_group* %19)
  %21 = load %struct.zpci_dev*, %struct.zpci_dev** %5, align 8
  %22 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @iommu_device_link(i32* %22, %struct.device* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @iommu_device_link(i32*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
