; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_axp288_adc.c_axp288_adc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_adc_info = type { i32, i32 }
%struct.dmi_system_id = type { i64 }

@axp288_adc_ts_bias_override = common dso_local global i32 0, align 4
@AXP288_ADC_TS_PIN_CTRL = common dso_local global i32 0, align 4
@AXP288_ADC_TS_BIAS_MASK = common dso_local global i64 0, align 8
@AXP20X_ADC_EN1 = common dso_local global i32 0, align 4
@AXP288_ADC_TS_ENABLE = common dso_local global i32 0, align 4
@AXP288_ADC_TS_CURRENT_ON_OFF_MASK = common dso_local global i64 0, align 8
@AXP288_ADC_TS_CURRENT_ON = common dso_local global i64 0, align 8
@AXP288_ADC_TS_CURRENT_OFF = common dso_local global i64 0, align 8
@AXP288_ADC_EN_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_adc_info*)* @axp288_adc_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_adc_initialize(%struct.axp288_adc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axp288_adc_info*, align 8
  %4 = alloca %struct.dmi_system_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axp288_adc_info* %0, %struct.axp288_adc_info** %3, align 8
  %7 = load i32, i32* @axp288_adc_ts_bias_override, align 4
  %8 = call %struct.dmi_system_id* @dmi_first_match(i32 %7)
  store %struct.dmi_system_id* %8, %struct.dmi_system_id** %4, align 8
  %9 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %10 = icmp ne %struct.dmi_system_id* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %3, align 8
  %13 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @AXP288_ADC_TS_PIN_CTRL, align 4
  %16 = load i64, i64* @AXP288_ADC_TS_BIAS_MASK, align 8
  %17 = load %struct.dmi_system_id*, %struct.dmi_system_id** %4, align 8
  %18 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @regmap_update_bits(i32 %14, i32 %15, i64 %16, i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %3, align 8
  %28 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AXP20X_ADC_EN1, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %6)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %74

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @AXP288_ADC_TS_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %3, align 8
  %43 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %3, align 8
  %45 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AXP288_ADC_TS_PIN_CTRL, align 4
  %48 = load i64, i64* @AXP288_ADC_TS_CURRENT_ON_OFF_MASK, align 8
  %49 = load i64, i64* @AXP288_ADC_TS_CURRENT_ON, align 8
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i64 %48, i64 %49)
  store i32 %50, i32* %5, align 4
  br label %61

51:                                               ; preds = %36
  %52 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %3, align 8
  %53 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  %54 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %3, align 8
  %55 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AXP288_ADC_TS_PIN_CTRL, align 4
  %58 = load i64, i64* @AXP288_ADC_TS_CURRENT_ON_OFF_MASK, align 8
  %59 = load i64, i64* @AXP288_ADC_TS_CURRENT_OFF, align 8
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i64 %58, i64 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %51, %41
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %61
  %67 = load %struct.axp288_adc_info*, %struct.axp288_adc_info** %3, align 8
  %68 = getelementptr inbounds %struct.axp288_adc_info, %struct.axp288_adc_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AXP20X_ADC_EN1, align 4
  %71 = load i64, i64* @AXP288_ADC_EN_MASK, align 8
  %72 = load i64, i64* @AXP288_ADC_EN_MASK, align 8
  %73 = call i32 @regmap_update_bits(i32 %69, i32 %70, i64 %71, i64 %72)
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %66, %64, %34, %23
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.dmi_system_id* @dmi_first_match(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
