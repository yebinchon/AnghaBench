; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_dma_cfg = type { i32, i32, i32 }

@STM32_DMA_SCR_CFG_MASK = common dso_local global i32 0, align 4
@STM32_DMA_SCR_TEIE = common dso_local global i32 0, align 4
@STM32_DMA_SCR_TCIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dma_chan*, %struct.stm32_dma_cfg*)* @stm32_dma_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_set_config(%struct.stm32_dma_chan* %0, %struct.stm32_dma_cfg* %1) #0 {
  %3 = alloca %struct.stm32_dma_chan*, align 8
  %4 = alloca %struct.stm32_dma_cfg*, align 8
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %3, align 8
  store %struct.stm32_dma_cfg* %1, %struct.stm32_dma_cfg** %4, align 8
  %5 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %5, i32 0, i32 1
  %7 = call i32 @stm32_dma_clear_reg(%struct.TYPE_2__* %6)
  %8 = load %struct.stm32_dma_cfg*, %struct.stm32_dma_cfg** %4, align 8
  %9 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @STM32_DMA_SCR_CFG_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.stm32_dma_cfg*, %struct.stm32_dma_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @STM32_DMA_SCR_REQ(i32 %18)
  %20 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @STM32_DMA_SCR_TEIE, align 4
  %26 = load i32, i32* @STM32_DMA_SCR_TCIE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  %33 = load %struct.stm32_dma_cfg*, %struct.stm32_dma_cfg** %4, align 8
  %34 = getelementptr inbounds %struct.stm32_dma_cfg, %struct.stm32_dma_cfg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @STM32_DMA_THRESHOLD_FTR_GET(i32 %35)
  %37 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %38 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @stm32_dma_clear_reg(%struct.TYPE_2__*) #1

declare dso_local i32 @STM32_DMA_SCR_REQ(i32) #1

declare dso_local i32 @STM32_DMA_THRESHOLD_FTR_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
