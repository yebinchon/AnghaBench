; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5637.c_ms5637_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5637.c_ms5637_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ms_tp_dev = type { i64 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ms5637_samp_freq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ms5637_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5637_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ms_tp_dev*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ms_tp_dev* @iio_priv(%struct.iio_dev* %16)
  store %struct.ms_tp_dev* %17, %struct.ms_tp_dev** %15, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %55 [
    i64 131, label %19
    i64 130, label %46
  ]

19:                                               ; preds = %5
  %20 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %15, align 8
  %21 = call i32 @ms_sensors_read_temp_and_pressure(%struct.ms_tp_dev* %20, i32* %13, i32* %14)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %58

26:                                               ; preds = %19
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %43 [
    i32 128, label %30
    i32 129, label %34
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %33, i32* %6, align 4
  br label %58

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = udiv i32 %35, 1000
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = urem i32 %38, 1000
  %40 = mul i32 %39, 1000
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %42, i32* %6, align 4
  br label %58

43:                                               ; preds = %26
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %58

46:                                               ; preds = %5
  %47 = load i32*, i32** @ms5637_samp_freq, align 8
  %48 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %15, align 8
  %49 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %6, align 4
  br label %58

55:                                               ; preds = %5
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55, %46, %43, %34, %30, %24
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.ms_tp_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ms_sensors_read_temp_and_pressure(%struct.ms_tp_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
