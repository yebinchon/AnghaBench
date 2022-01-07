; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ms5611_state = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ms5611_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ms5611_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ms5611_state* %17, %struct.ms5611_state** %15, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %107 [
    i64 131, label %19
    i64 130, label %53
    i64 132, label %67
  ]

19:                                               ; preds = %5
  %20 = load %struct.ms5611_state*, %struct.ms5611_state** %15, align 8
  %21 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %24 = call i32 @ms5611_read_temp_and_pressure(%struct.iio_dev* %23, i32* %13, i32* %14)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.ms5611_state*, %struct.ms5611_state** %15, align 8
  %26 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %110

32:                                               ; preds = %19
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %50 [
    i32 128, label %36
    i32 129, label %41
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %37, 10
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %110

41:                                               ; preds = %32
  %42 = load i32, i32* %14, align 4
  %43 = sdiv i32 %42, 1000
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = srem i32 %45, 1000
  %47 = mul nsw i32 %46, 1000
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %49, i32* %6, align 4
  br label %110

50:                                               ; preds = %32
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %110

53:                                               ; preds = %5
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %64 [
    i32 128, label %57
    i32 129, label %60
  ]

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  store i32 10, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %110

60:                                               ; preds = %53
  %61 = load i32*, i32** %9, align 8
  store i32 0, i32* %61, align 4
  %62 = load i32*, i32** %10, align 8
  store i32 1000, i32* %62, align 4
  %63 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %63, i32* %6, align 4
  br label %110

64:                                               ; preds = %53
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %110

67:                                               ; preds = %5
  %68 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %69 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 128
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %74 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 129
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %107

78:                                               ; preds = %72, %67
  %79 = load %struct.ms5611_state*, %struct.ms5611_state** %15, align 8
  %80 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %79, i32 0, i32 0
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %83 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 128
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.ms5611_state*, %struct.ms5611_state** %15, align 8
  %88 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %102

94:                                               ; preds = %78
  %95 = load %struct.ms5611_state*, %struct.ms5611_state** %15, align 8
  %96 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %86
  %103 = load %struct.ms5611_state*, %struct.ms5611_state** %15, align 8
  %104 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %106, i32* %6, align 4
  br label %110

107:                                              ; preds = %5, %77
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %102, %64, %60, %57, %50, %41, %36, %30
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ms5611_read_temp_and_pressure(%struct.iio_dev*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
