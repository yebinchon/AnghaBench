; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_lv0104cs.c_lv0104cs_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.lv0104cs_private = type { i64, i64, i64, i32 }

@IIO_LIGHT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@lv0104cs_calibscales = common dso_local global %struct.TYPE_6__* null, align 8
@lv0104cs_scales = common dso_local global %struct.TYPE_4__* null, align 8
@lv0104cs_int_times = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @lv0104cs_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lv0104cs_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.lv0104cs_private*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.lv0104cs_private* @iio_priv(%struct.iio_dev* %14)
  store %struct.lv0104cs_private* %15, %struct.lv0104cs_private** %12, align 8
  %16 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %17 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IIO_LIGHT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %102

24:                                               ; preds = %5
  %25 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %26 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %25, i32 0, i32 3
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %11, align 8
  switch i64 %28, label %93 [
    i64 129, label %29
    i64 131, label %39
    i64 128, label %57
    i64 130, label %75
  ]

29:                                               ; preds = %24
  %30 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @lv0104cs_get_lux(%struct.lv0104cs_private* %30, i32* %31, i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %97

37:                                               ; preds = %29
  %38 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %38, i32* %13, align 4
  br label %96

39:                                               ; preds = %24
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lv0104cs_calibscales, align 8
  %41 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %42 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @lv0104cs_calibscales, align 8
  %49 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %50 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %56, i32* %13, align 4
  br label %96

57:                                               ; preds = %24
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lv0104cs_scales, align 8
  %59 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %60 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lv0104cs_scales, align 8
  %67 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %68 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %74, i32* %13, align 4
  br label %96

75:                                               ; preds = %24
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lv0104cs_int_times, align 8
  %77 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %78 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lv0104cs_int_times, align 8
  %85 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %86 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %92, i32* %13, align 4
  br label %96

93:                                               ; preds = %24
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %93, %75, %57, %39, %37
  br label %97

97:                                               ; preds = %96, %36
  %98 = load %struct.lv0104cs_private*, %struct.lv0104cs_private** %12, align 8
  %99 = getelementptr inbounds %struct.lv0104cs_private, %struct.lv0104cs_private* %98, i32 0, i32 3
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %21
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.lv0104cs_private* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lv0104cs_get_lux(%struct.lv0104cs_private*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
