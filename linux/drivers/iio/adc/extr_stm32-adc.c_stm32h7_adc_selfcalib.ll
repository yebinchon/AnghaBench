; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_selfcalib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_selfcalib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iio_dev = type { i32 }

@STM32H7_ADC_CR = common dso_local global i32 0, align 4
@STM32H7_ADCALDIF = common dso_local global i32 0, align 4
@STM32H7_ADCALLIN = common dso_local global i32 0, align 4
@STM32H7_ADCAL = common dso_local global i32 0, align 4
@STM32H7_ADC_CALIB_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"calibration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_adc*)* @stm32h7_adc_selfcalib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_adc_selfcalib(%struct.stm32_adc* %0) #0 {
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
  %10 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %17 = load i32, i32* @STM32H7_ADC_CR, align 4
  %18 = load i32, i32* @STM32H7_ADCALDIF, align 4
  %19 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %16, i32 %17, i32 %18)
  %20 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %21 = load i32, i32* @STM32H7_ADC_CR, align 4
  %22 = load i32, i32* @STM32H7_ADCALLIN, align 4
  %23 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %20, i32 %21, i32 %22)
  %24 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %25 = load i32, i32* @STM32H7_ADC_CR, align 4
  %26 = load i32, i32* @STM32H7_ADCAL, align 4
  %27 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @STM32H7_ADC_CR, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @STM32H7_ADCAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @STM32H7_ADC_CALIB_TIMEOUT_US, align 4
  %37 = call i32 @stm32_adc_readl_poll_timeout(i32 %28, i32 %29, i32 %35, i32 100, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %15
  %41 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %72

44:                                               ; preds = %15
  %45 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %46 = load i32, i32* @STM32H7_ADC_CR, align 4
  %47 = load i32, i32* @STM32H7_ADCALDIF, align 4
  %48 = load i32, i32* @STM32H7_ADCALLIN, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %45, i32 %46, i32 %49)
  %51 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %52 = load i32, i32* @STM32H7_ADC_CR, align 4
  %53 = load i32, i32* @STM32H7_ADCAL, align 4
  %54 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @STM32H7_ADC_CR, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @STM32H7_ADCAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* @STM32H7_ADC_CALIB_TIMEOUT_US, align 4
  %64 = call i32 @stm32_adc_readl_poll_timeout(i32 %55, i32 %56, i32 %62, i32 100, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %44
  %68 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %72

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71, %67, %40
  %73 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %74 = load i32, i32* @STM32H7_ADC_CR, align 4
  %75 = load i32, i32* @STM32H7_ADCALDIF, align 4
  %76 = load i32, i32* @STM32H7_ADCALLIN, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %73, i32 %74, i32 %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %72, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc*) #1

declare dso_local i32 @stm32_adc_clr_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_set_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_readl_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
