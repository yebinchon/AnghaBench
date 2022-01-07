; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_therm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_therm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_linear_graph = type { i32 }
%struct.vadc_prescale_ratio = type { i32 }

@adcmap_100k_104ef_104fb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vadc_linear_graph*, %struct.vadc_prescale_ratio*, i32, i32, i32*)* @qcom_vadc_scale_therm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_vadc_scale_therm(%struct.vadc_linear_graph* %0, %struct.vadc_prescale_ratio* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vadc_linear_graph*, align 8
  %8 = alloca %struct.vadc_prescale_ratio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vadc_linear_graph* %0, %struct.vadc_linear_graph** %7, align 8
  store %struct.vadc_prescale_ratio* %1, %struct.vadc_prescale_ratio** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.vadc_linear_graph*, %struct.vadc_linear_graph** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @qcom_vadc_scale_calib(%struct.vadc_linear_graph* %14, i32 %15, i32 %16, i32* %12)
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @div64_s64(i32 %21, i32 1000)
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @adcmap_100k_104ef_104fb, align 4
  %25 = load i32, i32* @adcmap_100k_104ef_104fb, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @qcom_vadc_map_voltage_temp(i32 %24, i32 %26, i32 %27, i32* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %23
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  store i32 %37, i32* %35, align 4
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %32
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @qcom_vadc_scale_calib(%struct.vadc_linear_graph*, i32, i32, i32*) #1

declare dso_local i32 @div64_s64(i32, i32) #1

declare dso_local i32 @qcom_vadc_map_voltage_temp(i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
