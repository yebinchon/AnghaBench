; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it8212_disable_raid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_it821x.c_it8212_disable_raid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@PCI_COMMAND_IO = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4
@PCI_LATENCY_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @it8212_disable_raid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8212_disable_raid(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %3 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %4 = call i32 @pci_write_config_byte(%struct.pci_dev* %3, i32 94, i32 1)
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i32 @pci_write_config_byte(%struct.pci_dev* %5, i32 80, i32 0)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = load i32, i32* @PCI_COMMAND, align 4
  %9 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %10 = load i32, i32* @PCI_COMMAND_IO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @pci_write_config_word(%struct.pci_dev* %7, i32 %8, i32 %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = call i32 @pci_write_config_word(%struct.pci_dev* %17, i32 64, i32 41203)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = call i32 @pci_write_config_dword(%struct.pci_dev* %19, i32 76, i32 33817092)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %22 = call i32 @pci_write_config_byte(%struct.pci_dev* %21, i32 66, i32 54)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = load i32, i32* @PCI_LATENCY_TIMER, align 4
  %25 = call i32 @pci_write_config_byte(%struct.pci_dev* %23, i32 %24, i32 32)
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
