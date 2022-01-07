; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_cache_msi_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_pcie.c_qib_cache_msi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_MSI_ADDRESS_LO = common dso_local global i64 0, align 8
@PCI_MSI_ADDRESS_HI = common dso_local global i64 0, align 8
@PCI_MSI_FLAGS = common dso_local global i32 0, align 4
@PCI_MSI_FLAGS_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*, i32)* @qib_cache_msi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_cache_msi_info(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %8 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %7, i32 0, i32 3
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @PCI_MSI_ADDRESS_LO, align 8
  %14 = add nsw i64 %12, %13
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 2
  %17 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i64 %14, i32* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @PCI_MSI_ADDRESS_HI, align 8
  %22 = add nsw i64 %20, %21
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 1
  %25 = call i32 @pci_read_config_dword(%struct.pci_dev* %18, i64 %22, i32* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PCI_MSI_FLAGS, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32 @pci_read_config_word(%struct.pci_dev* %26, i32 %29, i32* %6)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PCI_MSI_FLAGS_64BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 12, i32 8
  %39 = add nsw i32 %32, %38
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 0
  %42 = call i32 @pci_read_config_word(%struct.pci_dev* %31, i32 %39, i32* %41)
  ret void
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
