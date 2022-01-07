; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_spear_adc.c_spear_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_spear_adc.c_spear_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.spear_adc_state = type { i32, i32, i32, i32, i32 }

@SPEAR_ADC_STATUS_START_CONVERSION = common dso_local global i32 0, align 4
@SPEAR_ADC_STATUS_ADC_ENABLE = common dso_local global i32 0, align 4
@SPEAR_ADC_STATUS_VREF_INTERNAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@SPEAR_ADC_DATA_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @spear_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.spear_adc_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.spear_adc_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.spear_adc_state* %15, %struct.spear_adc_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %71 [
    i64 130, label %17
    i64 128, label %57
    i64 129, label %65
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SPEAR_ADC_STATUS_CHANNEL_NUM(i32 %23)
  %25 = load %struct.spear_adc_state*, %struct.spear_adc_state** %12, align 8
  %26 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @SPEAR_ADC_STATUS_AVG_SAMPLE(i32 %27)
  %29 = or i32 %24, %28
  %30 = load i32, i32* @SPEAR_ADC_STATUS_START_CONVERSION, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SPEAR_ADC_STATUS_ADC_ENABLE, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.spear_adc_state*, %struct.spear_adc_state** %12, align 8
  %35 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %17
  %39 = load i32, i32* @SPEAR_ADC_STATUS_VREF_INTERNAL, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %38, %17
  %43 = load %struct.spear_adc_state*, %struct.spear_adc_state** %12, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @spear_adc_set_status(%struct.spear_adc_state* %43, i32 %44)
  %46 = load %struct.spear_adc_state*, %struct.spear_adc_state** %12, align 8
  %47 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %46, i32 0, i32 3
  %48 = call i32 @wait_for_completion(i32* %47)
  %49 = load %struct.spear_adc_state*, %struct.spear_adc_state** %12, align 8
  %50 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %6, align 4
  br label %74

57:                                               ; preds = %5
  %58 = load %struct.spear_adc_state*, %struct.spear_adc_state** %12, align 8
  %59 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @SPEAR_ADC_DATA_BITS, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %64, i32* %6, align 4
  br label %74

65:                                               ; preds = %5
  %66 = load %struct.spear_adc_state*, %struct.spear_adc_state** %12, align 8
  %67 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %5
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %65, %57, %42
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.spear_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SPEAR_ADC_STATUS_CHANNEL_NUM(i32) #1

declare dso_local i32 @SPEAR_ADC_STATUS_AVG_SAMPLE(i32) #1

declare dso_local i32 @spear_adc_set_status(%struct.spear_adc_state*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
