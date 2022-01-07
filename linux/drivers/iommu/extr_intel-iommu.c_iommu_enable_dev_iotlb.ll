; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_enable_dev_iotlb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-iommu.c_iommu_enable_dev_iotlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_domain_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@device_domain_lock = common dso_local global i32 0, align 4
@VTD_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_domain_info*)* @iommu_enable_dev_iotlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_enable_dev_iotlb(%struct.device_domain_info* %0) #0 {
  %2 = alloca %struct.device_domain_info*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.device_domain_info* %0, %struct.device_domain_info** %2, align 8
  %5 = call i32 @assert_spin_locked(i32* @device_domain_lock)
  %6 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %7 = icmp ne %struct.device_domain_info* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %10 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_is_pci(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8, %1
  br label %67

15:                                               ; preds = %8
  %16 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %17 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.pci_dev* @to_pci_dev(i32 %18)
  store %struct.pci_dev* %19, %struct.pci_dev** %3, align 8
  %20 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %21 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %20, i32 0, i32 9
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ecap_dit(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %15
  %28 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %29 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %28, i32 0, i32 8
  store i64 0, i64* %29, align 8
  br label %37

30:                                               ; preds = %15
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = call %struct.pci_dev* @pci_physfn(%struct.pci_dev* %31)
  store %struct.pci_dev* %32, %struct.pci_dev** %4, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i64 @pci_dev_id(%struct.pci_dev* %33)
  %35 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %36 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %35, i32 0, i32 8
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %27
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %37
  %43 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %44 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = call i64 @pci_ats_page_aligned(%struct.pci_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %53 = load i32, i32* @VTD_PAGE_SHIFT, align 4
  %54 = call i32 @pci_enable_ats(%struct.pci_dev* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %58 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %57, i32 0, i32 3
  store i32 1, i32* %58, align 4
  %59 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %60 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @domain_update_iotlb(i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %64 = call i32 @pci_ats_queue_depth(%struct.pci_dev* %63)
  %65 = load %struct.device_domain_info*, %struct.device_domain_info** %2, align 8
  %66 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %14, %56, %51, %47, %42, %37
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @dev_is_pci(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ecap_dit(i32) #1

declare dso_local %struct.pci_dev* @pci_physfn(%struct.pci_dev*) #1

declare dso_local i64 @pci_dev_id(%struct.pci_dev*) #1

declare dso_local i64 @pci_ats_page_aligned(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_ats(%struct.pci_dev*, i32) #1

declare dso_local i32 @domain_update_iotlb(i32) #1

declare dso_local i32 @pci_ats_queue_depth(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
