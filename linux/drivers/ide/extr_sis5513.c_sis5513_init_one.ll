; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_sis5513.c_sis5513_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_sis5513.c_sis5513_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32, i32* }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@sis5513_chipset = common dso_local global %struct.ide_port_info zeroinitializer, align 8
@__const.sis5513_init_one.udma_rates = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 7, i32 31, i32 63, i32 63, i32 127, i32 127], align 16
@ENOTSUPP = common dso_local global i32 0, align 4
@chipset_family = common dso_local global i64 0, align 8
@ATA_133 = common dso_local global i64 0, align 8
@sis_ata133_port_ops = common dso_local global i32 0, align 4
@sis_port_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @sis5513_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis5513_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ide_port_info, align 8
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = bitcast %struct.ide_port_info* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.ide_port_info* @sis5513_chipset to i8*), i64 16, i1 false)
  %10 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([8 x i32]* @__const.sis5513_init_one.udma_rates to i8*), i64 32, i1 false)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i32 @pci_enable_device(%struct.pci_dev* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i64 @sis_find_family(%struct.pci_dev* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %17
  %25 = load i64, i64* @chipset_family, align 8
  %26 = load i64, i64* @ATA_133, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %6, i32 0, i32 1
  store i32* @sis_ata133_port_ops, i32** %29, align 8
  br label %32

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %6, i32 0, i32 1
  store i32* @sis_port_ops, i32** %31, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i64, i64* @chipset_family, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = call i32 @ide_pci_init_one(%struct.pci_dev* %37, %struct.ide_port_info* %6, i32* null)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %21, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #2

declare dso_local i64 @sis_find_family(%struct.pci_dev*) #2

declare dso_local i32 @ide_pci_init_one(%struct.pci_dev*, %struct.ide_port_info*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
