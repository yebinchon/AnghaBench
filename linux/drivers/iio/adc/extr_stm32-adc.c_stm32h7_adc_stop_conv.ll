; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_stop_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_stop_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { i32 }
%struct.iio_dev = type { i32 }

@STM32H7_ADC_CR = common dso_local global i32 0, align 4
@STM32H7_ADSTP = common dso_local global i32 0, align 4
@STM32H7_ADSTART = common dso_local global i32 0, align 4
@STM32_ADC_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stop failed\0A\00", align 1
@STM32H7_ADC_CFGR = common dso_local global i32 0, align 4
@STM32H7_DMNGT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_adc*)* @stm32h7_adc_stop_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32h7_adc_stop_conv(%struct.stm32_adc* %0) #0 {
  %2 = alloca %struct.stm32_adc*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %2, align 8
  %6 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %7 = call %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %3, align 8
  %8 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %9 = load i32, i32* @STM32H7_ADC_CR, align 4
  %10 = load i32, i32* @STM32H7_ADSTP, align 4
  %11 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @STM32H7_ADC_CR, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @STM32H7_ADSTART, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @STM32_ADC_TIMEOUT_US, align 4
  %21 = call i32 @stm32_adc_readl_poll_timeout(i32 %12, i32 %13, i32 %19, i32 100, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.stm32_adc*, %struct.stm32_adc** %2, align 8
  %30 = load i32, i32* @STM32H7_ADC_CFGR, align 4
  %31 = load i32, i32* @STM32H7_DMNGT_MASK, align 4
  %32 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc*) #1

declare dso_local i32 @stm32_adc_set_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_readl_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @stm32_adc_clr_bits(%struct.stm32_adc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
