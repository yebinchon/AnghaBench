; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_alim15x3_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_alim15x3_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_port_info = type { i32, i64, i64, i32*, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@ali15x3_chipset = common dso_local global %struct.ide_port_info zeroinitializer, align 8
@IDE_HFLAG_NO_LBA48_DMA = common dso_local global i32 0, align 4
@IDE_HFLAG_NO_ATAPI_DMA = common dso_local global i32 0, align 4
@ATA_UDMA2 = common dso_local global i32 0, align 4
@ATA_UDMA4 = common dso_local global i32 0, align 4
@ATA_UDMA5 = common dso_local global i32 0, align 4
@ATA_UDMA6 = common dso_local global i32 0, align 4
@ali_dma_ops = common dso_local global i32 0, align 4
@IDE_HFLAG_NO_DMA = common dso_local global i32 0, align 4
@IDE_HFLAG_CLEAR_SIMPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @alim15x3_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alim15x3_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.ide_port_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %8 = bitcast %struct.ide_port_info* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.ide_port_info* @ali15x3_chipset to i8*), i64 40, i1 false)
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 196
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @IDE_HFLAG_NO_LBA48_DMA, align 4
  %19 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 32
  br i1 %24, label %25, label %61

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* @IDE_HFLAG_NO_ATAPI_DMA, align 4
  %30 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 194
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @ATA_UDMA2, align 4
  %38 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 4
  store i32 %37, i32* %38, align 8
  br label %59

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 194
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 195
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @ATA_UDMA4, align 4
  %47 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  br label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 196
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @ATA_UDMA5, align 4
  %53 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 4
  store i32 %52, i32* %53, align 8
  br label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @ATA_UDMA6, align 4
  %56 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %45
  br label %59

59:                                               ; preds = %58, %36
  %60 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 3
  store i32* @ali_dma_ops, i32** %60, align 8
  br label %68

61:                                               ; preds = %22
  %62 = load i32, i32* @IDE_HFLAG_NO_DMA, align 4
  %63 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %62
  store i32 %65, i32* %63, align 8
  %66 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 2
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %59
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @IDE_HFLAG_CLEAR_SIMPLEX, align 4
  %73 = getelementptr inbounds %struct.ide_port_info, %struct.ide_port_info* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = call i32 @ide_pci_init_one(%struct.pci_dev* %77, %struct.ide_port_info* %5, i32* null)
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ide_pci_init_one(%struct.pci_dev*, %struct.ide_port_info*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
