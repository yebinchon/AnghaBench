; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_set_fifo_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_set_fifo_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@STM32_DMA_SFCR_MASK = common dso_local global i32 0, align 4
@STM32_DMA_SCR_DMEIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dma_chan*, i32, i32)* @stm32_dma_set_fifo_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_set_fifo_config(%struct.stm32_dma_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stm32_dma_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @STM32_DMA_SFCR_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @STM32_DMA_SCR_DMEIE, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %17 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %15
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @STM32_DMA_SCR_DMEIE, align 4
  %28 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  br label %40

33:                                               ; preds = %23, %3
  %34 = load i32, i32* @STM32_DMA_SFCR_MASK, align 4
  %35 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %26
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
