; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_rz1000.c_rz1000_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_rz1000.c_rz1000_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@rz1000_chipset = common dso_local global %struct.ide_port_info zeroinitializer, align 4
@IDE_HFLAG_SERIALIZE = common dso_local global i32 0, align 4
@IDE_HFLAG_NO_UNMASK_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @rz1000_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rz1000_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ide_port_info, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = bitcast %struct.ide_port_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.ide_port_info* @rz1000_chipset to i8*), i64 4, i1 false)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i32 @pci_enable_device(%struct.pci_dev* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i64 @rz1000_disable_readahead(%struct.pci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* @IDE_HFLAG_SERIALIZE, align 4
  %21 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @IDE_HFLAG_NO_UNMASK_IRQS, align 4
  %25 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %19, %15
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @ide_pci_init_one(%struct.pci_dev* %29, %struct.ide_port_info* %6, i32* null)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %13
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

declare dso_local i64 @rz1000_disable_readahead(%struct.pci_dev*) #2

declare dso_local i32 @ide_pci_init_one(%struct.pci_dev*, %struct.ide_port_info*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
