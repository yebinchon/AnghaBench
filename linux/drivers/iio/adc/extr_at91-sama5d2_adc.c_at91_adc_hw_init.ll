; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AT91_SAMA5D2_CR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_CR_SWRST = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IDR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_MR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_MR_ANACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_adc_state*)* @at91_adc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_adc_hw_init(%struct.at91_adc_state* %0) #0 {
  %2 = alloca %struct.at91_adc_state*, align 8
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %2, align 8
  %3 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %4 = load i32, i32* @AT91_SAMA5D2_CR, align 4
  %5 = load i32, i32* @AT91_SAMA5D2_CR_SWRST, align 4
  %6 = call i32 @at91_adc_writel(%struct.at91_adc_state* %3, i32 %4, i32 %5)
  %7 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %8 = load i32, i32* @AT91_SAMA5D2_IDR, align 4
  %9 = call i32 @at91_adc_writel(%struct.at91_adc_state* %7, i32 %8, i32 -1)
  %10 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %11 = load i32, i32* @AT91_SAMA5D2_MR, align 4
  %12 = call i32 @AT91_SAMA5D2_MR_TRANSFER(i32 2)
  %13 = load i32, i32* @AT91_SAMA5D2_MR_ANACH, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @at91_adc_writel(%struct.at91_adc_state* %10, i32 %11, i32 %14)
  %16 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %17 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %18 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @at91_adc_setup_samp_freq(%struct.at91_adc_state* %16, i32 %20)
  %22 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %23 = call i32 @at91_adc_config_emr(%struct.at91_adc_state* %22)
  ret void
}

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @AT91_SAMA5D2_MR_TRANSFER(i32) #1

declare dso_local i32 @at91_adc_setup_samp_freq(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @at91_adc_config_emr(%struct.at91_adc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
