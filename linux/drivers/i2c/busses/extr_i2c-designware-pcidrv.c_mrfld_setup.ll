; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-pcidrv.c_mrfld_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-pcidrv.c_mrfld_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dw_pci_controller = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.dw_pci_controller*)* @mrfld_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_setup(%struct.pci_dev* %0, %struct.dw_pci_controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.dw_pci_controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.dw_pci_controller* %1, %struct.dw_pci_controller** %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @PCI_SLOT(i32 %8)
  switch i32 %9, label %28 [
    i32 8, label %10
    i32 9, label %19
  ]

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PCI_FUNC(i32 %13)
  %15 = add nsw i32 %14, 0
  %16 = add nsw i32 %15, 1
  %17 = load %struct.dw_pci_controller*, %struct.dw_pci_controller** %5, align 8
  %18 = getelementptr inbounds %struct.dw_pci_controller, %struct.dw_pci_controller* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @PCI_FUNC(i32 %22)
  %24 = add nsw i32 %23, 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.dw_pci_controller*, %struct.dw_pci_controller** %5, align 8
  %27 = getelementptr inbounds %struct.dw_pci_controller, %struct.dw_pci_controller* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %19, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
