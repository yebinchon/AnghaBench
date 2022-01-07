; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_disable_dev_iotlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_disable_dev_iotlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_domain_info = type { i64, i64, i32, i64, i32 }
%struct.pci_dev = type { i32 }

@device_domain_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_domain_info*)* @iommu_disable_dev_iotlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_disable_dev_iotlb(%struct.device_domain_info* %0) #0 {
  %2 = alloca %struct.device_domain_info*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.device_domain_info* %0, %struct.device_domain_info** %2, align 8
  %4 = call i32 @assert_spin_locked(i32* @device_domain_lock)
  %5 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %6 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dev_is_pci(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %13 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %3, align 8
  %16 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %17 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %22 = call i32 @pci_disable_ats(%struct.pci_dev* %21)
  %23 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %24 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %26 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @domain_update_iotlb(i32 %27)
  br label %29

29:                                               ; preds = %10, %20, %11
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @dev_is_pci(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_disable_ats(%struct.pci_dev*) #1

declare dso_local i32 @domain_update_iotlb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
