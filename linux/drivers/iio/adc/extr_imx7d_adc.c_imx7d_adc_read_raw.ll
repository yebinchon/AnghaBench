; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_imx7d_adc.c_imx7d_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.imx7d_adc = type { i32, i32, i32, i32, i32 }

@IMX7D_ADC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @imx7d_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7d_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.imx7d_adc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.imx7d_adc* @iio_priv(%struct.iio_dev* %15)
  store %struct.imx7d_adc* %16, %struct.imx7d_adc** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %83 [
    i64 130, label %18
    i64 128, label %64
    i64 129, label %78
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %23 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %22, i32 0, i32 4
  %24 = call i32 @reinit_completion(i32* %23)
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 3
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %31 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %33 = call i32 @imx7d_adc_channel_set(%struct.imx7d_adc* %32)
  %34 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %35 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %34, i32 0, i32 4
  %36 = load i32, i32* @IMX7D_ADC_TIMEOUT, align 4
  %37 = call i64 @wait_for_completion_interruptible_timeout(i32* %35, i32 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %18
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %86

46:                                               ; preds = %18
  %47 = load i64, i64* %14, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %14, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %6, align 4
  br label %86

55:                                               ; preds = %46
  %56 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %57 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %63, i32* %6, align 4
  br label %86

64:                                               ; preds = %5
  %65 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %66 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regulator_get_voltage(i32 %67)
  %69 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %70 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %72 = getelementptr inbounds %struct.imx7d_adc, %struct.imx7d_adc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 1000
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %10, align 8
  store i32 12, i32* %76, align 4
  %77 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %77, i32* %6, align 4
  br label %86

78:                                               ; preds = %5
  %79 = load %struct.imx7d_adc*, %struct.imx7d_adc** %12, align 8
  %80 = call i32 @imx7d_adc_get_sample_rate(%struct.imx7d_adc* %79)
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %82, i32* %6, align 4
  br label %86

83:                                               ; preds = %5
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %78, %64, %55, %49, %40
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.imx7d_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @imx7d_adc_channel_set(%struct.imx7d_adc*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @imx7d_adc_get_sample_rate(%struct.imx7d_adc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
