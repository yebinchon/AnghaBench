; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_get_v2_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_get_v2_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i32 }
%struct.pci_dev = type { i32 }
%struct.protection_domain = type { i32, %struct.iommu_domain }

@PD_IOMMUV2_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_domain* @amd_iommu_get_v2_domain(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.iommu_domain*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.protection_domain*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = call %struct.protection_domain* @get_domain(i32* %6)
  store %struct.protection_domain* %7, %struct.protection_domain** %4, align 8
  %8 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %9 = call i64 @IS_ERR(%struct.protection_domain* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %14 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PD_IOMMUV2_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  store %struct.iommu_domain* null, %struct.iommu_domain** %2, align 8
  br label %23

20:                                               ; preds = %12
  %21 = load %struct.protection_domain*, %struct.protection_domain** %4, align 8
  %22 = getelementptr inbounds %struct.protection_domain, %struct.protection_domain* %21, i32 0, i32 1
  store %struct.iommu_domain* %22, %struct.iommu_domain** %2, align 8
  br label %23

23:                                               ; preds = %20, %19, %11
  %24 = load %struct.iommu_domain*, %struct.iommu_domain** %2, align 8
  ret %struct.iommu_domain* %24
}

declare dso_local %struct.protection_domain* @get_domain(i32*) #1

declare dso_local i64 @IS_ERR(%struct.protection_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
