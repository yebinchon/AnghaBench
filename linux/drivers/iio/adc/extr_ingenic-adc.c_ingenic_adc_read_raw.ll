; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.ingenic_adc = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@JZ_ADC_REG_ADSDAT = common dso_local global i64 0, align 8
@JZ_ADC_REG_ADBDAT = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@JZ_ADC_AUX_VREF = common dso_local global i32 0, align 4
@JZ_ADC_AUX_VREF_BITS = common dso_local global i32 0, align 4
@JZ_ADC_BATTERY_LOW_VREF = common dso_local global i32 0, align 4
@JZ_ADC_BATTERY_LOW_VREF_BITS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ingenic_adc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_adc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ingenic_adc*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.ingenic_adc* @iio_priv(%struct.iio_dev* %14)
  store %struct.ingenic_adc* %15, %struct.ingenic_adc** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %96 [
    i64 131, label %17
    i64 130, label %61
  ]

17:                                               ; preds = %5
  %18 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %19 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_enable(i32 %20)
  %22 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ingenic_adc_capture(%struct.ingenic_adc* %22, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %31 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable(i32 %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %99

35:                                               ; preds = %17
  %36 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %55 [
    i32 129, label %39
    i32 128, label %47
  ]

39:                                               ; preds = %35
  %40 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %41 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @JZ_ADC_REG_ADSDAT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @readw(i64 %44)
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %55

47:                                               ; preds = %35
  %48 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %49 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @JZ_ADC_REG_ADBDAT, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readw(i64 %52)
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %35, %47, %39
  %56 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %57 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable(i32 %58)
  %60 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %60, i32* %6, align 4
  br label %99

61:                                               ; preds = %5
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %94 [
    i32 129, label %65
    i32 128, label %70
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @JZ_ADC_AUX_VREF, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @JZ_ADC_AUX_VREF_BITS, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %94

70:                                               ; preds = %61
  %71 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %72 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32, i32* @JZ_ADC_BATTERY_LOW_VREF, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @JZ_ADC_BATTERY_LOW_VREF_BITS, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %93

80:                                               ; preds = %70
  %81 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %82 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.ingenic_adc*, %struct.ingenic_adc** %12, align 8
  %88 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %75
  br label %94

94:                                               ; preds = %61, %93, %65
  %95 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %95, i32* %6, align 4
  br label %99

96:                                               ; preds = %5
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %96, %94, %55, %29
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.ingenic_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @ingenic_adc_capture(%struct.ingenic_adc*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @readw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
