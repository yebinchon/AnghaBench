; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_set_averaging.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_set_averaging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.meson_sar_adc_priv = type { i32 }

@MESON_SAR_ADC_AVG_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @meson_sar_adc_set_averaging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_sar_adc_set_averaging(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.meson_sar_adc_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %13 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %12)
  store %struct.meson_sar_adc_priv* %13, %struct.meson_sar_adc_priv** %9, align 8
  %14 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %15 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_SHIFT(i32 %18)
  %20 = shl i32 %17, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %9, align 8
  %22 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MESON_SAR_ADC_AVG_CNTL, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_MASK(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @MESON_SAR_ADC_AVG_CNTL_AVG_MODE_SHIFT(i32 %30)
  %32 = shl i32 %29, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %9, align 8
  %34 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MESON_SAR_ADC_AVG_CNTL, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @MESON_SAR_ADC_AVG_CNTL_AVG_MODE_MASK(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %38, i32 %39)
  ret void
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_SHIFT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @MESON_SAR_ADC_AVG_CNTL_NUM_SAMPLES_MASK(i32) #1

declare dso_local i32 @MESON_SAR_ADC_AVG_CNTL_AVG_MODE_SHIFT(i32) #1

declare dso_local i32 @MESON_SAR_ADC_AVG_CNTL_AVG_MODE_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
