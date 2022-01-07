; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_meson_saradc.c_meson_sar_adc_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.meson_sar_adc_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to enable vref regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to enable core clk\0A\00", align 1
@MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG0 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG3 = common dso_local global i32 0, align 4
@MESON_SAR_ADC_REG3_ADC_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to enable adc clk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @meson_sar_adc_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_sar_adc_hw_enable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.meson_sar_adc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev* %7)
  store %struct.meson_sar_adc_priv* %8, %struct.meson_sar_adc_priv** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @meson_sar_adc_lock(%struct.iio_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %16 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regulator_enable(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %23 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %93

27:                                               ; preds = %14
  %28 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %29 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_prepare_enable(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %88

40:                                               ; preds = %27
  %41 = load i32, i32* @MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, align 4
  %42 = call i32 @FIELD_PREP(i32 %41, i32 1)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %44 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MESON_SAR_ADC_REG0, align 4
  %47 = load i32, i32* @MESON_SAR_ADC_REG0_FIFO_CNT_IRQ_MASK, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %51 = call i32 @meson_sar_adc_set_bandgap(%struct.iio_dev* %50, i32 1)
  %52 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %53 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MESON_SAR_ADC_REG3, align 4
  %56 = load i32, i32* @MESON_SAR_ADC_REG3_ADC_EN, align 4
  %57 = load i32, i32* @MESON_SAR_ADC_REG3_ADC_EN, align 4
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = call i32 @udelay(i32 5)
  %60 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %61 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_prepare_enable(i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %40
  %67 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %75

72:                                               ; preds = %40
  %73 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %74 = call i32 @meson_sar_adc_unlock(%struct.iio_dev* %73)
  store i32 0, i32* %2, align 4
  br label %98

75:                                               ; preds = %66
  %76 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %77 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MESON_SAR_ADC_REG3, align 4
  %80 = load i32, i32* @MESON_SAR_ADC_REG3_ADC_EN, align 4
  %81 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 0)
  %82 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %83 = call i32 @meson_sar_adc_set_bandgap(%struct.iio_dev* %82, i32 0)
  %84 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %85 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clk_disable_unprepare(i32 %86)
  br label %88

88:                                               ; preds = %75, %34
  %89 = load %struct.meson_sar_adc_priv*, %struct.meson_sar_adc_priv** %4, align 8
  %90 = getelementptr inbounds %struct.meson_sar_adc_priv, %struct.meson_sar_adc_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @regulator_disable(i32 %91)
  br label %93

93:                                               ; preds = %88, %21
  %94 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %95 = call i32 @meson_sar_adc_unlock(%struct.iio_dev* %94)
  br label %96

96:                                               ; preds = %93, %13
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %72
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.meson_sar_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @meson_sar_adc_lock(%struct.iio_dev*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @meson_sar_adc_set_bandgap(%struct.iio_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @meson_sar_adc_unlock(%struct.iio_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
