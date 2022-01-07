; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_code_voltage_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_vadc_scale_code_voltage_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vadc_prescale_ratio = type { i32, i32 }
%struct.adc5_data = type { i32 }

@VADC5_MAX_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.vadc_prescale_ratio*, %struct.adc5_data*, i32)* @qcom_vadc_scale_code_voltage_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_vadc_scale_code_voltage_factor(i64 %0, %struct.vadc_prescale_ratio* %1, %struct.adc5_data* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.vadc_prescale_ratio*, align 8
  %7 = alloca %struct.adc5_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.vadc_prescale_ratio* %1, %struct.vadc_prescale_ratio** %6, align 8
  store %struct.adc5_data* %2, %struct.adc5_data** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1875, i32* %11, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @VADC5_MAX_CODE, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %11, align 4
  %20 = mul nsw i32 %18, %19
  %21 = mul nsw i32 %20, 1000
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.adc5_data*, %struct.adc5_data** %7, align 8
  %24 = getelementptr inbounds %struct.adc5_data, %struct.adc5_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @div64_s64(i32 %22, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %16
  %30 = load %struct.vadc_prescale_ratio*, %struct.vadc_prescale_ratio** %6, align 8
  %31 = getelementptr inbounds %struct.vadc_prescale_ratio, %struct.vadc_prescale_ratio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.vadc_prescale_ratio*, %struct.vadc_prescale_ratio** %6, align 8
  %36 = getelementptr inbounds %struct.vadc_prescale_ratio, %struct.vadc_prescale_ratio* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @div64_s64(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %44

43:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @div64_s64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
