; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_switches_supply_dis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_switches_supply_dis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_adc_priv = type { i32, i32, i64, i64, i64 }

@STM32MP1_SYSCFG_PMCCLRR = common dso_local global i32 0, align 4
@STM32MP1_SYSCFG_ANASWVDD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_adc_priv*)* @stm32_adc_core_switches_supply_dis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_adc_core_switches_supply_dis(%struct.stm32_adc_priv* %0) #0 {
  %2 = alloca %struct.stm32_adc_priv*, align 8
  store %struct.stm32_adc_priv* %0, %struct.stm32_adc_priv** %2, align 8
  %3 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp slt i32 %5, 2700000
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %2, align 8
  %9 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %2, align 8
  %14 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 2700000
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %2, align 8
  %19 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @STM32MP1_SYSCFG_PMCCLRR, align 4
  %22 = load i32, i32* @STM32MP1_SYSCFG_ANASWVDD_MASK, align 4
  %23 = call i32 @regmap_write(i64 %20, i32 %21, i32 %22)
  %24 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %2, align 8
  %25 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @regulator_disable(i64 %26)
  br label %39

28:                                               ; preds = %12, %7
  %29 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %2, align 8
  %30 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %2, align 8
  %35 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @regulator_disable(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %17, %38, %1
  ret void
}

declare dso_local i32 @regmap_write(i64, i32, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
