; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_read_selfcalib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_read_selfcalib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }
%struct.iio_dev = type { i32 }

@STM32H7_LINCALRDYW6 = common dso_local global i32 0, align 4
@STM32H7_LINCALFACT_NUM = common dso_local global i32 0, align 4
@STM32H7_ADC_CR = common dso_local global i32 0, align 4
@STM32_ADC_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to read calfact\0A\00", align 1
@STM32H7_ADC_CALFACT2 = common dso_local global i32 0, align 4
@STM32H7_LINCALFACT_MASK = common dso_local global i32 0, align 4
@STM32H7_LINCALFACT_SHIFT = common dso_local global i32 0, align 4
@STM32H7_ADC_CALFACT = common dso_local global i32 0, align 4
@STM32H7_CALFACT_S_MASK = common dso_local global i32 0, align 4
@STM32H7_CALFACT_S_SHIFT = common dso_local global i32 0, align 4
@STM32H7_CALFACT_D_MASK = common dso_local global i32 0, align 4
@STM32H7_CALFACT_D_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_adc*)* @stm32h7_adc_read_selfcalib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_adc_read_selfcalib(%struct.stm32_adc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_adc*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stm32_adc* %0, %struct.stm32_adc** %3, align 8
  %9 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %10 = call %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %4, align 8
  %11 = load i32, i32* @STM32H7_LINCALRDYW6, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @STM32H7_LINCALFACT_NUM, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %65, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %14
  %18 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %19 = load i32, i32* @STM32H7_ADC_CR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %18, i32 %19, i32 %20)
  %22 = load i32, i32* @STM32H7_ADC_CR, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @STM32_ADC_TIMEOUT_US, align 4
  %31 = call i32 @stm32_adc_readl_poll_timeout(i32 %22, i32 %23, i32 %29, i32 100, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %99

39:                                               ; preds = %17
  %40 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %41 = load i32, i32* @STM32H7_ADC_CALFACT2, align 4
  %42 = call i32 @stm32_adc_readl(%struct.stm32_adc* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @STM32H7_LINCALFACT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %47 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %45, i32* %52, align 4
  %53 = load i32, i32* @STM32H7_LINCALFACT_SHIFT, align 4
  %54 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %55 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, %53
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %39
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %5, align 4
  br label %14

68:                                               ; preds = %14
  %69 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %70 = load i32, i32* @STM32H7_ADC_CALFACT, align 4
  %71 = call i32 @stm32_adc_readl(%struct.stm32_adc* %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @STM32H7_CALFACT_S_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %76 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @STM32H7_CALFACT_S_SHIFT, align 4
  %79 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %80 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, %78
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @STM32H7_CALFACT_D_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %88 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @STM32H7_CALFACT_D_SHIFT, align 4
  %91 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %92 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %97 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  store i32 1, i32* %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %68, %34
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc*) #1

declare dso_local i32 @stm32_adc_clr_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_readl_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
