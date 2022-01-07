; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_l2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_l2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.edac_device_ctl_info = type { %struct.thunderx_l2c* }
%struct.thunderx_l2c = type { i32, i64 }

@L2C_TAD_INT_ENA_ALL = common dso_local global i32 0, align 4
@L2C_TAD_INT_ENA_W1C = common dso_local global i64 0, align 8
@L2C_CBC_INT_ENA_ALL = common dso_local global i32 0, align 4
@L2C_CBC_INT_ENA_W1C = common dso_local global i64 0, align 8
@L2C_MCI_INT_ENA_ALL = common dso_local global i32 0, align 4
@L2C_MCI_INT_ENA_W1C = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @thunderx_l2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunderx_l2c_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca %struct.thunderx_l2c*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.edac_device_ctl_info* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.edac_device_ctl_info* %6, %struct.edac_device_ctl_info** %3, align 8
  %7 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.thunderx_l2c*, %struct.thunderx_l2c** %8, align 8
  store %struct.thunderx_l2c* %9, %struct.thunderx_l2c** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 130, label %21
    i32 129, label %29
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @L2C_TAD_INT_ENA_ALL, align 4
  %15 = load %struct.thunderx_l2c*, %struct.thunderx_l2c** %4, align 8
  %16 = getelementptr inbounds %struct.thunderx_l2c, %struct.thunderx_l2c* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @L2C_TAD_INT_ENA_W1C, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writeq(i32 %14, i64 %19)
  br label %37

21:                                               ; preds = %1
  %22 = load i32, i32* @L2C_CBC_INT_ENA_ALL, align 4
  %23 = load %struct.thunderx_l2c*, %struct.thunderx_l2c** %4, align 8
  %24 = getelementptr inbounds %struct.thunderx_l2c, %struct.thunderx_l2c* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @L2C_CBC_INT_ENA_W1C, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writeq(i32 %22, i64 %27)
  br label %37

29:                                               ; preds = %1
  %30 = load i32, i32* @L2C_MCI_INT_ENA_ALL, align 4
  %31 = load %struct.thunderx_l2c*, %struct.thunderx_l2c** %4, align 8
  %32 = getelementptr inbounds %struct.thunderx_l2c, %struct.thunderx_l2c* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @L2C_MCI_INT_ENA_W1C, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writeq(i32 %30, i64 %35)
  br label %37

37:                                               ; preds = %1, %29, %21, %13
  %38 = load %struct.thunderx_l2c*, %struct.thunderx_l2c** %4, align 8
  %39 = getelementptr inbounds %struct.thunderx_l2c, %struct.thunderx_l2c* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @edac_debugfs_remove_recursive(i32 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 1
  %44 = call i32 @edac_device_del_device(i32* %43)
  %45 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %46 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %45)
  ret void
}

declare dso_local %struct.edac_device_ctl_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @edac_debugfs_remove_recursive(i32) #1

declare dso_local i32 @edac_device_del_device(i32*) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
