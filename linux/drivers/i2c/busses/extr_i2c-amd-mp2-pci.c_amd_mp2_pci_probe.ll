; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-pci.c_amd_mp2_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.amd_mp2_dev = type { i32, %struct.pci_dev*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"MP2 device registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @amd_mp2_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_mp2_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.amd_mp2_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.amd_mp2_dev* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.amd_mp2_dev* %11, %struct.amd_mp2_dev** %6, align 8
  %12 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %6, align 8
  %13 = icmp ne %struct.amd_mp2_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %6, align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i32 @amd_mp2_pci_init(%struct.amd_mp2_dev* %18, %struct.pci_dev* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %17
  %26 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %6, align 8
  %27 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %26, i32 0, i32 2
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %6, align 8
  %31 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %30, i32 0, i32 1
  store %struct.pci_dev* %29, %struct.pci_dev** %31, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_set_autosuspend_delay(i32* %33, i32 1000)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @pm_runtime_use_autosuspend(i32* %36)
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_put_autosuspend(i32* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_allow(i32* %42)
  %44 = load %struct.amd_mp2_dev*, %struct.amd_mp2_dev** %6, align 8
  %45 = getelementptr inbounds %struct.amd_mp2_dev, %struct.amd_mp2_dev* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %46, i32 0, i32 0
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %25, %23, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.amd_mp2_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @amd_mp2_pci_init(%struct.amd_mp2_dev*, %struct.pci_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_allow(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
