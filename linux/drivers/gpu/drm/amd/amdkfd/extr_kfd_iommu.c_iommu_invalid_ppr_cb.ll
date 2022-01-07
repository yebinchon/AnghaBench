; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_iommu_invalid_ppr_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_iommu.c_iommu_invalid_ppr_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.kfd_dev = type { i32 }

@kfd_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Invalid PPR device %x:%x.%x pasid %d address 0x%lX flags 0x%X\00", align 1
@PPR_FAULT_WRITE = common dso_local global i32 0, align 4
@PPR_FAULT_EXEC = common dso_local global i32 0, align 4
@AMD_IOMMU_INV_PRI_RSP_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i64, i32)* @iommu_invalid_ppr_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iommu_invalid_ppr_cb(%struct.pci_dev* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kfd_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @kfd_device, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PCI_BUS_NUM(i32 %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @PCI_SLOT(i32 %17)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PCI_FUNC(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_warn_ratelimited(i32 %10, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %23, i64 %24, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = call %struct.kfd_dev* @kfd_device_by_pci_dev(%struct.pci_dev* %27)
  store %struct.kfd_dev* %28, %struct.kfd_dev** %9, align 8
  %29 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %30 = icmp ne %struct.kfd_dev* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %4
  %36 = load %struct.kfd_dev*, %struct.kfd_dev** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @PPR_FAULT_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PPR_FAULT_EXEC, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @kfd_signal_iommu_event(%struct.kfd_dev* %36, i32 %37, i64 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %35, %4
  %47 = load i32, i32* @AMD_IOMMU_INV_PRI_RSP_INVALID, align 4
  ret i32 %47
}

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local %struct.kfd_dev* @kfd_device_by_pci_dev(%struct.pci_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfd_signal_iommu_event(%struct.kfd_dev*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
