; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-pci.c_cci_pci_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-pci.c_cci_pci_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.cci_drvdata = type { %struct.dfl_fpga_cdev* }
%struct.dfl_fpga_cdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @cci_pci_sriov_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cci_pci_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cci_drvdata*, align 8
  %7 = alloca %struct.dfl_fpga_cdev*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.cci_drvdata* @pci_get_drvdata(%struct.pci_dev* %9)
  store %struct.cci_drvdata* %10, %struct.cci_drvdata** %6, align 8
  %11 = load %struct.cci_drvdata*, %struct.cci_drvdata** %6, align 8
  %12 = getelementptr inbounds %struct.cci_drvdata, %struct.cci_drvdata* %11, i32 0, i32 0
  %13 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %12, align 8
  store %struct.dfl_fpga_cdev* %13, %struct.dfl_fpga_cdev** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_disable_sriov(%struct.pci_dev* %17)
  %19 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %7, align 8
  %20 = call i32 @dfl_fpga_cdev_config_ports_pf(%struct.dfl_fpga_cdev* %19)
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dfl_fpga_cdev_config_ports_vf(%struct.dfl_fpga_cdev* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %21
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pci_enable_sriov(%struct.pci_dev* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.dfl_fpga_cdev*, %struct.dfl_fpga_cdev** %7, align 8
  %37 = call i32 @dfl_fpga_cdev_config_ports_pf(%struct.dfl_fpga_cdev* %36)
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %27
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.cci_drvdata* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @dfl_fpga_cdev_config_ports_pf(%struct.dfl_fpga_cdev*) #1

declare dso_local i32 @dfl_fpga_cdev_config_ports_vf(%struct.dfl_fpga_cdev*, i32) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
