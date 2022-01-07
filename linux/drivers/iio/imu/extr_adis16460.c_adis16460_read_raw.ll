; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16460.c_adis16460_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16460.c_adis16460_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adis16460 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16460_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16460_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16460*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.adis16460* @iio_priv(%struct.iio_dev* %13)
  store %struct.adis16460* %14, %struct.adis16460** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %67 [
    i64 131, label %16
    i64 129, label %21
    i64 132, label %59
    i64 130, label %62
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @adis_single_conversion(%struct.iio_dev* %17, %struct.iio_chan_spec* %18, i32 0, i32* %19)
  store i32 %20, i32* %6, align 4
  br label %70

21:                                               ; preds = %5
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %56 [
    i32 133, label %25
    i32 134, label %39
    i32 128, label %53
  ]

25:                                               ; preds = %21
  %26 = load %struct.adis16460*, %struct.adis16460** %12, align 8
  %27 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.adis16460*, %struct.adis16460** %12, align 8
  %33 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %38, i32* %6, align 4
  br label %70

39:                                               ; preds = %21
  %40 = load %struct.adis16460*, %struct.adis16460** %12, align 8
  %41 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.adis16460*, %struct.adis16460** %12, align 8
  %47 = getelementptr inbounds %struct.adis16460, %struct.adis16460* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %52, i32* %6, align 4
  br label %70

53:                                               ; preds = %21
  %54 = load i32*, i32** %9, align 8
  store i32 50, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %6, align 4
  br label %70

56:                                               ; preds = %21
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %70

59:                                               ; preds = %5
  %60 = load i32*, i32** %9, align 8
  store i32 500, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %6, align 4
  br label %70

62:                                               ; preds = %5
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @adis16460_get_freq(%struct.iio_dev* %63, i32* %64, i32* %65)
  store i32 %66, i32* %6, align 4
  br label %70

67:                                               ; preds = %5
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %62, %59, %56, %53, %39, %25, %16
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.adis16460* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @adis16460_get_freq(%struct.iio_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
