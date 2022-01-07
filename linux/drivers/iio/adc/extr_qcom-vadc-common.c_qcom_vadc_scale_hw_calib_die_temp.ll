; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_hw_calib_die_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_hw_calib_die_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_prescale_ratio = type { i32 }
%struct.adc5_data = type { i32 }

@KELVINMIL_CELSIUSMIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_prescale_ratio*, %struct.adc5_data*, i32, i32*)* @qcom_vadc_scale_hw_calib_die_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_vadc_scale_hw_calib_die_temp(%struct.vadc_prescale_ratio* %0, %struct.adc5_data* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vadc_prescale_ratio*, align 8
  %6 = alloca %struct.adc5_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.vadc_prescale_ratio* %0, %struct.vadc_prescale_ratio** %5, align 8
  store %struct.adc5_data* %1, %struct.adc5_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.vadc_prescale_ratio*, %struct.vadc_prescale_ratio** %5, align 8
  %11 = load %struct.adc5_data*, %struct.adc5_data** %6, align 8
  %12 = call i32 @qcom_vadc_scale_code_voltage_factor(i32 %9, %struct.vadc_prescale_ratio* %10, %struct.adc5_data* %11, i32 2)
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i64, i64* @KELVINMIL_CELSIUSMIL, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %14
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  ret i32 0
}

declare dso_local i32 @qcom_vadc_scale_code_voltage_factor(i32, %struct.vadc_prescale_ratio*, %struct.adc5_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
