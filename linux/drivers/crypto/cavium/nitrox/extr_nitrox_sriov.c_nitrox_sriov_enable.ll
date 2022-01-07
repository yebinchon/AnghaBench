; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_sriov.c_nitrox_sriov_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_sriov.c_nitrox_sriov_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nitrox_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Invalid num_vfs %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to enable PCI sriov %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Enabled VF(s) %d\0A\00", align 1
@__NDEV_SRIOV_BIT = common dso_local global i32 0, align 4
@__NDEV_MODE_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @nitrox_sriov_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_sriov_enable(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nitrox_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.nitrox_device* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.nitrox_device* %9, %struct.nitrox_device** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @num_vfs_valid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %15 = call i32 @DEV(%struct.nitrox_device* %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %93

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = call i32 @pci_num_vf(%struct.pci_dev* %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %3, align 4
  br label %93

27:                                               ; preds = %20
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pci_enable_sriov(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %35 = call i32 @DEV(%struct.nitrox_device* %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %93

39:                                               ; preds = %27
  %40 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %41 = call i32 @DEV(%struct.nitrox_device* %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @num_vfs_to_mode(i32 %44)
  %46 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %47 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %50 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %53 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vf_mode_to_nr_queues(i32 %54)
  %56 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %57 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @__NDEV_SRIOV_BIT, align 4
  %60 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %61 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %60, i32 0, i32 2
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  %63 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %64 = call i32 @nitrox_pf_cleanup(%struct.nitrox_device* %63)
  %65 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %66 = call i32 @nitrox_sriov_init(%struct.nitrox_device* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %39
  br label %77

70:                                               ; preds = %39
  %71 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %72 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %73 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @config_nps_core_vfcfg_mode(%struct.nitrox_device* %71, i32 %74)
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %3, align 4
  br label %93

77:                                               ; preds = %69
  %78 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %79 = call i32 @pci_disable_sriov(%struct.pci_dev* %78)
  %80 = load i32, i32* @__NDEV_SRIOV_BIT, align 4
  %81 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %82 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %81, i32 0, i32 2
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  %84 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %85 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load i32, i32* @__NDEV_MODE_PF, align 4
  %88 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %89 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.nitrox_device*, %struct.nitrox_device** %6, align 8
  %91 = call i32 @nitrox_pf_reinit(%struct.nitrox_device* %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %77, %70, %33, %25, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.nitrox_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @num_vfs_valid(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i32 @pci_num_vf(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_sriov(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @num_vfs_to_mode(i32) #1

declare dso_local i32 @vf_mode_to_nr_queues(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nitrox_pf_cleanup(%struct.nitrox_device*) #1

declare dso_local i32 @nitrox_sriov_init(%struct.nitrox_device*) #1

declare dso_local i32 @config_nps_core_vfcfg_mode(%struct.nitrox_device*, i32) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nitrox_pf_reinit(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
