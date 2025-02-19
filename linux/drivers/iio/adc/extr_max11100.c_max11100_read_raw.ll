; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max11100.c_max11100_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max11100.c_max11100_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max11100_state = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX11100_LSB_DIV = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @max11100_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max11100_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.max11100_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.max11100_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.max11100_state* %16, %struct.max11100_state** %14, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %45 [
    i64 129, label %18
    i64 128, label %28
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @max11100_read_single(%struct.iio_dev* %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %48

26:                                               ; preds = %18
  %27 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %27, i32* %6, align 4
  br label %48

28:                                               ; preds = %5
  %29 = load %struct.max11100_state*, %struct.max11100_state** %14, align 8
  %30 = getelementptr inbounds %struct.max11100_state, %struct.max11100_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_get_voltage(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %48

38:                                               ; preds = %28
  %39 = load i32, i32* %13, align 4
  %40 = sdiv i32 %39, 1000
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @MAX11100_LSB_DIV, align 4
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %5
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %38, %35, %26, %24
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.max11100_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @max11100_read_single(%struct.iio_dev*, i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
