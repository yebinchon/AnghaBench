; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_atmel_ts_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_atmel_ts_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.at91_adc_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AT91_ADC_IER = common dso_local global i32 0, align 4
@AT91_ADC_IER_PEN = common dso_local global i32 0, align 4
@AT91RL_ADC_IER_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @atmel_ts_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ts_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.at91_adc_state*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.at91_adc_state* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.at91_adc_state* %5, %struct.at91_adc_state** %3, align 8
  %6 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %7 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %14 = load i32, i32* @AT91_ADC_IER, align 4
  %15 = load i32, i32* @AT91_ADC_IER_PEN, align 4
  %16 = call i32 @at91_adc_writel(%struct.at91_adc_state* %13, i32 %14, i32 %15)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %19 = load i32, i32* @AT91_ADC_IER, align 4
  %20 = load i32, i32* @AT91RL_ADC_IER_PEN, align 4
  %21 = call i32 @at91_adc_writel(%struct.at91_adc_state* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %12
  ret i32 0
}

declare dso_local %struct.at91_adc_state* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
