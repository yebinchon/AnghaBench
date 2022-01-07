; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_set_bandgap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_set_bandgap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.meson_sar_adc_priv = type { i32, %struct.meson_sar_adc_param* }
%struct.meson_sar_adc_param = type { i64 }

@MESON_SAR_ADC_REG11 = common dso_local global i64 0, align 8
@MESON_SAR_ADC_REG11_BANDGAP_EN = common dso_local global i32 0, align 4
@MESON_SAR_ADC_DELTA_10_TS_VBG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*, i32)* @meson_sar_adc_set_bandgap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_sar_adc_set_bandgap(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_sar_adc_priv*, align 8
  %6 = alloca %struct.meson_sar_adc_param*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %8)
  store %struct.meson_sar_adc_priv* %9, %struct.meson_sar_adc_priv** %5, align 8
  %10 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %5, align 8
  %11 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %10, i32 0, i32 1
  %12 = load %struct.meson_sar_adc_param*, %struct.meson_sar_adc_param** %11, align 8
  store %struct.meson_sar_adc_param* %12, %struct.meson_sar_adc_param** %6, align 8
  %13 = load %struct.meson_sar_adc_param*, %struct.meson_sar_adc_param** %6, align 8
  %14 = getelementptr inbounds %struct.meson_sar_adc_param, %struct.meson_sar_adc_param* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MESON_SAR_ADC_REG11, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @MESON_SAR_ADC_REG11_BANDGAP_EN, align 4
  store i32 %19, i32* %7, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @MESON_SAR_ADC_DELTA_10_TS_VBG_EN, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.meson_sar_adc_param*, %struct.meson_sar_adc_param** %6, align 8
  %27 = getelementptr inbounds %struct.meson_sar_adc_param, %struct.meson_sar_adc_param* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  br label %35

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = call i32 @regmap_update_bits(i32 %25, i64 %28, i32 %29, i32 %36)
  ret void
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
