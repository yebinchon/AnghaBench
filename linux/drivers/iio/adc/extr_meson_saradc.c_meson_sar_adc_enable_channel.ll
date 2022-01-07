; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_enable_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_enable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i64 }
%struct.meson_sar_adc_priv = type { i32 }

@MESON_SAR_ADC_CHAN_LIST_MAX_INDEX_MASK = common dso_local global i64 0, align 8
@MESON_SAR_ADC_CHAN_LIST = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DETECT_IDLE_SW_DETECT_MUX_MASK = common dso_local global i64 0, align 8
@MESON_SAR_ADC_DETECT_IDLE_SW = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DETECT_IDLE_SW_IDLE_MUX_SEL_MASK = common dso_local global i64 0, align 8
@MESON_SAR_ADC_VOLTAGE_AND_TEMP_CHANNEL = common dso_local global i64 0, align 8
@IIO_TEMP = common dso_local global i64 0, align 8
@MESON_SAR_ADC_DELTA_10_TEMP_SEL = common dso_local global i64 0, align 8
@MESON_SAR_ADC_DELTA_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*, %struct.iio_chan_spec*)* @meson_sar_adc_enable_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_sar_adc_enable_channel(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.iio_chan_spec*, align 8
  %5 = alloca %struct.meson_sar_adc_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %4, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %7)
  store %struct.meson_sar_adc_priv* %8, %struct.meson_sar_adc_priv** %5, align 8
  %9 = load i64, i64* @MESON_SAR_ADC_CHAN_LIST_MAX_INDEX_MASK, align 8
  %10 = call i64 @FIELD_PREP(i64 %9, i64 0)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %5, align 8
  %12 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MESON_SAR_ADC_CHAN_LIST, align 4
  %15 = load i64, i64* @MESON_SAR_ADC_CHAN_LIST_MAX_INDEX_MASK, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @regmap_update_bits(i32 %13, i32 %14, i64 %15, i64 %16)
  %18 = call i64 @MESON_SAR_ADC_CHAN_LIST_ENTRY_MASK(i32 0)
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @FIELD_PREP(i64 %18, i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MESON_SAR_ADC_CHAN_LIST, align 4
  %27 = call i64 @MESON_SAR_ADC_CHAN_LIST_ENTRY_MASK(i32 0)
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @regmap_update_bits(i32 %25, i32 %26, i64 %27, i64 %28)
  %30 = load i64, i64* @MESON_SAR_ADC_DETECT_IDLE_SW_DETECT_MUX_MASK, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @FIELD_PREP(i64 %30, i64 %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %5, align 8
  %36 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MESON_SAR_ADC_DETECT_IDLE_SW, align 4
  %39 = load i64, i64* @MESON_SAR_ADC_DETECT_IDLE_SW_DETECT_MUX_MASK, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i64 %39, i64 %40)
  %42 = load i64, i64* @MESON_SAR_ADC_DETECT_IDLE_SW_IDLE_MUX_SEL_MASK, align 8
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @FIELD_PREP(i64 %42, i64 %45)
  store i64 %46, i64* %6, align 8
  %47 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %5, align 8
  %48 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @MESON_SAR_ADC_DETECT_IDLE_SW, align 4
  %51 = load i64, i64* @MESON_SAR_ADC_DETECT_IDLE_SW_IDLE_MUX_SEL_MASK, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %50, i64 %51, i64 %52)
  %54 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %55 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MESON_SAR_ADC_VOLTAGE_AND_TEMP_CHANNEL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %2
  %60 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %4, align 8
  %61 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IIO_TEMP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* @MESON_SAR_ADC_DELTA_10_TEMP_SEL, align 8
  store i64 %66, i64* %6, align 8
  br label %68

67:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %67, %65
  %69 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %5, align 8
  %70 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MESON_SAR_ADC_DELTA_10, align 4
  %73 = load i64, i64* @MESON_SAR_ADC_DELTA_10_TEMP_SEL, align 8
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @regmap_update_bits(i32 %71, i32 %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %68, %2
  ret void
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @FIELD_PREP(i64, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i64 @MESON_SAR_ADC_CHAN_LIST_ENTRY_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
