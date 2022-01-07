; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tcs3414_data = type { i32, i64, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@TCS3414_GAIN_MASK = common dso_local global i32 0, align 4
@TCS3414_GAIN_SHIFT = common dso_local global i32 0, align 4
@tcs3414_scales = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@tcs3414_times = common dso_local global i32* null, align 8
@TCS3414_INTEG_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tcs3414_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3414_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tcs3414_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.tcs3414_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.tcs3414_data* %16, %struct.tcs3414_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %90 [
    i64 129, label %18
    i64 128, label %52
    i64 130, label %77
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %93

25:                                               ; preds = %18
  %26 = load %struct.tcs3414_data*, %struct.tcs3414_data** %12, align 8
  %27 = call i32 @tcs3414_req_data(%struct.tcs3414_data* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %31)
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %6, align 4
  br label %93

34:                                               ; preds = %25
  %35 = load %struct.tcs3414_data*, %struct.tcs3414_data** %12, align 8
  %36 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @i2c_smbus_read_word_data(i32 %37, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %42)
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %6, align 4
  br label %93

48:                                               ; preds = %34
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %51, i32* %6, align 4
  br label %93

52:                                               ; preds = %5
  %53 = load %struct.tcs3414_data*, %struct.tcs3414_data** %12, align 8
  %54 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TCS3414_GAIN_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @TCS3414_GAIN_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32**, i32*** @tcs3414_scales, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32**, i32*** @tcs3414_scales, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %76, i32* %6, align 4
  br label %93

77:                                               ; preds = %5
  %78 = load i32*, i32** %9, align 8
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** @tcs3414_times, align 8
  %80 = load %struct.tcs3414_data*, %struct.tcs3414_data** %12, align 8
  %81 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TCS3414_INTEG_MASK, align 8
  %84 = and i64 %82, %83
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %86, 1000
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %5
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %77, %52, %48, %46, %30, %23
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.tcs3414_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @tcs3414_req_data(%struct.tcs3414_data*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_word_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
