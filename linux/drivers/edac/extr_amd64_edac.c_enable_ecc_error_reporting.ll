; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_enable_ecc_error_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_enable_ecc_error_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_settings = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Error enabling ECC reporting over MCGCTL!\0A\00", align 1
@NBCTL = common dso_local global i32 0, align 4
@NBCFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"1: node %d, NBCFG=0x%08x[DramEccEn: %d]\0A\00", align 1
@NBCFG_ECC_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"DRAM ECC disabled on this node, enabling...\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"Hardware rejected DRAM ECC enable,check memory DIMM configuration.\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Hardware accepted DRAM ECC Enable\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"2: node %d, NBCFG=0x%08x[DramEccEn: %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecc_settings*, i32, %struct.pci_dev*)* @enable_ecc_error_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_ecc_error_reporting(%struct.ecc_settings* %0, i32 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecc_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecc_settings* %0, %struct.ecc_settings** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 3, i32* %10, align 4
  %11 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ON, align 4
  %14 = call i64 @toggle_ecc_err_reporting(%struct.ecc_settings* %11, i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @amd64_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %93

18:                                               ; preds = %3
  %19 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %20 = load i32, i32* @NBCTL, align 4
  %21 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %19, i32 %20, i32* %9)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %26 = getelementptr inbounds %struct.ecc_settings, %struct.ecc_settings* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %28 = getelementptr inbounds %struct.ecc_settings, %struct.ecc_settings* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = load i32, i32* @NBCTL, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @amd64_write_pci_cfg(%struct.pci_dev* %32, i32 %33, i32 %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = load i32, i32* @NBCFG, align 4
  %38 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %36, i32 %37, i32* %9)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @NBCFG_ECC_ENABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @NBCFG_ECC_ENABLE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %77, label %53

53:                                               ; preds = %18
  %54 = call i32 @amd64_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %56 = getelementptr inbounds %struct.ecc_settings, %struct.ecc_settings* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load i32, i32* @NBCFG_ECC_ENABLE, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %62 = load i32, i32* @NBCFG, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @amd64_write_pci_cfg(%struct.pci_dev* %61, i32 %62, i32 %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %66 = load i32, i32* @NBCFG, align 4
  %67 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %65, i32 %66, i32* %9)
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NBCFG_ECC_ENABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %53
  %73 = call i32 @amd64_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %76

74:                                               ; preds = %53
  %75 = call i32 @amd64_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %72
  br label %81

77:                                               ; preds = %18
  %78 = load %struct.ecc_settings*, %struct.ecc_settings** %5, align 8
  %79 = getelementptr inbounds %struct.ecc_settings, %struct.ecc_settings* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @NBCFG_ECC_ENABLE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %82, i32 %83, i32 %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %81, %16
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @toggle_ecc_err_reporting(%struct.ecc_settings*, i32, i32) #1

declare dso_local i32 @amd64_warn(i8*) #1

declare dso_local i32 @amd64_read_pci_cfg(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @amd64_write_pci_cfg(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @amd64_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
