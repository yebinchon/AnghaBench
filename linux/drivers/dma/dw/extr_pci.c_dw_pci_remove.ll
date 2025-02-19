; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw/extr_pci.c_dw_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw/extr_pci.c_dw_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dw_dma_chip_pdata = type { i32 (%struct.dw_dma_chip*)*, %struct.dw_dma_chip.0* }
%struct.dw_dma_chip = type opaque
%struct.dw_dma_chip.0 = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"can't remove device properly: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @dw_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.dw_dma_chip_pdata*, align 8
  %4 = alloca %struct.dw_dma_chip.0*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.dw_dma_chip_pdata* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.dw_dma_chip_pdata* %7, %struct.dw_dma_chip_pdata** %3, align 8
  %8 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %8, i32 0, i32 1
  %10 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %9, align 8
  store %struct.dw_dma_chip.0* %10, %struct.dw_dma_chip.0** %4, align 8
  %11 = load %struct.dw_dma_chip_pdata*, %struct.dw_dma_chip_pdata** %3, align 8
  %12 = getelementptr inbounds %struct.dw_dma_chip_pdata, %struct.dw_dma_chip_pdata* %11, i32 0, i32 0
  %13 = load i32 (%struct.dw_dma_chip*)*, i32 (%struct.dw_dma_chip*)** %12, align 8
  %14 = load %struct.dw_dma_chip.0*, %struct.dw_dma_chip.0** %4, align 8
  %15 = bitcast %struct.dw_dma_chip.0* %14 to %struct.dw_dma_chip*
  %16 = call i32 %13(%struct.dw_dma_chip* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret void
}

declare dso_local %struct.dw_dma_chip_pdata* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
