; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_start_sample_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_start_sample_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.meson_sar_adc_priv = type { i32, i32 }

@MESON_SAR_ADC_REG0 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0_FIFO_IRQ_EN = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0_SAMPLING_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*)* @meson_sar_adc_start_sample_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_sar_adc_start_sample_engine(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca %struct.meson_sar_adc_priv*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %4 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %5 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %4)
  store %struct.meson_sar_adc_priv* %5, %struct.meson_sar_adc_priv** %3, align 8
  %6 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %7 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %6, i32 0, i32 1
  %8 = call i32 @reinit_completion(i32* %7)
  %9 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %10 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MESON_SAR_ADC_REG0, align 4
  %13 = load i32, i32* @MESON_SAR_ADC_REG0_FIFO_IRQ_EN, align 4
  %14 = load i32, i32* @MESON_SAR_ADC_REG0_FIFO_IRQ_EN, align 4
  %15 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %17 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MESON_SAR_ADC_REG0, align 4
  %20 = load i32, i32* @MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE, align 4
  %21 = load i32, i32* @MESON_SAR_ADC_REG0_SAMPLE_ENGINE_ENABLE, align 4
  %22 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %3, align 8
  %24 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MESON_SAR_ADC_REG0, align 4
  %27 = load i32, i32* @MESON_SAR_ADC_REG0_SAMPLING_START, align 4
  %28 = load i32, i32* @MESON_SAR_ADC_REG0_SAMPLING_START, align 4
  %29 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 %28)
  ret void
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
