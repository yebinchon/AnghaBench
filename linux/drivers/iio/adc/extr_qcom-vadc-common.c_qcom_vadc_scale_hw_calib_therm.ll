; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_hw_calib_therm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_hw_calib_therm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_prescale_ratio = type { i32 }
%struct.adc5_data = type { i32 }

@adcmap_100k_104ef_104fb_1875_vref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_prescale_ratio*, %struct.adc5_data*, i32, i32*)* @qcom_vadc_scale_hw_calib_therm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_vadc_scale_hw_calib_therm(%struct.vadc_prescale_ratio* %0, %struct.adc5_data* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vadc_prescale_ratio*, align 8
  %6 = alloca %struct.adc5_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.vadc_prescale_ratio* %0, %struct.vadc_prescale_ratio** %5, align 8
  store %struct.adc5_data* %1, %struct.adc5_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.vadc_prescale_ratio*, %struct.vadc_prescale_ratio** %5, align 8
  %12 = load %struct.adc5_data*, %struct.adc5_data** %6, align 8
  %13 = call i32 @qcom_vadc_scale_code_voltage_factor(i32 %10, %struct.vadc_prescale_ratio* %11, %struct.adc5_data* %12, i32 1000)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @adcmap_100k_104ef_104fb_1875_vref, align 4
  %15 = load i32, i32* @adcmap_100k_104ef_104fb_1875_vref, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @qcom_vadc_map_voltage_temp(i32 %14, i32 %16, i32 %17, i32* %18)
  ret i32 %19
}

declare dso_local i32 @qcom_vadc_scale_code_voltage_factor(i32, %struct.vadc_prescale_ratio*, %struct.adc5_data*, i32) #1

declare dso_local i32 @qcom_vadc_map_voltage_temp(i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
