; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44000.c_max44000_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.max44000_data = type { i32 }

@IIO_CHAN_INFO_RAW = common dso_local global i64 0, align 8
@IIO_CURRENT = common dso_local global i64 0, align 8
@IIO_CHAN_INFO_INT_TIME = common dso_local global i64 0, align 8
@IIO_LIGHT = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@max44000_int_time_avail_ns_array = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@max44000_scale_avail_ulux_array = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @max44000_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44000_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.max44000_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.max44000_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.max44000_data* %19, %struct.max44000_data** %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @IIO_CHAN_INFO_RAW, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %5
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IIO_CURRENT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %31 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @max44000_write_led_current_raw(%struct.max44000_data* %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %37 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %6, align 4
  br label %107

40:                                               ; preds = %23, %5
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @IIO_CHAN_INFO_INT_TIME, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %46 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IIO_LIGHT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @NSEC_PER_SEC, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @max44000_int_time_avail_ns_array, align 4
  %58 = load i32, i32* @max44000_int_time_avail_ns_array, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @find_closest_descending(i32 %56, i32 %57, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %62 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %61, i32 0, i32 0
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @max44000_write_alstim(%struct.max44000_data* %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %68 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %6, align 4
  br label %107

71:                                               ; preds = %44, %40
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @IIO_CHAN_INFO_SCALE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %102

75:                                               ; preds = %71
  %76 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %77 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IIO_LIGHT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @USEC_PER_SEC, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @max44000_scale_avail_ulux_array, align 4
  %89 = load i32, i32* @max44000_scale_avail_ulux_array, align 4
  %90 = call i32 @ARRAY_SIZE(i32 %89)
  %91 = call i32 @find_closest(i32 %87, i32 %88, i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %93 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %92, i32 0, i32 0
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @max44000_write_alspga(%struct.max44000_data* %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load %struct.max44000_data*, %struct.max44000_data** %12, align 8
  %99 = getelementptr inbounds %struct.max44000_data, %struct.max44000_data* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %6, align 4
  br label %107

102:                                              ; preds = %75, %71
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %81, %50, %29
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.max44000_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max44000_write_led_current_raw(%struct.max44000_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @find_closest_descending(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @max44000_write_alstim(%struct.max44000_data*, i32) #1

declare dso_local i32 @find_closest(i32, i32, i32) #1

declare dso_local i32 @max44000_write_alspga(%struct.max44000_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
