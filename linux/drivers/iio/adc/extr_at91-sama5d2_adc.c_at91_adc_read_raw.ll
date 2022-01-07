; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.at91_adc_state = type { i32, i32 }

@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @at91_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.at91_adc_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.at91_adc_state* %14, %struct.at91_adc_state** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %53 [
    i64 130, label %16
    i64 128, label %21
    i64 129, label %42
    i64 131, label %47
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @at91_adc_read_info_raw(%struct.iio_dev* %17, %struct.iio_chan_spec* %18, i32* %19)
  store i32 %20, i32* %6, align 4
  br label %56

21:                                               ; preds = %5
  %22 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %23 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 1000
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %31, %21
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %41, i32* %6, align 4
  br label %56

42:                                               ; preds = %5
  %43 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %44 = call i32 @at91_adc_get_sample_freq(%struct.at91_adc_state* %43)
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %46, i32* %6, align 4
  br label %56

47:                                               ; preds = %5
  %48 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %49 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %5
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %47, %42, %35, %16
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_read_info_raw(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @at91_adc_get_sample_freq(%struct.at91_adc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
