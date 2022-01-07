; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_hw_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.meson_sar_adc_priv = type { i32, i32, i32, i32 }

@MESON_SAR_ADC_REG3 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG3_ADC_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @meson_sar_adc_hw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_hw_disable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.meson_sar_adc_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %6)
  store %struct.meson_sar_adc_priv* %7, %struct.meson_sar_adc_priv** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call i32 @meson_sar_adc_lock(%struct.iio_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %16 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %20 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MESON_SAR_ADC_REG3, align 4
  %23 = load i32, i32* @MESON_SAR_ADC_REG3_ADC_EN, align 4
  %24 = call i32 @regmap_update_bits(i32 %21, i32 %22, i32 %23, i32 0)
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = call i32 @meson_sar_adc_set_bandgap(%struct.iio_dev* %25, i32 0)
  %27 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %28 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  %31 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %32 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regulator_disable(i32 %33)
  %35 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %36 = call i32 @meson_sar_adc_unlock(%struct.iio_dev* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %14, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_lock(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @meson_sar_adc_set_bandgap(%struct.iio_dev*, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @meson_sar_adc_unlock(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
