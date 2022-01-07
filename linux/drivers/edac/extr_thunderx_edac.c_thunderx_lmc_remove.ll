; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_lmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_lmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.mem_ctl_info = type { %struct.thunderx_lmc* }
%struct.thunderx_lmc = type { i64 }

@LMC_INT_ENA_ALL = common dso_local global i32 0, align 4
@LMC_INT_ENA_W1C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @thunderx_lmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunderx_lmc_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.thunderx_lmc*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.mem_ctl_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.mem_ctl_info* %6, %struct.mem_ctl_info** %3, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %8, align 8
  store %struct.thunderx_lmc* %9, %struct.thunderx_lmc** %4, align 8
  %10 = load i32, i32* @LMC_INT_ENA_ALL, align 4
  %11 = load %struct.thunderx_lmc*, %struct.thunderx_lmc** %4, align 8
  %12 = getelementptr inbounds %struct.thunderx_lmc, %struct.thunderx_lmc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @LMC_INT_ENA_W1C, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writeq(i32 %10, i64 %15)
  %17 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @edac_mc_del_mc(i32* %18)
  %20 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %21 = call i32 @edac_mc_free(%struct.mem_ctl_info* %20)
  ret void
}

declare dso_local %struct.mem_ctl_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @edac_mc_del_mc(i32*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
