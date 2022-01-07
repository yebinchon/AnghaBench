; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_core.c_st_press_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_core.c_st_press_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.st_sensor_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@MCELSIUS_PER_CELSIUS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ST_PRESS_MILLI_CELSIUS_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @st_press_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_press_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.st_sensor_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.st_sensor_data* %15, %struct.st_sensor_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %79 [
    i64 132, label %17
    i64 130, label %27
    i64 133, label %53
    i64 131, label %73
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @st_sensors_read_info_raw(%struct.iio_dev* %18, %struct.iio_chan_spec* %19, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %82

25:                                               ; preds = %17
  %26 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %26, i32* %6, align 4
  br label %84

27:                                               ; preds = %5
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %50 [
    i32 129, label %31
    i32 128, label %40
  ]

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.st_sensor_data*, %struct.st_sensor_data** %13, align 8
  %34 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %39, i32* %6, align 4
  br label %84

40:                                               ; preds = %27
  %41 = load i32, i32* @MCELSIUS_PER_CELSIUS, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.st_sensor_data*, %struct.st_sensor_data** %13, align 8
  %44 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %49, i32* %6, align 4
  br label %84

50:                                               ; preds = %27
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %12, align 4
  br label %82

53:                                               ; preds = %5
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %68 [
    i32 128, label %57
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @ST_PRESS_MILLI_CELSIUS_OFFSET, align 4
  %59 = load %struct.st_sensor_data*, %struct.st_sensor_data** %13, align 8
  %60 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @MCELSIUS_PER_CELSIUS, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  br label %71

68:                                               ; preds = %53
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %82

71:                                               ; preds = %57
  %72 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %72, i32* %6, align 4
  br label %84

73:                                               ; preds = %5
  %74 = load %struct.st_sensor_data*, %struct.st_sensor_data** %13, align 8
  %75 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %78, i32* %6, align 4
  br label %84

79:                                               ; preds = %5
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %84

82:                                               ; preds = %68, %50, %24
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %79, %73, %71, %40, %31, %25
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_read_info_raw(%struct.iio_dev*, %struct.iio_chan_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
