; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.at91_adc_state = type { i32, i32, i32, i32, i32, i32 }

@AT91_ADC_CHER = common dso_local global i32 0, align 4
@AT91_ADC_IER = common dso_local global i32 0, align 4
@AT91_ADC_CR = common dso_local global i32 0, align 4
@AT91_ADC_START = common dso_local global i32 0, align 4
@AT91_ADC_CHDR = common dso_local global i32 0, align 4
@AT91_ADC_IDR = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ADC Channel %d timeout.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @at91_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.at91_adc_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.at91_adc_state* %15, %struct.at91_adc_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %107 [
    i64 129, label %17
    i64 128, label %96
  ]

17:                                               ; preds = %5
  %18 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %19 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %25 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %27 = load i32, i32* @AT91_ADC_CHER, align 4
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @AT91_ADC_CH(i32 %30)
  %32 = call i32 @at91_adc_writel(%struct.at91_adc_state* %26, i32 %27, i32 %31)
  %33 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %34 = load i32, i32* @AT91_ADC_IER, align 4
  %35 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %36 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = call i32 @at91_adc_writel(%struct.at91_adc_state* %33, i32 %34, i32 %38)
  %40 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %41 = load i32, i32* @AT91_ADC_CR, align 4
  %42 = load i32, i32* @AT91_ADC_START, align 4
  %43 = call i32 @at91_adc_writel(%struct.at91_adc_state* %40, i32 %41, i32 %42)
  %44 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %45 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %48 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @msecs_to_jiffies(i32 1000)
  %51 = call i32 @wait_event_interruptible_timeout(i32 %46, i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %53 = load i32, i32* @AT91_ADC_CHDR, align 4
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @AT91_ADC_CH(i32 %56)
  %58 = call i32 @at91_adc_writel(%struct.at91_adc_state* %52, i32 %53, i32 %57)
  %59 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %60 = load i32, i32* @AT91_ADC_IDR, align 4
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %62 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = call i32 @at91_adc_writel(%struct.at91_adc_state* %59, i32 %60, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %17
  %69 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %70 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %74 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %76 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %13, align 4
  br label %91

78:                                               ; preds = %17
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 0
  %84 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %85 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @ETIMEDOUT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %81, %78
  br label %91

91:                                               ; preds = %90, %68
  %92 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %93 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %92, i32 0, i32 3
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %6, align 4
  br label %111

96:                                               ; preds = %5
  %97 = load %struct.at91_adc_state*, %struct.at91_adc_state** %12, align 8
  %98 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %102 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %5
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %96, %91
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @AT91_ADC_CH(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
