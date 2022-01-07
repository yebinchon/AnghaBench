; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_ocx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_thunderx_edac.c_thunderx_ocx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.edac_device_ctl_info = type { %struct.thunderx_ocx* }
%struct.thunderx_ocx = type { i32, i64 }

@OCX_COM_INT_ENA_ALL = common dso_local global i32 0, align 4
@OCX_COM_INT_ENA_W1C = common dso_local global i64 0, align 8
@OCX_INTS = common dso_local global i32 0, align 4
@OCX_COM_LINKX_INT_ENA_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @thunderx_ocx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunderx_ocx_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca %struct.thunderx_ocx*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.edac_device_ctl_info* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.edac_device_ctl_info* %7, %struct.edac_device_ctl_info** %3, align 8
  %8 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %9, align 8
  store %struct.thunderx_ocx* %10, %struct.thunderx_ocx** %4, align 8
  %11 = load i32, i32* @OCX_COM_INT_ENA_ALL, align 4
  %12 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %4, align 8
  %13 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OCX_COM_INT_ENA_W1C, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writeq(i32 %11, i64 %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %31, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @OCX_INTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32, i32* @OCX_COM_LINKX_INT_ENA_ALL, align 4
  %24 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %4, align 8
  %25 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @OCX_COM_LINKX_INT_ENA_W1C(i32 %27)
  %29 = add nsw i64 %26, %28
  %30 = call i32 @writeq(i32 %23, i64 %29)
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.thunderx_ocx*, %struct.thunderx_ocx** %4, align 8
  %36 = getelementptr inbounds %struct.thunderx_ocx, %struct.thunderx_ocx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @edac_debugfs_remove_recursive(i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @edac_device_del_device(i32* %40)
  %42 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %43 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %42)
  ret void
}

declare dso_local %struct.edac_device_ctl_info* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i64 @OCX_COM_LINKX_INT_ENA_W1C(i32) #1

declare dso_local i32 @edac_debugfs_remove_recursive(i32) #1

declare dso_local i32 @edac_device_del_device(i32*) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
