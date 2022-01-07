; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_core.c_hts221_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hts221_avg = type { i32* }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.hts221_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@hts221_avg_list = common dso_local global %struct.hts221_avg* null, align 8
@HTS221_SENSOR_H = common dso_local global i64 0, align 8
@HTS221_SENSOR_T = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @hts221_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hts221_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.hts221_avg*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.hts221_hw* @iio_priv(%struct.iio_dev* %16)
  store %struct.hts221_hw* %17, %struct.hts221_hw** %12, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %108

24:                                               ; preds = %5
  %25 = load i64, i64* %11, align 8
  switch i64 %25, label %101 [
    i64 132, label %26
    i64 130, label %33
    i64 134, label %41
    i64 131, label %49
    i64 133, label %55
  ]

26:                                               ; preds = %24
  %27 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @hts221_read_oneshot(%struct.hts221_hw* %27, i32 %30, i32* %31)
  store i32 %32, i32* %13, align 4
  br label %104

33:                                               ; preds = %24
  %34 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @hts221_get_sensor_scale(%struct.hts221_hw* %34, i32 %37, i32* %38, i32* %39)
  store i32 %40, i32* %13, align 4
  br label %104

41:                                               ; preds = %24
  %42 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @hts221_get_sensor_offset(%struct.hts221_hw* %42, i32 %45, i32* %46, i32* %47)
  store i32 %48, i32* %13, align 4
  br label %104

49:                                               ; preds = %24
  %50 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %51 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %54, i32* %13, align 4
  br label %104

55:                                               ; preds = %24
  %56 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %57 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %97 [
    i32 129, label %59
    i32 128, label %78
  ]

59:                                               ; preds = %55
  %60 = load %struct.hts221_avg*, %struct.hts221_avg** @hts221_avg_list, align 8
  %61 = load i64, i64* @HTS221_SENSOR_H, align 8
  %62 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %60, i64 %61
  store %struct.hts221_avg* %62, %struct.hts221_avg** %15, align 8
  %63 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %64 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @HTS221_SENSOR_H, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %14, align 8
  %70 = load %struct.hts221_avg*, %struct.hts221_avg** %15, align 8
  %71 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %13, align 4
  br label %100

78:                                               ; preds = %55
  %79 = load %struct.hts221_avg*, %struct.hts221_avg** @hts221_avg_list, align 8
  %80 = load i64, i64* @HTS221_SENSOR_T, align 8
  %81 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %79, i64 %80
  store %struct.hts221_avg* %81, %struct.hts221_avg** %15, align 8
  %82 = load %struct.hts221_hw*, %struct.hts221_hw** %12, align 8
  %83 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* @HTS221_SENSOR_T, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %14, align 8
  %89 = load %struct.hts221_avg*, %struct.hts221_avg** %15, align 8
  %90 = getelementptr inbounds %struct.hts221_avg, %struct.hts221_avg* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %96, i32* %13, align 4
  br label %100

97:                                               ; preds = %55
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %97, %78, %59
  br label %104

101:                                              ; preds = %24
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %100, %49, %41, %33, %26
  %105 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %106 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %104, %22
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local %struct.hts221_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @hts221_read_oneshot(%struct.hts221_hw*, i32, i32*) #1

declare dso_local i32 @hts221_get_sensor_scale(%struct.hts221_hw*, i32, i32*, i32*) #1

declare dso_local i32 @hts221_get_sensor_offset(%struct.hts221_hw*, i32, i32*, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
