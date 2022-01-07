; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.efa_dev = type { i32, %struct.efa_com_dev }
%struct.efa_com_dev = type { i32 }

@EFA_BASE_BAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @efa_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efa_remove_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.efa_dev*, align 8
  %4 = alloca %struct.efa_com_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.efa_dev* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.efa_dev* %6, %struct.efa_dev** %3, align 8
  %7 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %8 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %7, i32 0, i32 1
  store %struct.efa_com_dev* %8, %struct.efa_com_dev** %4, align 8
  %9 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %10 = call i32 @efa_com_admin_destroy(%struct.efa_com_dev* %9)
  %11 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %12 = call i32 @efa_free_mgmnt_irq(%struct.efa_dev* %11)
  %13 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %14 = call i32 @efa_disable_msix(%struct.efa_dev* %13)
  %15 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %16 = call i32 @efa_com_mmio_reg_read_destroy(%struct.efa_com_dev* %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %20 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @devm_iounmap(i32* %18, i32 %21)
  %23 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %24 = load i32, i32* @EFA_BASE_BAR_MASK, align 4
  %25 = call i32 @efa_release_bars(%struct.efa_dev* %23, i32 %24)
  %26 = load %struct.efa_dev*, %struct.efa_dev** %3, align 8
  %27 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %26, i32 0, i32 0
  %28 = call i32 @ib_dealloc_device(i32* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = call i32 @pci_disable_device(%struct.pci_dev* %29)
  ret void
}

declare dso_local %struct.efa_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @efa_com_admin_destroy(%struct.efa_com_dev*) #1

declare dso_local i32 @efa_free_mgmnt_irq(%struct.efa_dev*) #1

declare dso_local i32 @efa_disable_msix(%struct.efa_dev*) #1

declare dso_local i32 @efa_com_mmio_reg_read_destroy(%struct.efa_com_dev*) #1

declare dso_local i32 @devm_iounmap(i32*, i32) #1

declare dso_local i32 @efa_release_bars(%struct.efa_dev*, i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
