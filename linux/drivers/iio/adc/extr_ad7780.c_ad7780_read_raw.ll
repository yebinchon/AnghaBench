; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7780.c_ad7780_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ad7780_state = type { i32, i32, i32, i32 }

@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7780_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7780_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7780_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ad7780_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ad7780_state* %15, %struct.ad7780_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %66 [
    i64 130, label %17
    i64 128, label %22
    i64 131, label %50
    i64 129, label %60
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ad_sigma_delta_single_conversion(%struct.iio_dev* %18, %struct.iio_chan_spec* %19, i32* %20)
  store i32 %21, i32* %6, align 4
  br label %70

22:                                               ; preds = %5
  %23 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %24 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_get_voltage(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %70

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  %33 = sdiv i32 %32, 1000
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %36 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %48 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %49, i32* %6, align 4
  br label %70

50:                                               ; preds = %5
  %51 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %52 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = shl i32 1, %55
  %57 = sub nsw i32 0, %56
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %70

60:                                               ; preds = %5
  %61 = load %struct.ad7780_state*, %struct.ad7780_state** %12, align 8
  %62 = getelementptr inbounds %struct.ad7780_state, %struct.ad7780_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %5
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %60, %50, %31, %29, %17
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.ad7780_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad_sigma_delta_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
