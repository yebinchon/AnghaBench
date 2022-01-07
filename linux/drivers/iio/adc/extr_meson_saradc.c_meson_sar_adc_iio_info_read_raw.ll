; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_iio_info_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_iio_info_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.meson_sar_adc_priv = type { i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@NO_AVERAGING = common dso_local global i32 0, align 4
@ONE_SAMPLE = common dso_local global i32 0, align 4
@MEAN_AVERAGING = common dso_local global i32 0, align 4
@EIGHT_SAMPLES = common dso_local global i32 0, align 4
@IIO_VOLTAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get vref voltage: %d\0A\00", align 1
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@MILLION = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@MESON_SAR_ADC_TEMP_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @meson_sar_adc_iio_info_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_iio_info_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.meson_sar_adc_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %14)
  store %struct.meson_sar_adc_priv* %15, %struct.meson_sar_adc_priv** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %131 [
    i64 129, label %17
    i64 133, label %24
    i64 128, label %31
    i64 132, label %89
    i64 131, label %95
    i64 130, label %109
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %20 = load i32, i32* @NO_AVERAGING, align 4
  %21 = load i32, i32* @ONE_SAMPLE, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @meson_sar_adc_get_sample(%struct.iio_dev* %18, %struct.iio_chan_spec* %19, i32 %20, i32 %21, i32* %22)
  store i32 %23, i32* %6, align 4
  br label %134

24:                                               ; preds = %5
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = load i32, i32* @MEAN_AVERAGING, align 4
  %28 = load i32, i32* @EIGHT_SAMPLES, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @meson_sar_adc_get_sample(%struct.iio_dev* %25, %struct.iio_chan_spec* %26, i32 %27, i32 %28, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %134

31:                                               ; preds = %5
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IIO_VOLTAGE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %39 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @regulator_get_voltage(i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %134

52:                                               ; preds = %37
  %53 = load i32, i32* %13, align 4
  %54 = sdiv i32 %53, 1000
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %57 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %62, i32* %6, align 4
  br label %134

63:                                               ; preds = %31
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IIO_TEMP, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %63
  %70 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %71 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %77 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %10, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 1000
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %85, i32* %6, align 4
  br label %134

86:                                               ; preds = %63
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %134

89:                                               ; preds = %5
  %90 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %91 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %94, i32* %6, align 4
  br label %134

95:                                               ; preds = %5
  %96 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %97 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MILLION, align 4
  %100 = sdiv i32 %98, %99
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %103 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MILLION, align 4
  %106 = srem i32 %104, %105
  %107 = load i32*, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %108, i32* %6, align 4
  br label %134

109:                                              ; preds = %5
  %110 = load i32, i32* @MESON_SAR_ADC_TEMP_OFFSET, align 4
  %111 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %112 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %110, %115
  %117 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %118 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @DIV_ROUND_CLOSEST(i32 %116, i32 %121)
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %12, align 8
  %125 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %130, i32* %6, align 4
  br label %134

131:                                              ; preds = %5
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %131, %109, %95, %89, %86, %69, %52, %44, %24, %17
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_get_sample(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
