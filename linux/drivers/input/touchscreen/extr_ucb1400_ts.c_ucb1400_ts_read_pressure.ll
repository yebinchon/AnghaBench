; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_read_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_read_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32 }

@UCB_TS_CR = common dso_local global i32 0, align 4
@UCB_TS_CR_TSMX_POW = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPX_POW = common dso_local global i32 0, align 4
@UCB_TS_CR_TSMY_GND = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPY_GND = common dso_local global i32 0, align 4
@UCB_TS_CR_MODE_PRES = common dso_local global i32 0, align 4
@UCB_TS_CR_BIAS_ENA = common dso_local global i32 0, align 4
@ts_delay_pressure = common dso_local global i32 0, align 4
@UCB_ADC_INP_TSPY = common dso_local global i32 0, align 4
@adcsync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1400_ts*)* @ucb1400_ts_read_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_ts_read_pressure(%struct.ucb1400_ts* %0) #0 {
  %2 = alloca %struct.ucb1400_ts*, align 8
  store %struct.ucb1400_ts* %0, %struct.ucb1400_ts** %2, align 8
  %3 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %4 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UCB_TS_CR, align 4
  %7 = load i32, i32* @UCB_TS_CR_TSMX_POW, align 4
  %8 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @UCB_TS_CR_TSMY_GND, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @UCB_TS_CR_TSPY_GND, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @UCB_TS_CR_MODE_PRES, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ucb1400_reg_write(i32 %5, i32 %6, i32 %17)
  %19 = load i32, i32* @ts_delay_pressure, align 4
  %20 = call i32 @udelay(i32 %19)
  %21 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %22 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UCB_ADC_INP_TSPY, align 4
  %25 = load i32, i32* @adcsync, align 4
  %26 = call i32 @ucb1400_adc_read(i32 %23, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @ucb1400_reg_write(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ucb1400_adc_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
