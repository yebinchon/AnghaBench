; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dma_chan = type { i32 }

@DWAXIDMAC_IRQ_ALL = common dso_local global i32 0, align 4
@CH_INTSTATUS_ENA = common dso_local global i32 0, align 4
@DWAXIDMAC_IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axi_dma_chan*, i32)* @axi_chan_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_chan_irq_disable(%struct.axi_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.axi_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.axi_dma_chan* %0, %struct.axi_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DWAXIDMAC_IRQ_ALL, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @likely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %14 = load i32, i32* @CH_INTSTATUS_ENA, align 4
  %15 = load i32, i32* @DWAXIDMAC_IRQ_NONE, align 4
  %16 = call i32 @axi_chan_iowrite32(%struct.axi_dma_chan* %13, i32 %14, i32 %15)
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %19 = load i32, i32* @CH_INTSTATUS_ENA, align 4
  %20 = call i32 @axi_chan_ioread32(%struct.axi_dma_chan* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %3, align 8
  %26 = load i32, i32* @CH_INTSTATUS_ENA, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @axi_chan_iowrite32(%struct.axi_dma_chan* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %17, %12
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @axi_chan_iowrite32(%struct.axi_dma_chan*, i32, i32) #1

declare dso_local i32 @axi_chan_ioread32(%struct.axi_dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
