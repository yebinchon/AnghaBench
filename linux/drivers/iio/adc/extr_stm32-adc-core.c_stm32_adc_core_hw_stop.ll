; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_core_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.stm32_adc_common = type { i32 }
%struct.stm32_adc_priv = type { i32, i32, i64, i64, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @stm32_adc_core_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_adc_core_hw_stop(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.stm32_adc_common*, align 8
  %4 = alloca %struct.stm32_adc_priv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.stm32_adc_common* @dev_get_drvdata(%struct.device* %5)
  store %struct.stm32_adc_common* %6, %struct.stm32_adc_common** %3, align 8
  %7 = load %struct.stm32_adc_common*, %struct.stm32_adc_common** %3, align 8
  %8 = call %struct.stm32_adc_priv* @to_stm32_adc_priv(%struct.stm32_adc_common* %7)
  store %struct.stm32_adc_priv* %8, %struct.stm32_adc_priv** %4, align 8
  %9 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %10 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %12, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  %22 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %25 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %30 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @clk_disable_unprepare(i64 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %35 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %40 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @clk_disable_unprepare(i64 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %45 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regulator_disable(i32 %46)
  %48 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %49 = call i32 @stm32_adc_core_switches_supply_dis(%struct.stm32_adc_priv* %48)
  %50 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %51 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @regulator_disable(i32 %52)
  ret void
}

declare dso_local %struct.stm32_adc_common* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.stm32_adc_priv* @to_stm32_adc_priv(%struct.stm32_adc_common*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @stm32_adc_core_switches_supply_dis(%struct.stm32_adc_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
