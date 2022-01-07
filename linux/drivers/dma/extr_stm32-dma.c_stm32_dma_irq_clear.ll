; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_irq_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_irq_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i32 }
%struct.stm32_dma_device = type { i32 }

@STM32_DMA_MASKI = common dso_local global i32 0, align 4
@STM32_DMA_HIFCR = common dso_local global i32 0, align 4
@STM32_DMA_LIFCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_dma_chan*, i32)* @stm32_dma_irq_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_dma_irq_clear(%struct.stm32_dma_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_dma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_dma_device*, align 8
  %6 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %8 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %7)
  store %struct.stm32_dma_device* %8, %struct.stm32_dma_device** %5, align 8
  %9 = load i32, i32* @STM32_DMA_MASKI, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 2
  %17 = shl i32 %16, 3
  %18 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = mul nsw i32 %21, 6
  %23 = or i32 %17, %22
  %24 = shl i32 %12, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %5, align 8
  %32 = load i32, i32* @STM32_DMA_HIFCR, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %31, i32 %32, i32 %33)
  br label %40

35:                                               ; preds = %2
  %36 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %5, align 8
  %37 = load i32, i32* @STM32_DMA_LIFCR, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @stm32_dma_write(%struct.stm32_dma_device* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  ret void
}

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_write(%struct.stm32_dma_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
