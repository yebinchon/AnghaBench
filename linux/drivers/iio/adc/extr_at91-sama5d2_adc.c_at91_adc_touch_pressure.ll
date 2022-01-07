; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_touch_pressure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91-sama5d2_adc.c_at91_adc_touch_pressure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AT91_SAMA5D2_PRESSR = common dso_local global i32 0, align 4
@AT91_SAMA5D2_XYZ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*)* @at91_adc_touch_pressure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_touch_pressure(%struct.at91_adc_state* %0) #0 {
  %2 = alloca %struct.at91_adc_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %2, align 8
  store i32 1, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  %9 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %10 = load i32, i32* @AT91_SAMA5D2_PRESSR, align 4
  %11 = call i32 @at91_adc_readl(%struct.at91_adc_state* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @AT91_SAMA5D2_XYZ_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, 16
  %17 = load i32, i32* @AT91_SAMA5D2_XYZ_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.at91_adc_state*, %struct.at91_adc_state** %2, align 8
  %24 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 1024
  %30 = mul nsw i32 %22, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = sdiv i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = mul nsw i32 %30, %37
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %6, align 4
  br label %42

41:                                               ; preds = %1
  store i32 65535, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %21
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 65535, %43
  ret i32 %44
}

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
