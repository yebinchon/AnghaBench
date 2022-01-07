; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_set_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_set_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_adc_info = type { i32, i32 }

@AXP288_GP_ADC_H = common dso_local global i64 0, align 8
@AXP288_ADC_TS_PIN_CTRL = common dso_local global i32 0, align 4
@AXP288_ADC_TS_CURRENT_ON_OFF_MASK = common dso_local global i32 0, align 4
@AXP288_ADC_TS_CURRENT_ON_ONDEMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_adc_info*, i32, i64)* @axp288_adc_set_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_adc_set_ts(%struct.axp288_adc_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.axp288_adc_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.axp288_adc_info* %0, %struct.axp288_adc_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %5, align 8
  %10 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @AXP288_GP_ADC_H, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %38

19:                                               ; preds = %14
  %20 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %5, align 8
  %21 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AXP288_ADC_TS_PIN_CTRL, align 4
  %24 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_OFF_MASK, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %38

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @AXP288_ADC_TS_CURRENT_ON_ONDEMAND, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @usleep_range(i32 6000, i32 10000)
  br label %37

37:                                               ; preds = %35, %31
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %29, %18, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
