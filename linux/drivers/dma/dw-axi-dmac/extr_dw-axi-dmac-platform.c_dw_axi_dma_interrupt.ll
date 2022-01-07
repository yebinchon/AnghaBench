; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dw_axi_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_dw_axi_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dma_chip = type { i32, %struct.dw_axi_dma* }
%struct.dw_axi_dma = type { %struct.axi_dma_chan*, %struct.TYPE_2__* }
%struct.axi_dma_chan = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"%s %u IRQ status: 0x%08x\0A\00", align 1
@DWAXIDMAC_IRQ_ALL_ERR = common dso_local global i64 0, align 8
@DWAXIDMAC_IRQ_DMA_TRF = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_axi_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_axi_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.axi_dma_chip*, align 8
  %6 = alloca %struct.dw_axi_dma*, align 8
  %7 = alloca %struct.axi_dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.axi_dma_chip*
  store %struct.axi_dma_chip* %11, %struct.axi_dma_chip** %5, align 8
  %12 = load %struct.axi_dma_chip*, %struct.axi_dma_chip** %5, align 8
  %13 = getelementptr inbounds %struct.axi_dma_chip, %struct.axi_dma_chip* %12, i32 0, i32 1
  %14 = load %struct.dw_axi_dma*, %struct.dw_axi_dma** %13, align 8
  store %struct.dw_axi_dma* %14, %struct.dw_axi_dma** %6, align 8
  %15 = load %struct.axi_dma_chip*, %struct.axi_dma_chip** %5, align 8
  %16 = call i32 @axi_dma_irq_disable(%struct.axi_dma_chip* %15)
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %62, %2
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.dw_axi_dma*, %struct.dw_axi_dma** %6, align 8
  %20 = getelementptr inbounds %struct.dw_axi_dma, %struct.dw_axi_dma* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %17
  %26 = load %struct.dw_axi_dma*, %struct.dw_axi_dma** %6, align 8
  %27 = getelementptr inbounds %struct.dw_axi_dma, %struct.dw_axi_dma* %26, i32 0, i32 0
  %28 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %28, i64 %29
  store %struct.axi_dma_chan* %30, %struct.axi_dma_chan** %7, align 8
  %31 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %7, align 8
  %32 = call i64 @axi_chan_irq_read(%struct.axi_dma_chan* %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @axi_chan_irq_clear(%struct.axi_dma_chan* %33, i64 %34)
  %36 = load %struct.axi_dma_chip*, %struct.axi_dma_chip** %5, align 8
  %37 = getelementptr inbounds %struct.axi_dma_chip, %struct.axi_dma_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %7, align 8
  %40 = call i32 @axi_chan_name(%struct.axi_dma_chan* %39)
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @dev_vdbg(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i64 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @DWAXIDMAC_IRQ_ALL_ERR, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %25
  %49 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @axi_chan_handle_err(%struct.axi_dma_chan* %49, i64 %50)
  br label %61

52:                                               ; preds = %25
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @DWAXIDMAC_IRQ_DMA_TRF, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %7, align 8
  %59 = call i32 @axi_chan_block_xfer_complete(%struct.axi_dma_chan* %58)
  br label %60

60:                                               ; preds = %57, %52
  br label %61

61:                                               ; preds = %60, %48
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  br label %17

65:                                               ; preds = %17
  %66 = load %struct.axi_dma_chip*, %struct.axi_dma_chip** %5, align 8
  %67 = call i32 @axi_dma_irq_enable(%struct.axi_dma_chip* %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %68
}

declare dso_local i32 @axi_dma_irq_disable(%struct.axi_dma_chip*) #1

declare dso_local i64 @axi_chan_irq_read(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_irq_clear(%struct.axi_dma_chan*, i64) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @axi_chan_name(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_chan_handle_err(%struct.axi_dma_chan*, i64) #1

declare dso_local i32 @axi_chan_block_xfer_complete(%struct.axi_dma_chan*) #1

declare dso_local i32 @axi_dma_irq_enable(%struct.axi_dma_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
