; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_adc5_hw_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-vadc-common.c_qcom_adc5_hw_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vadc_prescale_ratio*, %struct.adc5_data*, i32, i32*)* }
%struct.vadc_prescale_ratio = type { i32 }
%struct.adc5_data = type { i32 }

@SCALE_HW_CALIB_DEFAULT = common dso_local global i32 0, align 4
@SCALE_HW_CALIB_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid scale type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@scale_adc5_fn = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_adc5_hw_scale(i32 %0, %struct.vadc_prescale_ratio* %1, %struct.adc5_data* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vadc_prescale_ratio*, align 8
  %9 = alloca %struct.adc5_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.vadc_prescale_ratio* %1, %struct.vadc_prescale_ratio** %8, align 8
  store %struct.adc5_data* %2, %struct.adc5_data** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SCALE_HW_CALIB_DEFAULT, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SCALE_HW_CALIB_INVALID, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %5
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %36

24:                                               ; preds = %15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @scale_adc5_fn, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.vadc_prescale_ratio*, %struct.adc5_data*, i32, i32*)*, i32 (%struct.vadc_prescale_ratio*, %struct.adc5_data*, i32, i32*)** %29, align 8
  %31 = load %struct.vadc_prescale_ratio*, %struct.vadc_prescale_ratio** %8, align 8
  %32 = load %struct.adc5_data*, %struct.adc5_data** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 %30(%struct.vadc_prescale_ratio* %31, %struct.adc5_data* %32, i32 %33, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %24, %19
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
