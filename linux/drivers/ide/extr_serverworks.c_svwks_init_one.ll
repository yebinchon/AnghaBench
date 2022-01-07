; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_serverworks.c_svwks_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_serverworks.c_svwks_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }

@serverworks_chipsets = common dso_local global %struct.ide_port_info* null, align 8
@IDE_HFLAG_CLEAR_SIMPLEX = common dso_local global i32 0, align 4
@IDE_HFLAG_NON_BOOTABLE = common dso_local global i32 0, align 4
@IDE_HFLAG_SINGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @svwks_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svwks_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.ide_port_info, align 4
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %7 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.ide_port_info*, %struct.ide_port_info** @serverworks_chipsets, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %10, i64 %11
  %13 = bitcast %struct.ide_port_info* %5 to i8*
  %14 = bitcast %struct.ide_port_info* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @IDE_HFLAG_CLEAR_SIMPLEX, align 4
  %19 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %56

28:                                               ; preds = %25, %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PCI_FUNC(i32 %31)
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = call i32 @pci_resource_start(%struct.pci_dev* %36, i32 0)
  %38 = icmp ne i32 %37, 497
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @IDE_HFLAG_NON_BOOTABLE, align 4
  %41 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* @IDE_HFLAG_SINGLE, align 4
  %46 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %55

49:                                               ; preds = %28
  %50 = load i32, i32* @IDE_HFLAG_SINGLE, align 4
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %44
  br label %56

56:                                               ; preds = %55, %25
  br label %57

57:                                               ; preds = %56, %17
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = call i32 @ide_pci_init_one(%struct.pci_dev* %58, %struct.ide_port_info* %5, i32* null)
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PCI_FUNC(i32) #2

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #2

declare dso_local i32 @ide_pci_init_one(%struct.pci_dev*, %struct.ide_port_info*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
