; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis16480.c_adis16480_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.adis16480 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16480_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16480_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis16480*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.adis16480* @iio_priv(%struct.iio_dev* %14)
  store %struct.adis16480* %15, %struct.adis16480** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %112 [
    i64 133, label %17
    i64 131, label %22
    i64 134, label %82
    i64 137, label %92
    i64 136, label %97
    i64 135, label %102
    i64 132, label %107
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @adis_single_conversion(%struct.iio_dev* %18, %struct.iio_chan_spec* %19, i32 0, i32* %20)
  store i32 %21, i32* %6, align 4
  br label %115

22:                                               ; preds = %5
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %79 [
    i32 138, label %26
    i32 139, label %40
    i32 130, label %54
    i32 128, label %58
    i32 129, label %75
  ]

26:                                               ; preds = %22
  %27 = load %struct.adis16480*, %struct.adis16480** %12, align 8
  %28 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.adis16480*, %struct.adis16480** %12, align 8
  %34 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %39, i32* %6, align 4
  br label %115

40:                                               ; preds = %22
  %41 = load %struct.adis16480*, %struct.adis16480** %12, align 8
  %42 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.adis16480*, %struct.adis16480** %12, align 8
  %48 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %53, i32* %6, align 4
  br label %115

54:                                               ; preds = %22
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 100, i32* %56, align 4
  %57 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %57, i32* %6, align 4
  br label %115

58:                                               ; preds = %22
  %59 = load %struct.adis16480*, %struct.adis16480** %12, align 8
  %60 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 1000
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.adis16480*, %struct.adis16480** %12, align 8
  %67 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = srem i32 %70, 1000
  %72 = mul nsw i32 %71, 1000
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %74, i32* %6, align 4
  br label %115

75:                                               ; preds = %22
  %76 = load i32*, i32** %9, align 8
  store i32 0, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 4000, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %78, i32* %6, align 4
  br label %115

79:                                               ; preds = %22
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %115

82:                                               ; preds = %5
  store i32 25000000, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.adis16480*, %struct.adis16480** %12, align 8
  %85 = getelementptr inbounds %struct.adis16480, %struct.adis16480* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %83, i32 %88)
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %91, i32* %6, align 4
  br label %115

92:                                               ; preds = %5
  %93 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %94 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @adis16480_get_calibbias(%struct.iio_dev* %93, %struct.iio_chan_spec* %94, i32* %95)
  store i32 %96, i32* %6, align 4
  br label %115

97:                                               ; preds = %5
  %98 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %99 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @adis16480_get_calibscale(%struct.iio_dev* %98, %struct.iio_chan_spec* %99, i32* %100)
  store i32 %101, i32* %6, align 4
  br label %115

102:                                              ; preds = %5
  %103 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %104 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call i32 @adis16480_get_filter_freq(%struct.iio_dev* %103, %struct.iio_chan_spec* %104, i32* %105)
  store i32 %106, i32* %6, align 4
  br label %115

107:                                              ; preds = %5
  %108 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @adis16480_get_freq(%struct.iio_dev* %108, i32* %109, i32* %110)
  store i32 %111, i32* %6, align 4
  br label %115

112:                                              ; preds = %5
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112, %107, %102, %97, %92, %82, %79, %75, %58, %54, %40, %26, %17
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local %struct.adis16480* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @adis16480_get_calibbias(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @adis16480_get_calibscale(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @adis16480_get_filter_freq(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @adis16480_get_freq(%struct.iio_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
