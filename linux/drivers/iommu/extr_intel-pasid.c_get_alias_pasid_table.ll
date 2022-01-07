; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_get_alias_pasid_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_get_alias_pasid_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pasid_table_opaque = type { i32, i32, i32 }

@search_pasid_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i8*)* @get_alias_pasid_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alias_pasid_table(%struct.pci_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pasid_table_opaque*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.pasid_table_opaque*
  store %struct.pasid_table_opaque* %9, %struct.pasid_table_opaque** %7, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_domain_nr(i32 %12)
  %14 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %7, align 8
  %15 = getelementptr inbounds %struct.pasid_table_opaque, %struct.pasid_table_opaque* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @PCI_BUS_NUM(i32 %16)
  %18 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %7, align 8
  %19 = getelementptr inbounds %struct.pasid_table_opaque, %struct.pasid_table_opaque* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %7, align 8
  %23 = getelementptr inbounds %struct.pasid_table_opaque, %struct.pasid_table_opaque* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.pasid_table_opaque*, %struct.pasid_table_opaque** %7, align 8
  %25 = call i32 @for_each_device_domain(i32* @search_pasid_table, %struct.pasid_table_opaque* %24)
  ret i32 %25
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

declare dso_local i32 @for_each_device_domain(i32*, %struct.pasid_table_opaque*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
