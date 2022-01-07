; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc108s102.c_adc108s102_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc108s102.c_adc108s102_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.adc108s102_state = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adc108s102_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc108s102_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adc108s102_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.adc108s102_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.adc108s102_state* %15, %struct.adc108s102_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %59 [
    i64 129, label %17
    i64 128, label %41
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %63

24:                                               ; preds = %17
  %25 = load %struct.adc108s102_state*, %struct.adc108s102_state** %12, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @adc108s102_scan_direct(%struct.adc108s102_state* %25, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %30)
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %63

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @ADC108S102_RES_DATA(i32 %37)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %63

41:                                               ; preds = %5
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IIO_VOLTAGE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %60

48:                                               ; preds = %41
  %49 = load %struct.adc108s102_state*, %struct.adc108s102_state** %12, align 8
  %50 = getelementptr inbounds %struct.adc108s102_state, %struct.adc108s102_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %54 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %58, i32* %6, align 4
  br label %63

59:                                               ; preds = %5
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %48, %36, %34, %22
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.adc108s102_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @adc108s102_scan_direct(%struct.adc108s102_state*, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @ADC108S102_RES_DATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
