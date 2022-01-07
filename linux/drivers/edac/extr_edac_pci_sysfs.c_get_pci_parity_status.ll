; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_get_pci_parity_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_get_pci_parity_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_SEC_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@PCI_STATUS_SIG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @get_pci_parity_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pci_parity_status(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @PCI_SEC_STATUS, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @PCI_STATUS, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %6, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pci_read_config_word(%struct.pci_dev* %17, i32 %18, i32* %7)
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 65535
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_read_config_dword(%struct.pci_dev* %23, i32 0, i32* %8)
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %46

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %31 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pci_write_config_word(%struct.pci_dev* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %27
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
