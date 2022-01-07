; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_restore_selfcalib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32h7_adc_restore_selfcalib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.iio_dev = type { i32 }

@STM32H7_CALFACT_S_SHIFT = common dso_local global i32 0, align 4
@STM32H7_CALFACT_D_SHIFT = common dso_local global i32 0, align 4
@STM32H7_ADC_CALFACT = common dso_local global i32 0, align 4
@STM32H7_LINCALRDYW6 = common dso_local global i32 0, align 4
@STM32H7_LINCALFACT_NUM = common dso_local global i32 0, align 4
@STM32H7_LINCALFACT_SHIFT = common dso_local global i32 0, align 4
@STM32H7_ADC_CALFACT2 = common dso_local global i32 0, align 4
@STM32H7_ADC_CR = common dso_local global i32 0, align 4
@STM32_ADC_TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to write calfact\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to read calfact\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"calfact not consistent\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_adc*)* @stm32h7_adc_restore_selfcalib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_adc_restore_selfcalib(%struct.stm32_adc* %0) #0 {
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
  %11 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @STM32H7_CALFACT_S_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STM32H7_CALFACT_D_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %16, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %25 = load i32, i32* @STM32H7_ADC_CALFACT, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @stm32_adc_writel(%struct.stm32_adc* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @STM32H7_LINCALRDYW6, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @STM32H7_LINCALFACT_NUM, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %114, %1
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %117

34:                                               ; preds = %31
  %35 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %36 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @STM32H7_LINCALFACT_SHIFT, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %46 = load i32, i32* @STM32H7_ADC_CALFACT2, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @stm32_adc_writel(%struct.stm32_adc* %45, i32 %46, i32 %47)
  %49 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %50 = load i32, i32* @STM32H7_ADC_CR, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @stm32_adc_set_bits(%struct.stm32_adc* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @STM32H7_ADC_CR, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @STM32_ADC_TIMEOUT_US, align 4
  %59 = call i32 @stm32_adc_readl_poll_timeout(i32 %53, i32 %54, i32 %57, i32 100, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %34
  %63 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %118

67:                                               ; preds = %34
  %68 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %69 = load i32, i32* @STM32H7_ADC_CR, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @STM32H7_ADC_CR, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* @STM32_ADC_TIMEOUT_US, align 4
  %81 = call i32 @stm32_adc_readl_poll_timeout(i32 %72, i32 %73, i32 %79, i32 100, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %2, align 4
  br label %118

89:                                               ; preds = %67
  %90 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %91 = load i32, i32* @STM32H7_ADC_CALFACT2, align 4
  %92 = call i32 @stm32_adc_readl(%struct.stm32_adc* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.stm32_adc*, %struct.stm32_adc** %3, align 8
  %95 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @STM32H7_LINCALFACT_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = icmp ne i32 %93, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %89
  %106 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %107 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %118

111:                                              ; preds = %89
  %112 = load i32, i32* %7, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %5, align 4
  br label %31

117:                                              ; preds = %31
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %105, %84, %62
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.stm32_adc*) #1

declare dso_local i32 @stm32_adc_writel(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_set_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_readl_poll_timeout(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @stm32_adc_clr_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
