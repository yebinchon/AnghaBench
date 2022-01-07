; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_read_raw_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_read_raw_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.meson_sar_adc_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MESON_SAR_ADC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ADC FIFO has %d element(s) instead of one\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MESON_SAR_ADC_FIFO_RD = common dso_local global i32 0, align 4
@MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ADC FIFO entry belongs to channel %d instead of %lu\0A\00", align 1
@MESON_SAR_ADC_FIFO_RD_SAMPLE_VALUE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @meson_sar_adc_read_raw_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_read_raw_sample(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.meson_sar_adc_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %14 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %13)
  store %struct.meson_sar_adc_priv* %14, %struct.meson_sar_adc_priv** %8, align 8
  %15 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %8, align 8
  %16 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %15, i32 0, i32 2
  %17 = load i32, i32* @MESON_SAR_ADC_TIMEOUT, align 4
  %18 = call i32 @msecs_to_jiffies(i32 %17)
  %19 = call i32 @wait_for_completion_timeout(i32* %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = call i32 @meson_sar_adc_get_fifo_count(%struct.iio_dev* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %12, align 4
  %33 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %77

36:                                               ; preds = %24
  %37 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %8, align 8
  %38 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MESON_SAR_ADC_FIFO_RD, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %9)
  %42 = load i32, i32* @MESON_SAR_ADC_FIFO_RD_CHAN_ID_MASK, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @FIELD_GET(i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %47 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %36
  %51 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %52, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %77

60:                                               ; preds = %36
  %61 = load i32, i32* @MESON_SAR_ADC_FIFO_RD_SAMPLE_VALUE_MASK, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @FIELD_GET(i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %8, align 8
  %65 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @GENMASK(i64 %69, i32 0)
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @meson_sar_adc_calib_val(%struct.iio_dev* %73, i32 %74)
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %60, %50, %29, %21
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @meson_sar_adc_get_fifo_count(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @meson_sar_adc_calib_val(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
