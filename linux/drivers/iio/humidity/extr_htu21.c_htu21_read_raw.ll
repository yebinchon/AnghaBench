; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_htu21.c_htu21_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_htu21.c_htu21_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ms_ht_dev = type { i64 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@htu21_samp_freq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @htu21_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htu21_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ms_ht_dev*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ms_ht_dev* @iio_priv(%struct.iio_dev* %16)
  store %struct.ms_ht_dev* %17, %struct.ms_ht_dev** %15, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %57 [
    i64 131, label %19
    i64 130, label %48
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %45 [
    i32 128, label %23
    i32 129, label %34
  ]

23:                                               ; preds = %19
  %24 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %15, align 8
  %25 = call i32 @ms_sensors_ht_read_temperature(%struct.ms_ht_dev* %24, i32* %13)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %60

30:                                               ; preds = %23
  %31 = load i32, i32* %13, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %33, i32* %6, align 4
  br label %60

34:                                               ; preds = %19
  %35 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %15, align 8
  %36 = call i32 @ms_sensors_ht_read_humidity(%struct.ms_ht_dev* %35, i32* %14)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %60

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %44, i32* %6, align 4
  br label %60

45:                                               ; preds = %19
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %60

48:                                               ; preds = %5
  %49 = load i32*, i32** @htu21_samp_freq, align 8
  %50 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %15, align 8
  %51 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %5
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %48, %45, %41, %39, %30, %28
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.ms_ht_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ms_sensors_ht_read_temperature(%struct.ms_ht_dev*, i32*) #1

declare dso_local i32 @ms_sensors_ht_read_humidity(%struct.ms_ht_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
