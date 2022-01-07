; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_write_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_core.c_ms5611_write_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ms5611_state = type { i32, %struct.ms5611_osr*, %struct.ms5611_osr* }
%struct.ms5611_osr = type { i32 }

@IIO_CHAN_INFO_OVERSAMPLING_RATIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i64 0, align 8
@ms5611_avail_temp_osr = common dso_local global i32 0, align 4
@IIO_PRESSURE = common dso_local global i64 0, align 8
@ms5611_avail_pressure_osr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i64)* @ms5611_write_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_write_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ms5611_state*, align 8
  %13 = alloca %struct.ms5611_osr*, align 8
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ms5611_state* %16, %struct.ms5611_state** %12, align 8
  store %struct.ms5611_osr* null, %struct.ms5611_osr** %13, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* @IIO_CHAN_INFO_OVERSAMPLING_RATIO, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %84

23:                                               ; preds = %5
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IIO_TEMP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ms5611_avail_temp_osr, align 4
  %32 = load i32, i32* @ms5611_avail_temp_osr, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call %struct.ms5611_osr* @ms5611_find_osr(i32 %30, i32 %31, i32 %33)
  store %struct.ms5611_osr* %34, %struct.ms5611_osr** %13, align 8
  br label %48

35:                                               ; preds = %23
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IIO_PRESSURE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ms5611_avail_pressure_osr, align 4
  %44 = load i32, i32* @ms5611_avail_pressure_osr, align 4
  %45 = call i32 @ARRAY_SIZE(i32 %44)
  %46 = call %struct.ms5611_osr* @ms5611_find_osr(i32 %42, i32 %43, i32 %45)
  store %struct.ms5611_osr* %46, %struct.ms5611_osr** %13, align 8
  br label %47

47:                                               ; preds = %41, %35
  br label %48

48:                                               ; preds = %47, %29
  %49 = load %struct.ms5611_osr*, %struct.ms5611_osr** %13, align 8
  %50 = icmp ne %struct.ms5611_osr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %84

54:                                               ; preds = %48
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %84

61:                                               ; preds = %54
  %62 = load %struct.ms5611_state*, %struct.ms5611_state** %12, align 8
  %63 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %62, i32 0, i32 0
  %64 = call i32 @mutex_lock(i32* %63)
  %65 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %66 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IIO_TEMP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load %struct.ms5611_osr*, %struct.ms5611_osr** %13, align 8
  %72 = load %struct.ms5611_state*, %struct.ms5611_state** %12, align 8
  %73 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %72, i32 0, i32 2
  store %struct.ms5611_osr* %71, %struct.ms5611_osr** %73, align 8
  br label %78

74:                                               ; preds = %61
  %75 = load %struct.ms5611_osr*, %struct.ms5611_osr** %13, align 8
  %76 = load %struct.ms5611_state*, %struct.ms5611_state** %12, align 8
  %77 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %76, i32 0, i32 1
  store %struct.ms5611_osr* %75, %struct.ms5611_osr** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.ms5611_state*, %struct.ms5611_state** %12, align 8
  %80 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %83 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %82)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %78, %59, %51, %20
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.ms5611_osr* @ms5611_find_osr(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
