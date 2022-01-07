; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.stm32_adc_priv = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.irq_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @stm32_adc_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_adc_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.stm32_adc_priv*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.stm32_adc_priv* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.stm32_adc_priv* %7, %struct.stm32_adc_priv** %3, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %8)
  store %struct.irq_chip* %9, %struct.irq_chip** %4, align 8
  %10 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call i32 @chained_irq_enter(%struct.irq_chip* %10, %struct.irq_desc* %11)
  %13 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %18 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %16, %23
  %25 = call i32 @readl_relaxed(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %28 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %26, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %38 = call i64 @stm32_adc_eoc_enabled(%struct.stm32_adc_priv* %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @irq_find_mapping(i32 %43, i32 0)
  %45 = call i32 @generic_handle_irq(i32 %44)
  br label %46

46:                                               ; preds = %40, %36, %1
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %49 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %47, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %59 = call i64 @stm32_adc_eoc_enabled(%struct.stm32_adc_priv* %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %63 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @irq_find_mapping(i32 %64, i32 1)
  %66 = call i32 @generic_handle_irq(i32 %65)
  br label %67

67:                                               ; preds = %61, %57, %46
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %70 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %68, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %67
  %79 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %80 = call i64 @stm32_adc_eoc_enabled(%struct.stm32_adc_priv* %79, i32 2)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %3, align 8
  %84 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @irq_find_mapping(i32 %85, i32 2)
  %87 = call i32 @generic_handle_irq(i32 %86)
  br label %88

88:                                               ; preds = %82, %78, %67
  %89 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %90 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %91 = call i32 @chained_irq_exit(%struct.irq_chip* %89, %struct.irq_desc* %90)
  ret void
}

declare dso_local %struct.stm32_adc_priv* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @stm32_adc_eoc_enabled(%struct.stm32_adc_priv*, i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
