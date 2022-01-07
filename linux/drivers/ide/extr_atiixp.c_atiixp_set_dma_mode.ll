; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_atiixp.c_atiixp_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_atiixp.c_atiixp_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@atiixp_lock = common dso_local global i32 0, align 4
@ATIIXP_IDE_UDMA_CONTROL = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_UDMA_MODE = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@ATIIXP_IDE_MDMA_TIMING = common dso_local global i32 0, align 4
@mdma_timing = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*)* @atiixp_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atiixp_set_dma_mode(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, 1
  %21 = mul nsw i32 %20, 8
  store i32 %21, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @spin_lock_irqsave(i32* @atiixp_lock, i64 %25)
  %27 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %28 = load i32, i32* @ATIIXP_IDE_UDMA_CONTROL, align 4
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %27, i32 %28, i32* %10)
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @XFER_UDMA_0, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %2
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %36 = call i32 @pci_read_config_word(%struct.pci_dev* %34, i32 %35, i32* %9)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = shl i32 7, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 7
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 4
  %51 = shl i32 %46, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = load i32, i32* @ATIIXP_IDE_UDMA_MODE, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @pci_write_config_word(%struct.pci_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 1, %60
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %111

64:                                               ; preds = %2
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @XFER_MW_DMA_0, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 3
  store i32 %70, i32* %12, align 4
  %71 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %72 = load i32, i32* @ATIIXP_IDE_MDMA_TIMING, align 4
  %73 = call i32 @pci_read_config_dword(%struct.pci_dev* %71, i32 %72, i32* %8)
  %74 = load i32, i32* %7, align 4
  %75 = shl i32 255, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mdma_timing, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = shl i32 %84, %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mdma_timing, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 4
  %95 = shl i32 %92, %94
  %96 = or i32 %86, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %100 = load i32, i32* @ATIIXP_IDE_MDMA_TIMING, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @pci_write_config_dword(%struct.pci_dev* %99, i32 %100, i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 1, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %68, %64
  br label %111

111:                                              ; preds = %110, %33
  %112 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %113 = load i32, i32* @ATIIXP_IDE_UDMA_CONTROL, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @pci_write_config_word(%struct.pci_dev* %112, i32 %113, i32 %114)
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* @atiixp_lock, i64 %116)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
