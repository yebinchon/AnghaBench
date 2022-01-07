; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_set_msi_sid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel_irq_remapping.c_set_msi_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irte = type { i32 }
%struct.pci_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.set_msi_sid_data = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@set_msi_sid_cb = common dso_local global i32 0, align 4
@SVT_VERIFY_SID_SQ = common dso_local global i32 0, align 4
@SQ_ALL_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irte*, %struct.pci_dev*)* @set_msi_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_msi_sid(%struct.irte* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irte*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.set_msi_sid_data, align 8
  store %struct.irte* %0, %struct.irte** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.irte*, %struct.irte** %4, align 8
  %8 = icmp ne %struct.irte* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = icmp ne %struct.pci_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %93

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* @set_msi_sid_cb, align 4
  %18 = call i32 @pci_for_each_dma_alias(%struct.pci_dev* %16, i32 %17, %struct.set_msi_sid_data* %6)
  %19 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @PCI_BUS_NUM(i32 %20)
  %22 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %21, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %13
  %30 = load %struct.irte*, %struct.irte** %4, align 8
  %31 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @PCI_BUS_NUM(i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @set_irte_verify_bus(%struct.irte* %30, i64 %33, i64 %38)
  br label %92

40:                                               ; preds = %13
  %41 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 2
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.irte*, %struct.irte** %4, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @set_irte_verify_bus(%struct.irte* %51, i64 %56, i64 %61)
  br label %91

63:                                               ; preds = %44, %40
  %64 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %69, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %63
  %77 = load %struct.irte*, %struct.irte** %4, align 8
  %78 = load i32, i32* @SVT_VERIFY_SID_SQ, align 4
  %79 = load i32, i32* @SQ_ALL_16, align 4
  %80 = getelementptr inbounds %struct.set_msi_sid_data, %struct.set_msi_sid_data* %6, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_irte_sid(%struct.irte* %77, i32 %78, i32 %79, i32 %81)
  br label %90

83:                                               ; preds = %63
  %84 = load %struct.irte*, %struct.irte** %4, align 8
  %85 = load i32, i32* @SVT_VERIFY_SID_SQ, align 4
  %86 = load i32, i32* @SQ_ALL_16, align 4
  %87 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %88 = call i32 @pci_dev_id(%struct.pci_dev* %87)
  %89 = call i32 @set_irte_sid(%struct.irte* %84, i32 %85, i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %50
  br label %92

92:                                               ; preds = %91, %29
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %12
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @pci_for_each_dma_alias(%struct.pci_dev*, i32, %struct.set_msi_sid_data*) #1

declare dso_local i64 @PCI_BUS_NUM(i32) #1

declare dso_local i32 @set_irte_verify_bus(%struct.irte*, i64, i64) #1

declare dso_local i32 @set_irte_sid(%struct.irte*, i32, i32, i32) #1

declare dso_local i32 @pci_dev_id(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
