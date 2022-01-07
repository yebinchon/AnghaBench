; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_get_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-dma.c_stm32_dma_get_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dma_chan = type { i32 }

@STM32_DMA_BYTE = common dso_local global i32 0, align 4
@STM32_DMA_HALF_WORD = common dso_local global i32 0, align 4
@STM32_DMA_WORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Dma bus width not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dma_chan*, i32)* @stm32_dma_get_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dma_get_width(%struct.stm32_dma_chan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_dma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.stm32_dma_chan* %0, %struct.stm32_dma_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %13 [
    i32 130, label %7
    i32 129, label %9
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @STM32_DMA_BYTE, align 4
  store i32 %8, i32* %3, align 4
  br label %19

9:                                                ; preds = %2
  %10 = load i32, i32* @STM32_DMA_HALF_WORD, align 4
  store i32 %10, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @STM32_DMA_WORD, align 4
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.stm32_dma_chan*, %struct.stm32_dma_chan** %4, align 8
  %15 = call i32 @chan2dev(%struct.stm32_dma_chan* %14)
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %13, %11, %9, %7
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.stm32_dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
