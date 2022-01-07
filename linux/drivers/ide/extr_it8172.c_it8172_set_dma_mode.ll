; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_it8172.c_it8172_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_it8172.c_it8172_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@__const.it8172_set_dma_mode.mwdma_to_pio = private unnamed_addr constant [3 x i64] [i64 0, i64 3, i64 4], align 16
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @it8172_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8172_set_dma_mode(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i64], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 4
  %22 = shl i32 3, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = call i32 @pci_read_config_byte(%struct.pci_dev* %30, i32 72, i64* %9)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = call i32 @pci_read_config_byte(%struct.pci_dev* %32, i32 74, i64* %10)
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @XFER_UDMA_0, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %2
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @XFER_UDMA_0, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 4
  %46 = zext i32 %45 to i64
  %47 = shl i64 %41, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = or i64 %50, %52
  %54 = call i32 @pci_write_config_byte(%struct.pci_dev* %49, i32 72, i64 %53)
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %55, -1
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = or i64 %61, %63
  %65 = call i32 @pci_write_config_byte(%struct.pci_dev* %60, i32 74, i64 %64)
  br label %94

66:                                               ; preds = %2
  %67 = bitcast [3 x i64]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 16 bitcast ([3 x i64]* @__const.it8172_set_dma_mode.mwdma_to_pio to i8*), i64 24, i1 false)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %7, align 4
  %71 = xor i32 %70, -1
  %72 = sext i32 %71 to i64
  %73 = and i64 %69, %72
  %74 = call i32 @pci_write_config_byte(%struct.pci_dev* %68, i32 72, i64 %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = xor i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = and i64 %76, %79
  %81 = call i32 @pci_write_config_byte(%struct.pci_dev* %75, i32 74, i64 %80)
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* @XFER_MW_DMA_0, align 8
  %84 = sub nsw i64 %82, %83
  %85 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @XFER_PIO_0, align 8
  %88 = add nsw i64 %86, %87
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = call i32 @it8172_set_pio_mode(%struct.TYPE_7__* %91, %struct.TYPE_8__* %92)
  br label %94

94:                                               ; preds = %66, %37
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @it8172_set_pio_mode(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
