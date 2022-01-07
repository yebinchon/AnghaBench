; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.meson_sar_adc_priv = type { i32, i32 }

@MESON_SAR_ADC_REG0 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0_FIFO_COUNT_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meson_sar_adc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.meson_sar_adc_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.iio_dev*
  store %struct.iio_dev* %12, %struct.iio_dev** %6, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %13)
  store %struct.meson_sar_adc_priv* %14, %struct.meson_sar_adc_priv** %7, align 8
  %15 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %7, align 8
  %16 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MESON_SAR_ADC_REG0, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %10)
  %20 = load i32, i32* @MESON_SAR_ADC_REG0_FIFO_COUNT_MASK, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @FIELD_GET(i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @FIELD_GET(i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %7, align 8
  %33 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %32, i32 0, i32 0
  %34 = call i32 @complete(i32* %33)
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %29
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
