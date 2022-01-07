; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_read_xpos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_read_xpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32 }

@UCB_TS_CR = common dso_local global i32 0, align 4
@UCB_TS_CR_TSMX_GND = common dso_local global i32 0, align 4
@UCB_TS_CR_TSPX_POW = common dso_local global i32 0, align 4
@UCB_TS_CR_MODE_PRES = common dso_local global i32 0, align 4
@UCB_TS_CR_BIAS_ENA = common dso_local global i32 0, align 4
@UCB_TS_CR_MODE_POS = common dso_local global i32 0, align 4
@ts_delay = common dso_local global i32 0, align 4
@UCB_ADC_INP_TSPY = common dso_local global i32 0, align 4
@adcsync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1400_ts*)* @ucb1400_ts_read_xpos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_ts_read_xpos(%struct.ucb1400_ts* %0) #0 {
  %2 = alloca %struct.ucb1400_ts*, align 8
  store %struct.ucb1400_ts* %0, %struct.ucb1400_ts** %2, align 8
  %3 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %4 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UCB_TS_CR, align 4
  %7 = load i32, i32* @UCB_TS_CR_TSMX_GND, align 4
  %8 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @UCB_TS_CR_MODE_PRES, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @ucb1400_reg_write(i32 %5, i32 %6, i32 %13)
  %15 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %16 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UCB_TS_CR, align 4
  %19 = load i32, i32* @UCB_TS_CR_TSMX_GND, align 4
  %20 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UCB_TS_CR_MODE_PRES, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ucb1400_reg_write(i32 %17, i32 %18, i32 %25)
  %27 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %28 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UCB_TS_CR, align 4
  %31 = load i32, i32* @UCB_TS_CR_TSMX_GND, align 4
  %32 = load i32, i32* @UCB_TS_CR_TSPX_POW, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @UCB_TS_CR_MODE_POS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UCB_TS_CR_BIAS_ENA, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ucb1400_reg_write(i32 %29, i32 %30, i32 %37)
  %39 = load i32, i32* @ts_delay, align 4
  %40 = call i32 @udelay(i32 %39)
  %41 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %42 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UCB_ADC_INP_TSPY, align 4
  %45 = load i32, i32* @adcsync, align 4
  %46 = call i32 @ucb1400_adc_read(i32 %43, i32 %44, i32 %45)
  ret i32 %46
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
