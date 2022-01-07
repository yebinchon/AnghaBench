; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_irq_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_irq_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_adc_priv = type { i64*, i32 }

@STM32_ADC_MAX_ADCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.stm32_adc_priv*)* @stm32_adc_irq_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_adc_irq_remove(%struct.platform_device* %0, %struct.stm32_adc_priv* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_adc_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.stm32_adc_priv* %1, %struct.stm32_adc_priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %18, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @STM32_ADC_MAX_ADCS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %13 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @irq_find_mapping(i32 %14, i32 %15)
  %17 = call i32 @irq_dispose_mapping(i32 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %7

21:                                               ; preds = %7
  %22 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @irq_domain_remove(i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %49, %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @STM32_ADC_MAX_ADCS, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %49

40:                                               ; preds = %30
  %41 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %42 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @irq_set_chained_handler(i64 %47, i32* null)
  br label %49

49:                                               ; preds = %40, %39
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %26

52:                                               ; preds = %26
  ret void
}

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

declare dso_local i32 @irq_set_chained_handler(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
