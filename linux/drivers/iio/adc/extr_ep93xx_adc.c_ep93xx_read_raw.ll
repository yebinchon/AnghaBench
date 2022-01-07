; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ep93xx_adc.c_ep93xx_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ep93xx_adc.c_ep93xx_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }
%struct.ep93xx_adc_priv = type { i32, i64, i32 }

@EP93XX_ADC_SW_LOCK = common dso_local global i64 0, align 8
@EP93XX_ADC_SWITCH = common dso_local global i64 0, align 8
@EP93XX_ADC_RESULT = common dso_local global i64 0, align 8
@IIO_VAL_INT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EP93XX_ADC_SDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Conversion timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ep93xx_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ep93xx_adc_priv*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ep93xx_adc_priv* @iio_priv(%struct.iio_dev* %16)
  store %struct.ep93xx_adc_priv* %17, %struct.ep93xx_adc_priv** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %109 [
    i64 129, label %19
    i64 130, label %102
    i64 128, label %105
  ]

19:                                               ; preds = %5
  %20 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %21 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %24 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %19
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %35 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = call i32 (...) @local_irq_disable()
  %37 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %38 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EP93XX_ADC_SW_LOCK, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 170, i64 %41)
  %43 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %44 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %47 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EP93XX_ADC_SWITCH, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel_relaxed(i32 %45, i64 %50)
  %52 = call i32 (...) @local_irq_enable()
  %53 = call i32 @ep93xx_adc_delay(i32 2000, i32 2000)
  br label %54

54:                                               ; preds = %30, %19
  %55 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %56 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EP93XX_ADC_RESULT, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl_relaxed(i64 %59)
  %61 = call i32 @DIV_ROUND_UP(i32 1000000, i32 925)
  %62 = call i32 @DIV_ROUND_UP(i32 1000000, i32 925)
  %63 = call i32 @ep93xx_adc_delay(i32 %61, i32 %62)
  %64 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %64, i32* %14, align 4
  %65 = load i64, i64* @jiffies, align 8
  %66 = call i64 @msecs_to_jiffies(i32 1)
  %67 = add nsw i64 %65, %66
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %54, %95
  %70 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %71 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EP93XX_ADC_RESULT, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readl_relaxed(i64 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @EP93XX_ADC_SDR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @sign_extend32(i32 %81, i32 15)
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %97

84:                                               ; preds = %69
  %85 = load i64, i64* @jiffies, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @time_after(i64 %85, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %14, align 4
  br label %97

95:                                               ; preds = %84
  %96 = call i32 (...) @cpu_relax()
  br label %69

97:                                               ; preds = %89, %80
  %98 = load %struct.ep93xx_adc_priv*, %struct.ep93xx_adc_priv** %12, align 8
  %99 = getelementptr inbounds %struct.ep93xx_adc_priv, %struct.ep93xx_adc_priv* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %112

102:                                              ; preds = %5
  %103 = load i32*, i32** %9, align 8
  store i32 25000, i32* %103, align 4
  %104 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %104, i32* %6, align 4
  br label %112

105:                                              ; preds = %5
  %106 = load i32*, i32** %9, align 8
  store i32 283467841, i32* %106, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 32, i32* %107, align 4
  %108 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %108, i32* %6, align 4
  br label %112

109:                                              ; preds = %5
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %109, %105, %102, %97
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.ep93xx_adc_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @ep93xx_adc_delay(i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
