; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-pcidrv.c_mfld_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-pcidrv.c_mfld_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.dw_pci_controller = type { i32, i32 }

@DW_IC_CON_SPEED_MASK = common dso_local global i32 0, align 4
@DW_IC_CON_SPEED_STD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.dw_pci_controller*)* @mfld_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfld_setup(%struct.pci_dev* %0, %struct.dw_pci_controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.dw_pci_controller*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.dw_pci_controller* %1, %struct.dw_pci_controller** %5, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %37 [
    i32 2071, label %9
    i32 2072, label %21
    i32 2073, label %21
    i32 2092, label %29
    i32 2093, label %29
    i32 2094, label %29
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @DW_IC_CON_SPEED_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.dw_pci_controller*, %struct.dw_pci_controller** %5, align 8
  %13 = getelementptr inbounds %struct.dw_pci_controller, %struct.dw_pci_controller* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @DW_IC_CON_SPEED_STD, align 4
  %17 = load %struct.dw_pci_controller*, %struct.dw_pci_controller** %5, align 8
  %18 = getelementptr inbounds %struct.dw_pci_controller, %struct.dw_pci_controller* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %2, %2, %9
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 2071
  %26 = add nsw i32 %25, 3
  %27 = load %struct.dw_pci_controller*, %struct.dw_pci_controller** %5, align 8
  %28 = getelementptr inbounds %struct.dw_pci_controller, %struct.dw_pci_controller* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %40

29:                                               ; preds = %2, %2, %2
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 2092
  %34 = add nsw i32 %33, 0
  %35 = load %struct.dw_pci_controller*, %struct.dw_pci_controller** %5, align 8
  %36 = getelementptr inbounds %struct.dw_pci_controller, %struct.dw_pci_controller* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %29, %21
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
