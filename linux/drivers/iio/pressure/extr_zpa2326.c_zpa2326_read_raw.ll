; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_zpa2326.c_zpa2326_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }

@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @zpa2326_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpa2326_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %11, align 8
  switch i64 %12, label %51 [
    i64 132, label %13
    i64 130, label %20
    i64 133, label %35
    i64 131, label %46
  ]

13:                                               ; preds = %5
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @zpa2326_sample_oneshot(%struct.iio_dev* %14, i32 %17, i32* %18)
  store i32 %19, i32* %6, align 4
  br label %54

20:                                               ; preds = %5
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %28
  ]

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  store i32 1, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 64000, i32* %26, align 4
  %27 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %27, i32* %6, align 4
  br label %54

28:                                               ; preds = %20
  %29 = load i32*, i32** %9, align 8
  store i32 6, i32* %29, align 4
  %30 = load i32*, i32** %10, align 8
  store i32 490000, i32* %30, align 4
  %31 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %31, i32* %6, align 4
  br label %54

32:                                               ; preds = %20
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %54

35:                                               ; preds = %5
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %43 [
    i32 128, label %39
  ]

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  store i32 -17683000, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 649, i32* %41, align 4
  %42 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %42, i32* %6, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %54

46:                                               ; preds = %5
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = call i32 @zpa2326_get_frequency(%struct.iio_dev* %47)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %50, i32* %6, align 4
  br label %54

51:                                               ; preds = %5
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %46, %43, %39, %32, %28, %24, %13
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @zpa2326_sample_oneshot(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @zpa2326_get_frequency(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
