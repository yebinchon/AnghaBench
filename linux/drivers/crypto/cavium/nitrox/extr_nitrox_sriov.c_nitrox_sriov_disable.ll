; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_sriov.c_nitrox_sriov_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_sriov.c_nitrox_sriov_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.nitrox_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@__NDEV_SRIOV_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"VFs are attached to VM. Can't disable SR-IOV\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@__NDEV_MODE_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @nitrox_sriov_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nitrox_sriov_disable(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.nitrox_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = call %struct.nitrox_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.nitrox_device* %6, %struct.nitrox_device** %4, align 8
  %7 = load i32, i32* @__NDEV_SRIOV_BIT, align 4
  %8 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %9 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %8, i32 0, i32 2
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %15 = call i64 @pci_vfs_assigned(%struct.pci_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %19 = call i32 @DEV(%struct.nitrox_device* %18)
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %13
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = call i32 @pci_disable_sriov(%struct.pci_dev* %24)
  %26 = load i32, i32* @__NDEV_SRIOV_BIT, align 4
  %27 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %28 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %27, i32 0, i32 2
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %31 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %34 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @__NDEV_MODE_PF, align 4
  %37 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %38 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %40 = call i32 @nitrox_sriov_cleanup(%struct.nitrox_device* %39)
  %41 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %42 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %43 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @config_nps_core_vfcfg_mode(%struct.nitrox_device* %41, i32 %44)
  %46 = load %struct.nitrox_device*, %struct.nitrox_device** %4, align 8
  %47 = call i32 @nitrox_pf_reinit(%struct.nitrox_device* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %23, %17, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.nitrox_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @pci_vfs_assigned(%struct.pci_dev*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @DEV(%struct.nitrox_device*) #1

declare dso_local i32 @pci_disable_sriov(%struct.pci_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nitrox_sriov_cleanup(%struct.nitrox_device*) #1

declare dso_local i32 @config_nps_core_vfcfg_mode(%struct.nitrox_device*, i32) #1

declare dso_local i32 @nitrox_pf_reinit(%struct.nitrox_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
