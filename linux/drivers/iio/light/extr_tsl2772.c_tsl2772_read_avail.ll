; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2772_chip = type { i64 }

@IIO_INTENSITY = common dso_local global i32 0, align 4
@tsl2772_int_calibscale_avail = common dso_local global i32* null, align 8
@tsl2772_prox_calibscale_avail = common dso_local global i32* null, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_AVAIL_LIST = common dso_local global i32 0, align 4
@tsl2772_int_time_avail = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_AVAIL_RANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32**, i32*, i32*, i64)* @tsl2772_read_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_read_avail(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32** %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tsl2772_chip*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %16 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %15)
  store %struct.tsl2772_chip* %16, %struct.tsl2772_chip** %14, align 8
  %17 = load i64, i64* %13, align 8
  switch i64 %17, label %59 [
    i64 129, label %18
    i64 128, label %40
  ]

18:                                               ; preds = %6
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IIO_INTENSITY, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32*, i32** @tsl2772_int_calibscale_avail, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = load i32*, i32** %12, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** @tsl2772_int_calibscale_avail, align 8
  %29 = load i32**, i32*** %10, align 8
  store i32* %28, i32** %29, align 8
  br label %36

30:                                               ; preds = %18
  %31 = load i32*, i32** @tsl2772_prox_calibscale_avail, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = load i32*, i32** %12, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** @tsl2772_prox_calibscale_avail, align 8
  %35 = load i32**, i32*** %10, align 8
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @IIO_VAL_INT, align 4
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_AVAIL_LIST, align 4
  store i32 %39, i32* %7, align 4
  br label %62

40:                                               ; preds = %6
  %41 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %42 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %14, align 8
  %43 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %50 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %14, align 8
  %51 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32*, i32** %49, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i32**, i32*** %10, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @IIO_AVAIL_RANGE, align 4
  store i32 %58, i32* %7, align 4
  br label %62

59:                                               ; preds = %6
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %40, %36
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
