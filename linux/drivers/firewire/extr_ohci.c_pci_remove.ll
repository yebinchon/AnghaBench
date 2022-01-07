; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.fw_ohci = type { i64, i64, i64, i32, %struct.fw_ohci*, %struct.fw_ohci*, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OHCI1394_HCControlSet = common dso_local global i32 0, align 4
@OHCI1394_HCControl_LPS = common dso_local global i32 0, align 4
@OHCI1394_IntMaskClear = common dso_local global i32 0, align 4
@CONFIG_ROM_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"removed fw-ohci device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fw_ohci*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.fw_ohci* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.fw_ohci* %5, %struct.fw_ohci** %3, align 8
  %6 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %7 = load i32, i32* @OHCI1394_HCControlSet, align 4
  %8 = call i32 @reg_read(%struct.fw_ohci* %6, i32 %7)
  %9 = load i32, i32* @OHCI1394_HCControl_LPS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %14 = load i32, i32* @OHCI1394_IntMaskClear, align 4
  %15 = call i32 @reg_write(%struct.fw_ohci* %13, i32 %14, i32 -1)
  %16 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %17 = call i32 @flush_writes(%struct.fw_ohci* %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %20 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %19, i32 0, i32 14
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %23 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %22, i32 0, i32 9
  %24 = call i32 @fw_core_remove_card(%struct.TYPE_2__* %23)
  %25 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %26 = call i32 @software_reset(%struct.fw_ohci* %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.fw_ohci* %30)
  %32 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %33 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %18
  %37 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %38 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %41 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %46 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %50 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %51 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %54 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dma_free_coherent(i32 %48, i32 %49, i64 %52, i32 %55)
  br label %57

57:                                               ; preds = %44, %36, %18
  %58 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %59 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %64 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CONFIG_ROM_SIZE, align 4
  %68 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %69 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %72 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dma_free_coherent(i32 %66, i32 %67, i64 %70, i32 %73)
  br label %75

75:                                               ; preds = %62, %57
  %76 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %77 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %76, i32 0, i32 11
  %78 = call i32 @ar_context_release(i32* %77)
  %79 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %80 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %79, i32 0, i32 10
  %81 = call i32 @ar_context_release(i32* %80)
  %82 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %83 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %88 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %91 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dma_free_coherent(i32 %85, i32 %86, i64 %89, i32 %92)
  %94 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %95 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %94, i32 0, i32 7
  %96 = call i32 @context_release(i32* %95)
  %97 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %98 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %97, i32 0, i32 6
  %99 = call i32 @context_release(i32* %98)
  %100 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %101 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %100, i32 0, i32 5
  %102 = load %struct.fw_ohci*, %struct.fw_ohci** %101, align 8
  %103 = call i32 @kfree(%struct.fw_ohci* %102)
  %104 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %105 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %104, i32 0, i32 4
  %106 = load %struct.fw_ohci*, %struct.fw_ohci** %105, align 8
  %107 = call i32 @kfree(%struct.fw_ohci* %106)
  %108 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %109 = call i32 @pci_disable_msi(%struct.pci_dev* %108)
  %110 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %111 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %112 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @pci_iounmap(%struct.pci_dev* %110, i32 %113)
  %115 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %116 = call i32 @pci_release_region(%struct.pci_dev* %115, i32 0)
  %117 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %118 = call i32 @pci_disable_device(%struct.pci_dev* %117)
  %119 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %120 = call i32 @kfree(%struct.fw_ohci* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %122 = call i32 @pmac_ohci_off(%struct.pci_dev* %121)
  %123 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = call i32 @dev_notice(i32* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.fw_ohci* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @flush_writes(%struct.fw_ohci*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @fw_core_remove_card(%struct.TYPE_2__*) #1

declare dso_local i32 @software_reset(%struct.fw_ohci*) #1

declare dso_local i32 @free_irq(i32, %struct.fw_ohci*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

declare dso_local i32 @ar_context_release(i32*) #1

declare dso_local i32 @context_release(i32*) #1

declare dso_local i32 @kfree(%struct.fw_ohci*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pmac_ohci_off(%struct.pci_dev*) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
