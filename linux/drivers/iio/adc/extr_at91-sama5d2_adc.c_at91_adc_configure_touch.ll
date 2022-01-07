; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_configure_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_configure_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@AT91_SAMA5D2_IDR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_PEN = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER_NOPEN = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TSMR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TOUCH_PEN_DETECT_DEBOUNCE_US = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TSMR_TSMODE_4WIRE_PRESS = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TSMR_TSAV_MASK = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TSMR_PENDBC_MASK = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TSMR_NOTSDMA = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TSMR_PENDET_ENA = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TSMR_TSFREQ_MASK = common dso_local global i32 0, align 4
@AT91_SAMA5D2_ACR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_ACR_PENDETSENS_MASK = common dso_local global i32 0, align 4
@AT91_SAMA5D2_TOUCH_SAMPLE_PERIOD_US = common dso_local global i32 0, align 4
@AT91_SAMA5D2_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*, i32)* @at91_adc_configure_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_configure_touch(%struct.at91_adc_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at91_adc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %12 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sdiv i32 %13, 1000
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %19 = load i32, i32* @AT91_SAMA5D2_IDR, align 4
  %20 = load i32, i32* @AT91_SAMA5D2_IER_PEN, align 4
  %21 = load i32, i32* @AT91_SAMA5D2_IER_NOPEN, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @at91_adc_writel(%struct.at91_adc_state* %18, i32 %19, i32 %22)
  %24 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %25 = load i32, i32* @AT91_SAMA5D2_TSMR, align 4
  %26 = call i32 @at91_adc_writel(%struct.at91_adc_state* %24, i32 %25, i32 0)
  store i32 0, i32* %3, align 4
  br label %98

27:                                               ; preds = %2
  %28 = load i32, i32* @AT91_SAMA5D2_TOUCH_PEN_DETECT_DEBOUNCE_US, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sdiv i32 %30, 1000
  %32 = call i8* @round_up(i32 %31, i32 1)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %40, %27
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = ashr i32 %35, %36
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %34

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @AT91_SAMA5D2_TSMR_TSMODE_4WIRE_PRESS, align 4
  store i32 %43, i32* %9, align 4
  %44 = call i32 @AT91_SAMA5D2_TSMR_TSAV(i32 2)
  %45 = load i32, i32* @AT91_SAMA5D2_TSMR_TSAV_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @AT91_SAMA5D2_TSMR_PENDBC(i32 %49)
  %51 = load i32, i32* @AT91_SAMA5D2_TSMR_PENDBC_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @AT91_SAMA5D2_TSMR_NOTSDMA, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @AT91_SAMA5D2_TSMR_PENDET_ENA, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  %61 = call i32 @AT91_SAMA5D2_TSMR_TSFREQ(i32 2)
  %62 = load i32, i32* @AT91_SAMA5D2_TSMR_TSFREQ_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %67 = load i32, i32* @AT91_SAMA5D2_TSMR, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @at91_adc_writel(%struct.at91_adc_state* %66, i32 %67, i32 %68)
  %70 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %71 = load i32, i32* @AT91_SAMA5D2_ACR, align 4
  %72 = call i32 @at91_adc_readl(%struct.at91_adc_state* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* @AT91_SAMA5D2_ACR_PENDETSENS_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* @AT91_SAMA5D2_ACR_PENDETSENS_MASK, align 4
  %78 = and i32 2, %77
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  %81 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %82 = load i32, i32* @AT91_SAMA5D2_ACR, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @at91_adc_writel(%struct.at91_adc_state* %81, i32 %82, i32 %83)
  %85 = load i32, i32* @AT91_SAMA5D2_TOUCH_SAMPLE_PERIOD_US, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sdiv i32 %87, 1000
  %89 = sub nsw i32 %88, 1
  %90 = call i8* @round_up(i32 %89, i32 1)
  %91 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %92 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i8* %90, i8** %93, align 8
  %94 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %95 = load i32, i32* @AT91_SAMA5D2_IER, align 4
  %96 = load i32, i32* @AT91_SAMA5D2_IER_PEN, align 4
  %97 = call i32 @at91_adc_writel(%struct.at91_adc_state* %94, i32 %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %41, %17
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i8* @round_up(i32, i32) #1

declare dso_local i32 @AT91_SAMA5D2_TSMR_TSAV(i32) #1

declare dso_local i32 @AT91_SAMA5D2_TSMR_PENDBC(i32) #1

declare dso_local i32 @AT91_SAMA5D2_TSMR_TSFREQ(i32) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
