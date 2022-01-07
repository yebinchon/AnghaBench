; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_9x5_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_9x5_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@AT91_ADC_IER_XRDY = common dso_local global i32 0, align 4
@AT91_ADC_IER_YRDY = common dso_local global i32 0, align 4
@AT91_ADC_IER_PRDY = common dso_local global i32 0, align 4
@AT91_ADC_IER_PEN = common dso_local global i32 0, align 4
@AT91_ADC_IDR = common dso_local global i32 0, align 4
@AT91_ADC_IER = common dso_local global i32 0, align 4
@AT91_ADC_IER_NOPEN = common dso_local global i32 0, align 4
@AT91_ADC_TRGR_MOD_PERIOD_TRIG = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@AT91_ADC_ISR_PENS = common dso_local global i32 0, align 4
@AT91_ADC_TSXPOSR = common dso_local global i32 0, align 4
@AT91_ADC_TSYPOSR = common dso_local global i32 0, align 4
@AT91_ADC_TSPRESSR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_adc_9x5_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_9x5_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.at91_adc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.at91_adc_state* %12, %struct.at91_adc_state** %6, align 8
  %13 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %14 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %15 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @at91_adc_readl(%struct.at91_adc_state* %13, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @AT91_ADC_IER_XRDY, align 4
  %21 = load i32, i32* @AT91_ADC_IER_YRDY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AT91_ADC_IER_PRDY, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %27 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @GENMASK(i64 %29, i32 0)
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = call i32 @handle_adc_eoc_trigger(i32 %34, %struct.iio_dev* %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AT91_ADC_IER_PEN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %44 = load i32, i32* @AT91_ADC_IDR, align 4
  %45 = load i32, i32* @AT91_ADC_IER_PEN, align 4
  %46 = call i32 @at91_adc_writel(%struct.at91_adc_state* %43, i32 %44, i32 %45)
  %47 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %48 = load i32, i32* @AT91_ADC_IER, align 4
  %49 = load i32, i32* @AT91_ADC_IER_NOPEN, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @at91_adc_writel(%struct.at91_adc_state* %47, i32 %48, i32 %51)
  %53 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %54 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %55 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AT91_ADC_TRGR_MOD_PERIOD_TRIG, align 4
  %60 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %61 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @AT91_ADC_TRGR_TRGPER_(i32 %62)
  %64 = or i32 %59, %63
  %65 = call i32 @at91_adc_writel(%struct.at91_adc_state* %53, i32 %58, i32 %64)
  br label %125

66:                                               ; preds = %37
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @AT91_ADC_IER_NOPEN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %73 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %74 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @at91_adc_writel(%struct.at91_adc_state* %72, i32 %77, i32 0)
  %79 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %80 = load i32, i32* @AT91_ADC_IDR, align 4
  %81 = load i32, i32* @AT91_ADC_IER_NOPEN, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @at91_adc_writel(%struct.at91_adc_state* %79, i32 %80, i32 %83)
  %85 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %86 = load i32, i32* @AT91_ADC_IER, align 4
  %87 = load i32, i32* @AT91_ADC_IER_PEN, align 4
  %88 = call i32 @at91_adc_writel(%struct.at91_adc_state* %85, i32 %86, i32 %87)
  %89 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %90 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @BTN_TOUCH, align 4
  %93 = call i32 @input_report_key(i32 %91, i32 %92, i32 0)
  %94 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %95 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @input_sync(i32 %96)
  br label %124

98:                                               ; preds = %66
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %98
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @AT91_ADC_ISR_PENS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %111 = call i32 @at91_ts_sample(%struct.at91_adc_state* %110)
  br label %122

112:                                              ; preds = %104
  %113 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %114 = load i32, i32* @AT91_ADC_TSXPOSR, align 4
  %115 = call i32 @at91_adc_readl(%struct.at91_adc_state* %113, i32 %114)
  %116 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %117 = load i32, i32* @AT91_ADC_TSYPOSR, align 4
  %118 = call i32 @at91_adc_readl(%struct.at91_adc_state* %116, i32 %117)
  %119 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %120 = load i32, i32* @AT91_ADC_TSPRESSR, align 4
  %121 = call i32 @at91_adc_readl(%struct.at91_adc_state* %119, i32 %120)
  br label %122

122:                                              ; preds = %112, %109
  br label %123

123:                                              ; preds = %122, %98
  br label %124

124:                                              ; preds = %123, %71
  br label %125

125:                                              ; preds = %124, %42
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %126
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @handle_adc_eoc_trigger(i32, %struct.iio_dev*) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @AT91_ADC_TRGR_TRGPER_(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @at91_ts_sample(%struct.at91_adc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
