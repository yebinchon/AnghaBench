; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_dev_parity_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_dev_parity_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @edac_pci_dev_parity_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_pci_dev_parity_clear(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call i32 @get_pci_parity_status(%struct.pci_dev* %4, i32 0)
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %8 = call i32 @pci_read_config_byte(%struct.pci_dev* %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 127
  %11 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = call i32 @get_pci_parity_status(%struct.pci_dev* %14, i32 1)
  br label %16

16:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @get_pci_parity_status(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
