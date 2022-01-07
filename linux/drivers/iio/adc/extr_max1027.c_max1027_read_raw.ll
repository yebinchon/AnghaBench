; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1027.c_max1027_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1027.c_max1027_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max1027_state = type { i32 }

@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @max1027_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1027_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.max1027_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.max1027_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.max1027_state* %14, %struct.max1027_state** %12, align 8
  %15 = load %struct.max1027_state*, %struct.max1027_state** %12, align 8
  %16 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %10, align 8
  switch i64 %18, label %40 [
    i64 131, label %19
    i64 130, label %24
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @max1027_read_single_value(%struct.iio_dev* %20, %struct.iio_chan_spec* %21, i32* %22)
  store i32 %23, i32* %11, align 4
  br label %43

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %36 [
    i32 129, label %28
    i32 128, label %32
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  store i32 1, i32* %29, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 8, i32* %30, align 4
  %31 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %31, i32* %11, align 4
  br label %39

32:                                               ; preds = %24
  %33 = load i32*, i32** %8, align 8
  store i32 2500, i32* %33, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 10, i32* %34, align 4
  %35 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %35, i32* %11, align 4
  br label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %32, %28
  br label %43

40:                                               ; preds = %5
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %39, %19
  %44 = load %struct.max1027_state*, %struct.max1027_state** %12, align 8
  %45 = getelementptr inbounds %struct.max1027_state, %struct.max1027_state* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local %struct.max1027_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max1027_read_single_value(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
