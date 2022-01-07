; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_sriov_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_sriov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"SRIOV capability is not found in PCIe config space\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PCI_SRIOV_TOTAL_VF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"SRIOV enable failed, num VF is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"SRIOV enabled, number of VF available %d\0A\00", align 1
@CPT_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_device*, i32)* @cpt_sriov_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_sriov_init(%struct.cpt_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpt_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  store %struct.cpt_device* %0, %struct.cpt_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %11 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %10, i32 0, i32 2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %9, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %14 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %15 = call i32 @pci_find_ext_capability(%struct.pci_dev* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %77

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %27 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* @PCI_SRIOV_TOTAL_VF, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @pci_read_config_word(%struct.pci_dev* %28, i64 %32, i32* %8)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %36 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %42 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %77

47:                                               ; preds = %43
  %48 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %49 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %50 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @pci_enable_sriov(%struct.pci_dev* %48, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %59 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %63 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %77

65:                                               ; preds = %47
  %66 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %69 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_info(i32* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @CPT_FLAG_SRIOV_ENABLED, align 4
  %73 = load %struct.cpt_device*, %struct.cpt_device** %4, align 8
  %74 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %65, %55, %46, %18
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @pci_find_ext_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
