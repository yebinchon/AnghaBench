; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_m62332.c_m62332_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_m62332.c_m62332_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.m62332_data = type { i32*, i32 }

@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @m62332_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m62332_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.m62332_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.m62332_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.m62332_data* %15, %struct.m62332_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %46 [
    i64 128, label %17
    i64 129, label %32
    i64 130, label %43
  ]

17:                                               ; preds = %5
  %18 = load %struct.m62332_data*, %struct.m62332_data** %12, align 8
  %19 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regulator_get_voltage(i32 %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %50

26:                                               ; preds = %17
  %27 = load i32, i32* %13, align 4
  %28 = sdiv i32 %27, 1000
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  store i32 8, i32* %30, align 4
  %31 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %31, i32* %6, align 4
  br label %50

32:                                               ; preds = %5
  %33 = load %struct.m62332_data*, %struct.m62332_data** %12, align 8
  %34 = getelementptr inbounds %struct.m62332_data, %struct.m62332_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %42, i32* %6, align 4
  br label %50

43:                                               ; preds = %5
  %44 = load i32*, i32** %9, align 8
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %5
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %47, %43, %32, %26, %24
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.m62332_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
