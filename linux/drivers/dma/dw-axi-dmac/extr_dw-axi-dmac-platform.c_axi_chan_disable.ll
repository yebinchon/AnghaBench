; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-axi-dmac/extr_dw-axi-dmac-platform.c_axi_chan_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dma_chan = type { i32, i32 }

@DMAC_CHEN = common dso_local global i32 0, align 4
@DMAC_CHAN_EN_SHIFT = common dso_local global i32 0, align 4
@DMAC_CHAN_EN_WE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axi_dma_chan*)* @axi_chan_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_chan_disable(%struct.axi_dma_chan* %0) #0 {
  %2 = alloca %struct.axi_dma_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.axi_dma_chan* %0, %struct.axi_dma_chan** %2, align 8
  %4 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %5 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DMAC_CHEN, align 4
  %8 = call i32 @axi_dma_ioread32(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BIT(i32 %11)
  %13 = load i32, i32* @DMAC_CHAN_EN_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %19 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* @DMAC_CHAN_EN_WE_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.axi_dma_chan*, %struct.axi_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.axi_dma_chan, %struct.axi_dma_chan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMAC_CHEN, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @axi_dma_iowrite32(i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @axi_dma_ioread32(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @axi_dma_iowrite32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
