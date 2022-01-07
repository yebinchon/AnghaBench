; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pci.c_intel_th_pci_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pci.c_intel_th_pci_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_th = type { i32 }
%struct.pci_dev = type { i32 }

@tscu_enable = common dso_local global i32 0, align 4
@PCI_REG_NPKDSC = common dso_local global i32 0, align 4
@NPKDSC_TSACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to read NPKDSC register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_th*)* @intel_th_pci_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_th_pci_deactivate(%struct.intel_th* %0) #0 {
  %2 = alloca %struct.intel_th*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_th* %0, %struct.intel_th** %2, align 8
  %6 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %7 = getelementptr inbounds %struct.intel_th, %struct.intel_th* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %3, align 8
  %10 = load %struct.intel_th*, %struct.intel_th** %2, align 8
  %11 = load i32, i32* @tscu_enable, align 4
  %12 = call i32 @INTEL_TH_CAP(%struct.intel_th* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load i32, i32* @PCI_REG_NPKDSC, align 4
  %18 = call i32 @pci_read_config_dword(%struct.pci_dev* %16, i32 %17, i32* %4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @NPKDSC_TSACT, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* @PCI_REG_NPKDSC, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pci_write_config_dword(%struct.pci_dev* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %21, %15
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %14, %32, %29
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @INTEL_TH_CAP(%struct.intel_th*, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
