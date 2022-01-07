; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max44009_data = type { i32 }

@MAX44009_SCALE_NUMERATOR = common dso_local global i32 0, align 4
@MAX44009_SCALE_DENOMINATOR = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @max44009_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44009_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.max44009_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.max44009_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.max44009_data* %16, %struct.max44009_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %60 [
    i64 129, label %18
    i64 130, label %41
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %38 [
    i32 128, label %22
  ]

22:                                               ; preds = %18
  %23 = load %struct.max44009_data*, %struct.max44009_data** %12, align 8
  %24 = call i32 @max44009_read_lux_raw(%struct.max44009_data* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %6, align 4
  br label %63

29:                                               ; preds = %22
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @MAX44009_SCALE_NUMERATOR, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @MAX44009_SCALE_DENOMINATOR, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %37, i32* %6, align 4
  br label %63

38:                                               ; preds = %18
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %63

41:                                               ; preds = %5
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %57 [
    i32 128, label %45
  ]

45:                                               ; preds = %41
  %46 = load %struct.max44009_data*, %struct.max44009_data** %12, align 8
  %47 = call i32 @max44009_read_int_time(%struct.max44009_data* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %63

52:                                               ; preds = %45
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %56, i32* %6, align 4
  br label %63

57:                                               ; preds = %41
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %63

60:                                               ; preds = %5
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %57, %52, %50, %38, %29, %27
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.max44009_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @max44009_read_lux_raw(%struct.max44009_data*) #1

declare dso_local i32 @max44009_read_int_time(%struct.max44009_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
