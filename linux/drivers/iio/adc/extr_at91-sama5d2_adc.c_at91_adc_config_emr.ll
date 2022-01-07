; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_config_emr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_config_emr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i32 }

@AT91_SAMA5D2_EMR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_EMR_OSR_MASK = common dso_local global i32 0, align 4
@AT91_SAMA5D2_EMR_OSR_1SAMPLES = common dso_local global i32 0, align 4
@AT91_SAMA5D2_EMR_OSR_4SAMPLES = common dso_local global i32 0, align 4
@AT91_SAMA5D2_EMR_OSR_16SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_adc_state*)* @at91_adc_config_emr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_adc_config_emr(%struct.at91_adc_state* %0) #0 {
  %2 = alloca %struct.at91_adc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %2, align 8
  %4 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %5 = load i32, i32* @AT91_SAMA5D2_EMR, align 4
  %6 = call i32 @at91_adc_readl(%struct.at91_adc_state* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = call i32 @AT91_SAMA5D2_EMR_ASTE(i32 1)
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @AT91_SAMA5D2_EMR_OSR_MASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %15 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %38 [
    i32 129, label %17
    i32 128, label %24
    i32 130, label %31
  ]

17:                                               ; preds = %1
  %18 = load i32, i32* @AT91_SAMA5D2_EMR_OSR_1SAMPLES, align 4
  %19 = call i32 @AT91_SAMA5D2_EMR_OSR(i32 %18)
  %20 = load i32, i32* @AT91_SAMA5D2_EMR_OSR_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %1
  %25 = load i32, i32* @AT91_SAMA5D2_EMR_OSR_4SAMPLES, align 4
  %26 = call i32 @AT91_SAMA5D2_EMR_OSR(i32 %25)
  %27 = load i32, i32* @AT91_SAMA5D2_EMR_OSR_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %1
  %32 = load i32, i32* @AT91_SAMA5D2_EMR_OSR_16SAMPLES, align 4
  %33 = call i32 @AT91_SAMA5D2_EMR_OSR(i32 %32)
  %34 = load i32, i32* @AT91_SAMA5D2_EMR_OSR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %1, %31, %24, %17
  %39 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %40 = load i32, i32* @AT91_SAMA5D2_EMR, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @at91_adc_writel(%struct.at91_adc_state* %39, i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @AT91_SAMA5D2_EMR_ASTE(i32) #1

declare dso_local i32 @AT91_SAMA5D2_EMR_OSR(i32) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
