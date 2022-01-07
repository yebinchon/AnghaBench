; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_get_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads7950.c_ti_ads7950_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_ads7950_state = type { i32, i32, i32 }

@TI_ADS7950_CR_RANGE_5V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_ads7950_state*)* @ti_ads7950_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_ads7950_get_range(%struct.ti_ads7950_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_ads7950_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ti_ads7950_state* %0, %struct.ti_ads7950_state** %3, align 8
  %5 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %3, align 8
  %6 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %3, align 8
  %11 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %3, align 8
  %15 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regulator_get_voltage(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 1000
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %9
  %26 = load %struct.ti_ads7950_state*, %struct.ti_ads7950_state** %3, align 8
  %27 = getelementptr inbounds %struct.ti_ads7950_state, %struct.ti_ads7950_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TI_ADS7950_CR_RANGE_5V, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
