; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cc10001_adc.c_cc10001_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cc10001_adc_device = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CC10001_INVALID_SAMPLED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @cc10001_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc10001_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cc10001_adc_device*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev* %14)
  store %struct.cc10001_adc_device* %15, %struct.cc10001_adc_device** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %63 [
    i64 129, label %17
    i64 128, label %44
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_buffer_enabled(%struct.iio_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %66

24:                                               ; preds = %17
  %25 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %12, align 8
  %26 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = call i32 @cc10001_adc_read_raw_voltage(%struct.iio_dev* %28, %struct.iio_chan_spec* %29)
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %12, align 8
  %33 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CC10001_INVALID_SAMPLED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %66

42:                                               ; preds = %24
  %43 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %43, i32* %6, align 4
  br label %66

44:                                               ; preds = %5
  %45 = load %struct.cc10001_adc_device*, %struct.cc10001_adc_device** %12, align 8
  %46 = getelementptr inbounds %struct.cc10001_adc_device, %struct.cc10001_adc_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @regulator_get_voltage(i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %66

53:                                               ; preds = %44
  %54 = load i32, i32* %13, align 4
  %55 = sdiv i32 %54, 1000
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %58 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %5
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %53, %51, %42, %39, %21
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.cc10001_adc_device* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cc10001_adc_read_raw_voltage(%struct.iio_dev*, %struct.iio_chan_spec*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
