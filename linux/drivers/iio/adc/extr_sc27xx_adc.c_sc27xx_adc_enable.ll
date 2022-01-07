; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_adc_data = type { i32 }

@SC27XX_MODULE_EN = common dso_local global i32 0, align 4
@SC27XX_MODULE_ADC_EN = common dso_local global i32 0, align 4
@SC27XX_ARM_CLK_EN = common dso_local global i32 0, align 4
@SC27XX_CLK_ADC_EN = common dso_local global i32 0, align 4
@SC27XX_CLK_ADC_CLK_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_adc_data*)* @sc27xx_adc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_adc_enable(%struct.sc27xx_adc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc27xx_adc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sc27xx_adc_data* %0, %struct.sc27xx_adc_data** %3, align 8
  %5 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %3, align 8
  %6 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SC27XX_MODULE_EN, align 4
  %9 = load i32, i32* @SC27XX_MODULE_ADC_EN, align 4
  %10 = load i32, i32* @SC27XX_MODULE_ADC_EN, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %61

16:                                               ; preds = %1
  %17 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %3, align 8
  %18 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SC27XX_ARM_CLK_EN, align 4
  %21 = load i32, i32* @SC27XX_CLK_ADC_EN, align 4
  %22 = load i32, i32* @SC27XX_CLK_ADC_CLK_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SC27XX_CLK_ADC_EN, align 4
  %25 = load i32, i32* @SC27XX_CLK_ADC_CLK_EN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %23, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %53

31:                                               ; preds = %16
  %32 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %3, align 8
  %33 = call i32 @sc27xx_adc_scale_calibration(%struct.sc27xx_adc_data* %32, i32 1)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %44

37:                                               ; preds = %31
  %38 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %3, align 8
  %39 = call i32 @sc27xx_adc_scale_calibration(%struct.sc27xx_adc_data* %38, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %61

44:                                               ; preds = %42, %36
  %45 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %3, align 8
  %46 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SC27XX_ARM_CLK_EN, align 4
  %49 = load i32, i32* @SC27XX_CLK_ADC_EN, align 4
  %50 = load i32, i32* @SC27XX_CLK_ADC_CLK_EN, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %44, %30
  %54 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %3, align 8
  %55 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SC27XX_MODULE_EN, align 4
  %58 = load i32, i32* @SC27XX_MODULE_ADC_EN, align 4
  %59 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 0)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %43, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @sc27xx_adc_scale_calibration(%struct.sc27xx_adc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
