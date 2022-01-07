; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.adc5_chip = type { i32, %struct.adc5_channel_prop* }
%struct.adc5_channel_prop = type { i64, i32 }

@adc5_prescale_ratios = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adc5_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc5_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adc5_chip*, align 8
  %13 = alloca %struct.adc5_channel_prop*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.adc5_chip* @iio_priv(%struct.iio_dev* %17)
  store %struct.adc5_chip* %18, %struct.adc5_chip** %12, align 8
  %19 = load %struct.adc5_chip*, %struct.adc5_chip** %12, align 8
  %20 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %19, i32 0, i32 1
  %21 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %20, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %21, i64 %24
  store %struct.adc5_channel_prop* %25, %struct.adc5_channel_prop** %13, align 8
  %26 = load i64, i64* %11, align 8
  switch i64 %26, label %57 [
    i64 128, label %27
  ]

27:                                               ; preds = %5
  %28 = load %struct.adc5_chip*, %struct.adc5_chip** %12, align 8
  %29 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %13, align 8
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = call i32 @adc5_do_conversion(%struct.adc5_chip* %28, %struct.adc5_channel_prop* %29, %struct.iio_chan_spec* %30, i32* %14, i32* %15)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %6, align 4
  br label %60

36:                                               ; preds = %27
  %37 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %13, align 8
  %38 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** @adc5_prescale_ratios, align 8
  %41 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %13, align 8
  %42 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load %struct.adc5_chip*, %struct.adc5_chip** %12, align 8
  %46 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @qcom_adc5_hw_scale(i32 %39, i32* %44, i32 %47, i32 %48, i32* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %36
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %36
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %5
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %55, %53, %34
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.adc5_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adc5_do_conversion(%struct.adc5_chip*, %struct.adc5_channel_prop*, %struct.iio_chan_spec*, i32*, i32*) #1

declare dso_local i32 @qcom_adc5_hw_scale(i32, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
