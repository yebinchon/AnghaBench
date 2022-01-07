; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_start_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_start_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i32 }

@STM32H7_DMNGT_DMA_CIRC = common dso_local global i32 0, align 4
@STM32H7_DMNGT_DR_ONLY = common dso_local global i32 0, align 4
@STM32H7_ADC_CFGR = common dso_local global i32 0, align 4
@STM32H7_DMNGT_MASK = common dso_local global i32 0, align 4
@STM32H7_DMNGT_SHIFT = common dso_local global i32 0, align 4
@STM32H7_ADC_CR = common dso_local global i32 0, align 4
@STM32H7_ADSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_adc*, i32)* @stm32h7_adc_start_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32h7_adc_start_conv(%struct.stm32_adc* %0, i32 %1) #0 {
  %3 = alloca %struct.stm32_adc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @STM32H7_DMNGT_DMA_CIRC, align 4
  store i32 %11, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @STM32H7_DMNGT_DR_ONLY, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %20 = load i32, i32* @STM32H7_ADC_CFGR, align 4
  %21 = call i32 @stm32_adc_readl(%struct.stm32_adc* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @STM32H7_DMNGT_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @STM32H7_DMNGT_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %31 = load i32, i32* @STM32H7_ADC_CFGR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @stm32_adc_writel(%struct.stm32_adc* %30, i32 %31, i32 %32)
  %34 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %35 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %34, i32 0, i32 0
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %39 = load i32, i32* @STM32H7_ADC_CR, align 4
  %40 = load i32, i32* @STM32H7_ADSTART, align 4
  %41 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

declare dso_local i32 @stm32_adc_writel(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @stm32_adc_set_bits(%struct.stm32_adc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
