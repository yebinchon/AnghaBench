; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32f4_adc_stop_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32f4_adc_stop_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i32 }

@STM32F4_ADC_CR2 = common dso_local global i32 0, align 4
@STM32F4_EXTEN_MASK = common dso_local global i32 0, align 4
@STM32F4_ADC_SR = common dso_local global i32 0, align 4
@STM32F4_STRT = common dso_local global i32 0, align 4
@STM32F4_ADC_CR1 = common dso_local global i32 0, align 4
@STM32F4_SCAN = common dso_local global i32 0, align 4
@STM32F4_ADON = common dso_local global i32 0, align 4
@STM32F4_DMA = common dso_local global i32 0, align 4
@STM32F4_DDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_adc*)* @stm32f4_adc_stop_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32f4_adc_stop_conv(%struct.stm32_adc* %0) #0 {
  %2 = alloca %struct.stm32_adc*, align 8
  store %struct.stm32_adc* %0, %struct.stm32_adc** %2, align 8
  %3 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %4 = load i32, i32* @STM32F4_ADC_CR2, align 4
  %5 = load i32, i32* @STM32F4_EXTEN_MASK, align 4
  %6 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %3, i32 %4, i32 %5)
  %7 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %8 = load i32, i32* @STM32F4_ADC_SR, align 4
  %9 = load i32, i32* @STM32F4_STRT, align 4
  %10 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %7, i32 %8, i32 %9)
  %11 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %12 = load i32, i32* @STM32F4_ADC_CR1, align 4
  %13 = load i32, i32* @STM32F4_SCAN, align 4
  %14 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %11, i32 %12, i32 %13)
  %15 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %16 = load i32, i32* @STM32F4_ADC_CR2, align 4
  %17 = load i32, i32* @STM32F4_ADON, align 4
  %18 = load i32, i32* @STM32F4_DMA, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @STM32F4_DDS, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %15, i32 %16, i32 %21)
  ret void
}

declare dso_local i32 @stm32_adc_clr_bits(%struct.stm32_adc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
