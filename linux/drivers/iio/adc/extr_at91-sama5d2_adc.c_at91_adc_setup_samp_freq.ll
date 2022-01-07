; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_setup_samp_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_setup_samp_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iio_dev = type { i32 }

@AT91_SAMA5D2_MR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_MR_STARTUP_MASK = common dso_local global i32 0, align 4
@AT91_SAMA5D2_MR_PRESCAL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"freq: %u, startup: %u, prescal: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_adc_state*, i32)* @at91_adc_setup_samp_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_adc_setup_samp_freq(%struct.at91_adc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.at91_adc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %11 = call %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %5, align 8
  %12 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %13 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_get_rate(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = mul i32 2, %17
  %19 = udiv i32 %16, %18
  %20 = sub i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %22 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = udiv i32 %25, 1000
  %27 = call i32 @at91_adc_startup_time(i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %29 = load i32, i32* @AT91_SAMA5D2_MR, align 4
  %30 = call i32 @at91_adc_readl(%struct.at91_adc_state* %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @AT91_SAMA5D2_MR_STARTUP_MASK, align 4
  %32 = load i32, i32* @AT91_SAMA5D2_MR_PRESCAL_MASK, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @AT91_SAMA5D2_MR_STARTUP(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @AT91_SAMA5D2_MR_PRESCAL(i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %46 = load i32, i32* @AT91_SAMA5D2_MR, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @at91_adc_writel(%struct.at91_adc_state* %45, i32 %46, i32 %47)
  %49 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @dev_dbg(i32* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %57 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @at91_adc_startup_time(i32, i32) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @AT91_SAMA5D2_MR_STARTUP(i32) #1

declare dso_local i32 @AT91_SAMA5D2_MR_PRESCAL(i32) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
