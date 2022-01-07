; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_pen_detect_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_pen_detect_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@AT91_SAMA5D2_IDR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_PEN = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_NOPEN = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_XRDY = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_YRDY = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_PRDY = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TRGR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TRGR_TRGMOD_PERIODIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_adc_state*)* @at91_adc_pen_detect_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_adc_pen_detect_interrupt(%struct.at91_adc_state* %0) #0 {
  %2 = alloca %struct.at91_adc_state*, align 8
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %2, align 8
  %3 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %4 = load i32, i32* @AT91_SAMA5D2_IDR, align 4
  %5 = load i32, i32* @AT91_SAMA5D2_IER_PEN, align 4
  %6 = call i32 @at91_adc_writel(%struct.at91_adc_state* %3, i32 %4, i32 %5)
  %7 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %8 = load i32, i32* @AT91_SAMA5D2_IER, align 4
  %9 = load i32, i32* @AT91_SAMA5D2_IER_NOPEN, align 4
  %10 = load i32, i32* @AT91_SAMA5D2_IER_XRDY, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @AT91_SAMA5D2_IER_YRDY, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AT91_SAMA5D2_IER_PRDY, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @at91_adc_writel(%struct.at91_adc_state* %7, i32 %8, i32 %15)
  %17 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %18 = load i32, i32* @AT91_SAMA5D2_TRGR, align 4
  %19 = load i32, i32* @AT91_SAMA5D2_TRGR_TRGMOD_PERIODIC, align 4
  %20 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %21 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @AT91_SAMA5D2_TRGR_TRGPER(i32 %23)
  %25 = or i32 %19, %24
  %26 = call i32 @at91_adc_writel(%struct.at91_adc_state* %17, i32 %18, i32 %25)
  %27 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %28 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  ret void
}

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @AT91_SAMA5D2_TRGR_TRGPER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
