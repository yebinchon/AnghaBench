; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_switches_supply_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_switches_supply_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc_priv = type { i32, i32, i64, i64, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"vdd enable failed %d\0A\00", align 1
@STM32MP1_SYSCFG_PMCSETR = common dso_local global i32 0, align 4
@STM32MP1_SYSCFG_ANASWVDD_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"vdd select failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"analog switches supplied by vdd\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"booster enable failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"analog switches supplied by booster\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"analog switches supplied by vdda (%d uV)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_adc_priv*, %struct.device*)* @stm32_adc_core_switches_supply_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_core_switches_supply_en(%struct.stm32_adc_priv* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_adc_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.stm32_adc_priv* %0, %struct.stm32_adc_priv** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %8 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 2700000
  br i1 %10, label %11, label %75

11:                                               ; preds = %2
  %12 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %11
  %17 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 2700000
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @regulator_enable(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %21
  %34 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @STM32MP1_SYSCFG_PMCSETR, align 4
  %38 = load i32, i32* @STM32MP1_SYSCFG_ANASWVDD_MASK, align 4
  %39 = call i32 @regmap_write(i64 %36, i32 %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @regulator_disable(i64 %45)
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %81

51:                                               ; preds = %33
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

54:                                               ; preds = %16, %11
  %55 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %56 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %61 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @regulator_enable(i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %81

71:                                               ; preds = %59
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %81

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %78 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %75, %71, %66, %51, %42, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
