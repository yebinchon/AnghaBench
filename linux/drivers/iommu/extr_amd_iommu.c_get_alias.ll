; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_get_alias.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_get_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@amd_iommu_alias_table = common dso_local global i64* null, align 8
@__last_alias = common dso_local global i32 0, align 4
@amd_iommu_rlookup_table = common dso_local global i64* null, align 8
@amd_iommu_dev_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [99 x i8] c"Using IVRS reported alias %02x:%02x.%d for device [%04x:%04x], kernel reported alias %02x:%02x.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Added PCI DMA alias %02x.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*)* @get_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_alias(%struct.device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.pci_dev* @to_pci_dev(%struct.device* %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @get_device_id(%struct.device* %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @dev_is_pci(%struct.device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %108

17:                                               ; preds = %1
  %18 = load i64*, i64** @amd_iommu_alias_table, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load i32, i32* @__last_alias, align 4
  %24 = call i32 @pci_for_each_dma_alias(%struct.pci_dev* %22, i32 %23, i64* %7)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %2, align 8
  br label %108

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load i64*, i64** @amd_iommu_rlookup_table, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %34
  %41 = load i64*, i64** @amd_iommu_rlookup_table, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @amd_iommu_rlookup_table, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %44, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @amd_iommu_dev_table, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @amd_iommu_dev_table, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %52, i32 %57, i32 4)
  br label %59

59:                                               ; preds = %40, %34
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* %2, align 8
  br label %108

61:                                               ; preds = %30
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i64 @PCI_BUS_NUM(i64 %63)
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @PCI_SLOT(i64 %65)
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @PCI_FUNC(i64 %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @PCI_BUS_NUM(i64 %75)
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @PCI_SLOT(i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @PCI_FUNC(i64 %79)
  %81 = call i32 (%struct.pci_dev*, i8*, i64, i32, ...) @pci_info(%struct.pci_dev* %62, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %66, i32 %68, i32 %71, i32 %74, i64 %76, i32 %78, i32 %80)
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %61
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @PCI_BUS_NUM(i64 %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %87, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load i64, i64* %6, align 8
  %97 = and i64 %96, 255
  %98 = call i32 @pci_add_dma_alias(%struct.pci_dev* %95, i64 %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i32 @PCI_SLOT(i64 %100)
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @PCI_FUNC(i64 %103)
  %105 = call i32 (%struct.pci_dev*, i8*, i64, i32, ...) @pci_info(%struct.pci_dev* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %102, i32 %104)
  br label %106

106:                                              ; preds = %94, %85, %61
  %107 = load i64, i64* %6, align 8
  store i64 %107, i64* %2, align 8
  br label %108

108:                                              ; preds = %106, %59, %28, %15
  %109 = load i64, i64* %2, align 8
  ret i64 %109
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i64 @get_device_id(%struct.device*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @pci_for_each_dma_alias(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, i64, i32, ...) #1

declare dso_local i64 @PCI_BUS_NUM(i64) #1

declare dso_local i32 @PCI_SLOT(i64) #1

declare dso_local i32 @PCI_FUNC(i64) #1

declare dso_local i32 @pci_add_dma_alias(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
