; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_exit_pwr_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_exit_pwr_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.iio_dev = type { i32 }

@STM32H7_ADC_CR = common dso_local global i32 0, align 4
@STM32H7_DEEPPWD = common dso_local global i32 0, align 4
@STM32H7_ADVREGEN = common dso_local global i32 0, align 4
@STM32H7_BOOST_CLKRATE = common dso_local global i64 0, align 8
@STM32H7_BOOST = common dso_local global i32 0, align 4
@STM32H7_ADC_ISR = common dso_local global i32 0, align 4
@STM32MP1_VREGREADY = common dso_local global i32 0, align 4
@STM32_ADC_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to exit power down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_adc*)* @stm32h7_adc_exit_pwr_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_adc_exit_pwr_down(%struct.stm32_adc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_adc*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %3, align 8
  %7 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %8 = call %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %10 = load i32, i32* @STM32H7_ADC_CR, align 4
  %11 = load i32, i32* @STM32H7_DEEPPWD, align 4
  %12 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %9, i32 %10, i32 %11)
  %13 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %14 = load i32, i32* @STM32H7_ADC_CR, align 4
  %15 = load i32, i32* @STM32H7_ADVREGEN, align 4
  %16 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %13, i32 %14, i32 %15)
  %17 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STM32H7_BOOST_CLKRATE, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %26 = load i32, i32* @STM32H7_ADC_CR, align 4
  %27 = load i32, i32* @STM32H7_BOOST, align 4
  %28 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %31 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = call i32 @usleep_range(i32 10, i32 20)
  store i32 0, i32* %2, align 4
  br label %58

38:                                               ; preds = %29
  %39 = load i32, i32* @STM32H7_ADC_ISR, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @STM32MP1_VREGREADY, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @STM32_ADC_TIMEOUT_US, align 4
  %45 = call i32 @stm32_adc_readl_poll_timeout(i32 %39, i32 %40, i32 %43, i32 100, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %50 = load i32, i32* @STM32H7_ADC_CR, align 4
  %51 = load i32, i32* @STM32H7_DEEPPWD, align 4
  %52 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %49, i32 %50, i32 %51)
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %48, %38
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %36
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc*) #1

declare dso_local i32 @stm32_adc_clr_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_set_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @stm32_adc_readl_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
