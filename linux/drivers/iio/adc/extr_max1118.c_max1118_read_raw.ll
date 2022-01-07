; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1118.c_max1118_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.max1118 = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @max1118_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1118_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.max1118*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.max1118* @iio_priv(%struct.iio_dev* %13)
  store %struct.max1118* %14, %struct.max1118** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %54 [
    i64 129, label %16
    i64 128, label %39
  ]

16:                                               ; preds = %5
  %17 = load %struct.max1118*, %struct.max1118** %12, align 8
  %18 = getelementptr inbounds %struct.max1118, %struct.max1118* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.max1118*, %struct.max1118** %12, align 8
  %21 = getelementptr inbounds %struct.max1118, %struct.max1118* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @max1118_read(i32 %22, i32 %25)
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.max1118*, %struct.max1118** %12, align 8
  %29 = getelementptr inbounds %struct.max1118, %struct.max1118* %28, i32 0, i32 1
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  br label %57

37:                                               ; preds = %16
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %38, i32* %6, align 4
  br label %57

39:                                               ; preds = %5
  %40 = load %struct.max1118*, %struct.max1118** %12, align 8
  %41 = getelementptr inbounds %struct.max1118, %struct.max1118* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @max1118_get_vref_mV(i32 %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  br label %57

51:                                               ; preds = %39
  %52 = load i32*, i32** %10, align 8
  store i32 8, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %5
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %51, %48, %37, %34
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.max1118* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max1118_read(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @max1118_get_vref_mV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
