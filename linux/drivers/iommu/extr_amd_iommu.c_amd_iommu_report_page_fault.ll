; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_report_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_amd_iommu_report_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_dev_data = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [72 x i8] c"Event logged [IO_PAGE_FAULT domain=0x%04x address=0x%llx flags=0x%04x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"Event logged [IO_PAGE_FAULT device=%02x:%02x.%x domain=0x%04x address=0x%llx flags=0x%04x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @amd_iommu_report_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_iommu_report_page_fault(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iommu_dev_data*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.iommu_dev_data* null, %struct.iommu_dev_data** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @PCI_BUS_NUM(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 255
  %15 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 %12, i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %10, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %17 = icmp ne %struct.pci_dev* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call %struct.iommu_dev_data* @get_dev_data(i32* %20)
  store %struct.iommu_dev_data* %21, %struct.iommu_dev_data** %9, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %9, align 8
  %24 = icmp ne %struct.iommu_dev_data* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %9, align 8
  %27 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %26, i32 0, i32 0
  %28 = call i64 @__ratelimit(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @pci_err(%struct.pci_dev* %31, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  br label %51

36:                                               ; preds = %25, %22
  %37 = call i64 (...) @printk_ratelimit()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @PCI_BUS_NUM(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @PCI_SLOT(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @PCI_FUNC(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %43, i32 %45, i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %36
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %53 = icmp ne %struct.pci_dev* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %56 = call i32 @pci_dev_put(%struct.pci_dev* %55)
  br label %57

57:                                               ; preds = %54, %51
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

declare dso_local %struct.iommu_dev_data* @get_dev_data(i32*) #1

declare dso_local i64 @__ratelimit(i32*) #1

declare dso_local i32 @pci_err(%struct.pci_dev*, i8*, i32, i32, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
