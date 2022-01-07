; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-pci.c_octeon_pci_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_octeon_edac-pci.c_octeon_pci_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_pci_ctl_info = type { i32 }
%union.cvmx_pci_cfg01 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@CVMX_NPI_PCI_CFG01 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Signaled System Error\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Received Master Abort\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Received Target Abort\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Signaled Target Abort\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Master Data Parity Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_pci_ctl_info*)* @octeon_pci_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_pci_poll(%struct.edac_pci_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_pci_ctl_info*, align 8
  %3 = alloca %union.cvmx_pci_cfg01, align 4
  store %struct.edac_pci_ctl_info* %0, %struct.edac_pci_ctl_info** %2, align 8
  %4 = load i32, i32* @CVMX_NPI_PCI_CFG01, align 4
  %5 = call i32 @octeon_npi_read32(i32 %4)
  %6 = bitcast %union.cvmx_pci_cfg01* %3 to i32*
  store i32 %5, i32* %6, align 4
  %7 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %13 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %14 = getelementptr inbounds %struct.edac_pci_ctl_info, %struct.edac_pci_ctl_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @edac_pci_handle_pe(%struct.edac_pci_ctl_info* %12, i32 %15)
  %17 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* @CVMX_NPI_PCI_CFG01, align 4
  %20 = bitcast %union.cvmx_pci_cfg01* %3 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @octeon_npi_write32(i32 %19, i32 %21)
  br label %23

23:                                               ; preds = %11, %1
  %24 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %30 = call i32 @edac_pci_handle_npe(%struct.edac_pci_ctl_info* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* @CVMX_NPI_PCI_CFG01, align 4
  %34 = bitcast %union.cvmx_pci_cfg01* %3 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @octeon_npi_write32(i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %44 = call i32 @edac_pci_handle_npe(%struct.edac_pci_ctl_info* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %45 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @CVMX_NPI_PCI_CFG01, align 4
  %48 = bitcast %union.cvmx_pci_cfg01* %3 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @octeon_npi_write32(i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %58 = call i32 @edac_pci_handle_npe(%struct.edac_pci_ctl_info* %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %59 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @CVMX_NPI_PCI_CFG01, align 4
  %62 = bitcast %union.cvmx_pci_cfg01* %3 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @octeon_npi_write32(i32 %61, i32 %63)
  br label %65

65:                                               ; preds = %56, %51
  %66 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %72 = call i32 @edac_pci_handle_npe(%struct.edac_pci_ctl_info* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %73 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 4
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* @CVMX_NPI_PCI_CFG01, align 4
  %76 = bitcast %union.cvmx_pci_cfg01* %3 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @octeon_npi_write32(i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %70, %65
  %80 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.edac_pci_ctl_info*, %struct.edac_pci_ctl_info** %2, align 8
  %86 = call i32 @edac_pci_handle_npe(%struct.edac_pci_ctl_info* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %87 = bitcast %union.cvmx_pci_cfg01* %3 to %struct.TYPE_2__*
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* @CVMX_NPI_PCI_CFG01, align 4
  %90 = bitcast %union.cvmx_pci_cfg01* %3 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @octeon_npi_write32(i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  ret void
}

declare dso_local i32 @octeon_npi_read32(i32) #1

declare dso_local i32 @edac_pci_handle_pe(%struct.edac_pci_ctl_info*, i32) #1

declare dso_local i32 @octeon_npi_write32(i32, i32) #1

declare dso_local i32 @edac_pci_handle_npe(%struct.edac_pci_ctl_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
