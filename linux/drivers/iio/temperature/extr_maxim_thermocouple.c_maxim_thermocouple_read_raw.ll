; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_maxim_thermocouple.c_maxim_thermocouple_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_maxim_thermocouple.c_maxim_thermocouple_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.maxim_thermocouple_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @maxim_thermocouple_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maxim_thermocouple_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.maxim_thermocouple_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.maxim_thermocouple_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.maxim_thermocouple_data* %15, %struct.maxim_thermocouple_data** %12, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %50 [
    i64 130, label %19
    i64 129, label %38
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %19
  %27 = load %struct.maxim_thermocouple_data*, %struct.maxim_thermocouple_data** %12, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @maxim_thermocouple_read(%struct.maxim_thermocouple_data* %27, %struct.iio_chan_spec* %28, i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %36, i32* %6, align 4
  br label %52

37:                                               ; preds = %26
  br label %50

38:                                               ; preds = %5
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %46 [
    i32 128, label %42
  ]

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  store i32 62, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  store i32 500000, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %45, i32* %13, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %9, align 8
  store i32 250, i32* %47, align 4
  %48 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %5, %49, %37
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %35, %24
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.maxim_thermocouple_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @maxim_thermocouple_read(%struct.maxim_thermocouple_data*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
