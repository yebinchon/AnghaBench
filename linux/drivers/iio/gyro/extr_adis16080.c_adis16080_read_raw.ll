; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16080.c_adis16080_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_adis16080.c_adis16080_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.adis16080_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16080_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16080_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16080_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.adis16080_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.adis16080_state* %15, %struct.adis16080_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %81 [
    i64 131, label %17
    i64 130, label %38
    i64 132, label %67
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @adis16080_read_sample(%struct.iio_dev* %21, i32 %24, i32* %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %13, align 4
  br label %36

34:                                               ; preds = %17
  %35 = load i32, i32* @IIO_VAL_INT, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %6, align 4
  br label %85

38:                                               ; preds = %5
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %64 [
    i32 133, label %42
    i32 128, label %56
    i32 129, label %60
  ]

42:                                               ; preds = %38
  %43 = load %struct.adis16080_state*, %struct.adis16080_state** %12, align 8
  %44 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.adis16080_state*, %struct.adis16080_state** %12, align 8
  %50 = getelementptr inbounds %struct.adis16080_state, %struct.adis16080_state* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %55, i32* %6, align 4
  br label %85

56:                                               ; preds = %38
  %57 = load i32*, i32** %9, align 8
  store i32 5000, i32* %57, align 4
  %58 = load i32*, i32** %10, align 8
  store i32 12, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %59, i32* %6, align 4
  br label %85

60:                                               ; preds = %38
  %61 = load i32*, i32** %9, align 8
  store i32 60000, i32* %61, align 4
  %62 = load i32*, i32** %10, align 8
  store i32 585, i32* %62, align 4
  %63 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %63, i32* %6, align 4
  br label %85

64:                                               ; preds = %38
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %85

67:                                               ; preds = %5
  %68 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %69 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %78 [
    i32 128, label %71
    i32 129, label %74
  ]

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  store i32 2048, i32* %72, align 4
  %73 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %73, i32* %6, align 4
  br label %85

74:                                               ; preds = %67
  %75 = call i32 @DIV_ROUND_CLOSEST(i32 14625, i32 60)
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %6, align 4
  br label %85

78:                                               ; preds = %67
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %85

81:                                               ; preds = %5
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %78, %74, %71, %64, %60, %56, %42, %36
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.adis16080_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adis16080_read_sample(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
