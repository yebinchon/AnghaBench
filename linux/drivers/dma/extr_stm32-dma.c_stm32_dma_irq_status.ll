; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_irq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i32 }
%struct.stm32_dma_device = type { i32 }

@STM32_DMA_HISR = common dso_local global i32 0, align 4
@STM32_DMA_LISR = common dso_local global i32 0, align 4
@STM32_DMA_MASKI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dma_chan*)* @stm32_dma_irq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dma_irq_status(%struct.stm32_dma_chan* %0) #0 {
  %2 = alloca %struct.stm32_dma_chan*, align 8
  %3 = alloca %struct.stm32_dma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %2, align 8
  %6 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %7 = call %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan* %6)
  store %struct.stm32_dma_device* %7, %struct.stm32_dma_device** %3, align 8
  %8 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %9 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %15 = load i32, i32* @STM32_DMA_HISR, align 4
  %16 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.stm32_dma_device*, %struct.stm32_dma_device** %3, align 8
  %19 = load i32, i32* @STM32_DMA_LISR, align 4
  %20 = call i32 @stm32_dma_read(%struct.stm32_dma_device* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 2
  %27 = shl i32 %26, 3
  %28 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.stm32_dma_chan, %struct.stm32_dma_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = mul nsw i32 %31, 6
  %33 = or i32 %27, %32
  %34 = ashr i32 %22, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @STM32_DMA_MASKI, align 4
  %37 = and i32 %35, %36
  ret i32 %37
}

declare dso_local %struct.stm32_dma_device* @stm32_dma_get_dev(%struct.stm32_dma_chan*) #1

declare dso_local i32 @stm32_dma_read(%struct.stm32_dma_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
