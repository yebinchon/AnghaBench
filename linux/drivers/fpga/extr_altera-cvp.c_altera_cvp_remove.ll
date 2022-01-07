; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_altera-cvp.c_altera_cvp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.fpga_manager = type { %struct.altera_cvp_conf* }
%struct.altera_cvp_conf = type { i64 }

@CVP_BAR = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @altera_cvp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @altera_cvp_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.fpga_manager*, align 8
  %4 = alloca %struct.altera_cvp_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.fpga_manager* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.fpga_manager* %7, %struct.fpga_manager** %3, align 8
  %8 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %9 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %8, i32 0, i32 0
  %10 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %9, align 8
  store %struct.altera_cvp_conf* %10, %struct.altera_cvp_conf** %4, align 8
  %11 = load %struct.fpga_manager*, %struct.fpga_manager** %3, align 8
  %12 = call i32 @fpga_mgr_unregister(%struct.fpga_manager* %11)
  %13 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %4, align 8
  %14 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = load %struct.altera_cvp_conf*, %struct.altera_cvp_conf** %4, align 8
  %20 = getelementptr inbounds %struct.altera_cvp_conf, %struct.altera_cvp_conf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pci_iounmap(%struct.pci_dev* %18, i64 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* @CVP_BAR, align 4
  %26 = call i32 @pci_release_region(%struct.pci_dev* %24, i32 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %28 = load i32, i32* @PCI_COMMAND, align 4
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %27, i32 %28, i32* %5)
  %30 = load i32, i32* @PCI_COMMAND_MEMORY, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %35 = load i32, i32* @PCI_COMMAND, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @pci_write_config_word(%struct.pci_dev* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local %struct.fpga_manager* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @fpga_mgr_unregister(%struct.fpga_manager*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
