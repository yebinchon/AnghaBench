; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32f4_adc_start_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32f4_adc_start_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i32 }

@STM32F4_ADC_CR1 = common dso_local global i32 0, align 4
@STM32F4_SCAN = common dso_local global i32 0, align 4
@STM32F4_ADC_CR2 = common dso_local global i32 0, align 4
@STM32F4_DMA = common dso_local global i32 0, align 4
@STM32F4_DDS = common dso_local global i32 0, align 4
@STM32F4_EOCS = common dso_local global i32 0, align 4
@STM32F4_ADON = common dso_local global i32 0, align 4
@STM32F4_EXTEN_MASK = common dso_local global i32 0, align 4
@STM32F4_SWSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_adc*, i32)* @stm32f4_adc_start_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f4_adc_start_conv(%struct.stm32_adc* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_adc*, align 8
  %4 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %6 = load i32, i32* @STM32F4_ADC_CR1, align 4
  %7 = load i32, i32* @STM32F4_SCAN, align 4
  %8 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %5, i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %13 = load i32, i32* @STM32F4_ADC_CR2, align 4
  %14 = load i32, i32* @STM32F4_DMA, align 4
  %15 = load i32, i32* @STM32F4_DDS, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %12, i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %20 = load i32, i32* @STM32F4_ADC_CR2, align 4
  %21 = load i32, i32* @STM32F4_EOCS, align 4
  %22 = load i32, i32* @STM32F4_ADON, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %19, i32 %20, i32 %23)
  %25 = call i32 @usleep_range(i32 2, i32 3)
  %26 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %27 = load i32, i32* @STM32F4_ADC_CR2, align 4
  %28 = call i32 @stm32_adc_readl(%struct.stm32_adc* %26, i32 %27)
  %29 = load i32, i32* @STM32F4_EXTEN_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %18
  %33 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %34 = load i32, i32* @STM32F4_ADC_CR2, align 4
  %35 = load i32, i32* @STM32F4_SWSTART, align 4
  %36 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %18
  ret void
}

declare dso_local i32 @stm32_adc_set_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
