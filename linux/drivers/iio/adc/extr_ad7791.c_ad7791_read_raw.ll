; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ad7791_state = type { i32, i32, i32 }

@AD7791_MODE_UNIPOLAR = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@AD7791_CH_AVDD_MONITOR = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@AD7791_FILTER_RATE_MASK = common dso_local global i32 0, align 4
@ad7791_sample_freq_avail = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad7791_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7791_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad7791_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ad7791_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad7791_state* %17, %struct.ad7791_state** %12, align 8
  %18 = load %struct.ad7791_state*, %struct.ad7791_state** %12, align 8
  %19 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AD7791_MODE_UNIPOLAR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i64, i64* %11, align 8
  switch i64 %27, label %111 [
    i64 130, label %28
    i64 131, label %33
    i64 128, label %49
    i64 129, label %88
  ]

28:                                               ; preds = %5
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @ad_sigma_delta_single_conversion(%struct.iio_dev* %29, %struct.iio_chan_spec* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  br label %114

33:                                               ; preds = %5
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  store i32 0, i32* %37, align 4
  br label %47

38:                                               ; preds = %33
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %42, 1
  %44 = shl i32 1, %43
  %45 = sub nsw i32 0, %44
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %36
  %48 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %48, i32* %6, align 4
  br label %114

49:                                               ; preds = %5
  %50 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %51 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AD7791_CH_AVDD_MONITOR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32*, i32** %9, align 8
  store i32 5850, i32* %56, align 4
  br label %70

57:                                               ; preds = %49
  %58 = load %struct.ad7791_state*, %struct.ad7791_state** %12, align 8
  %59 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @regulator_get_voltage(i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %6, align 4
  br label %114

66:                                               ; preds = %57
  %67 = load i32, i32* %15, align 4
  %68 = sdiv i32 %67, 1000
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %55
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  br label %86

79:                                               ; preds = %70
  %80 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %81 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %79, %73
  %87 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %87, i32* %6, align 4
  br label %114

88:                                               ; preds = %5
  %89 = load %struct.ad7791_state*, %struct.ad7791_state** %12, align 8
  %90 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AD7791_FILTER_RATE_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %14, align 4
  %94 = load i32**, i32*** @ad7791_sample_freq_avail, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32**, i32*** @ad7791_sample_freq_avail, align 8
  %103 = load i32, i32* %14, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %110, i32* %6, align 4
  br label %114

111:                                              ; preds = %5
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %88, %86, %64, %47, %28
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local %struct.ad7791_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ad_sigma_delta_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
