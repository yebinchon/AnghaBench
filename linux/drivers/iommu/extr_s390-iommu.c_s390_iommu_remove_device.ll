; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_s390-iommu.c_s390_iommu_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.zpci_dev = type { i32, i64 }
%struct.iommu_domain = type { i32 }
%struct.TYPE_2__ = type { %struct.zpci_dev* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @s390_iommu_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_iommu_remove_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.TYPE_2__* @to_pci_dev(%struct.device* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.zpci_dev*, %struct.zpci_dev** %7, align 8
  store %struct.zpci_dev* %8, %struct.zpci_dev** %3, align 8
  %9 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %10 = icmp ne %struct.zpci_dev* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device* %17)
  store %struct.iommu_domain* %18, %struct.iommu_domain** %4, align 8
  %19 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %20 = icmp ne %struct.iommu_domain* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %23 = load %struct.device*, %struct.device** %2, align 8
  %24 = call i32 @s390_iommu_detach_device(%struct.iommu_domain* %22, %struct.device* %23)
  br label %25

25:                                               ; preds = %21, %16
  br label %26

26:                                               ; preds = %25, %11, %1
  %27 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = call i32 @iommu_device_unlink(i32* %28, %struct.device* %29)
  %31 = load %struct.device*, %struct.device** %2, align 8
  %32 = call i32 @iommu_group_remove_device(%struct.device* %31)
  ret void
}

declare dso_local %struct.TYPE_2__* @to_pci_dev(%struct.device*) #1

declare dso_local %struct.iommu_domain* @iommu_get_domain_for_dev(%struct.device*) #1

declare dso_local i32 @s390_iommu_detach_device(%struct.iommu_domain*, %struct.device*) #1

declare dso_local i32 @iommu_device_unlink(i32*, %struct.device*) #1

declare dso_local i32 @iommu_group_remove_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
