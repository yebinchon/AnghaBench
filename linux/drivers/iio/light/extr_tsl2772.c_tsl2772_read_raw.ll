; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.tsl2772_chip = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tsl2772_als_gain = common dso_local global i32* null, align 8
@tsl2772_prox_gain = common dso_local global i32* null, align 8
@tsl2772_int_time_avail = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @tsl2772_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tsl2772_chip*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %13)
  store %struct.tsl2772_chip* %14, %struct.tsl2772_chip** %12, align 8
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %118 [
    i64 132, label %16
    i64 131, label %32
    i64 134, label %68
    i64 135, label %93
    i64 133, label %100
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %29 [
    i32 129, label %20
  ]

20:                                               ; preds = %16
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @tsl2772_get_lux(%struct.iio_dev* %21)
  %23 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %24 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %28, i32* %6, align 4
  br label %121

29:                                               ; preds = %16
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %121

32:                                               ; preds = %5
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %65 [
    i32 130, label %36
    i32 128, label %57
  ]

36:                                               ; preds = %32
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = call i32 @tsl2772_get_lux(%struct.iio_dev* %37)
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %45 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %55

49:                                               ; preds = %36
  %50 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %51 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %6, align 4
  br label %121

57:                                               ; preds = %32
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = call i32 @tsl2772_get_prox(%struct.iio_dev* %58)
  %60 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %61 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %64, i32* %6, align 4
  br label %121

65:                                               ; preds = %32
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %121

68:                                               ; preds = %5
  %69 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %70 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32*, i32** @tsl2772_als_gain, align 8
  %75 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %76 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %91

82:                                               ; preds = %68
  %83 = load i32*, i32** @tsl2772_prox_gain, align 8
  %84 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %85 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %73
  %92 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %92, i32* %6, align 4
  br label %121

93:                                               ; preds = %5
  %94 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %95 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %99, i32* %6, align 4
  br label %121

100:                                              ; preds = %5
  %101 = load i32*, i32** %9, align 8
  store i32 0, i32* %101, align 4
  %102 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %103 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 256, %105
  %107 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %108 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %12, align 8
  %109 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i32*, i32** %107, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %106, %114
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %117, i32* %6, align 4
  br label %121

118:                                              ; preds = %5
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %118, %100, %93, %91, %65, %57, %55, %29, %20
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @tsl2772_get_lux(%struct.iio_dev*) #1

declare dso_local i32 @tsl2772_get_prox(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
