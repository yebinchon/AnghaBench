; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_timer_trigger = type { i32, i32 }

@TIM_CCER = common dso_local global i32 0, align 4
@TIM_CCER_CCXE = common dso_local global i32 0, align 4
@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@TIM_CR1_ARPE = common dso_local global i32 0, align 4
@TIM_PSC = common dso_local global i32 0, align 4
@TIM_ARR = common dso_local global i32 0, align 4
@TIM_EGR = common dso_local global i32 0, align 4
@TIM_EGR_UG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_timer_trigger*)* @stm32_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_timer_stop(%struct.stm32_timer_trigger* %0) #0 {
  %2 = alloca %struct.stm32_timer_trigger*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stm32_timer_trigger* %0, %struct.stm32_timer_trigger** %2, align 8
  %5 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %6 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TIM_CCER, align 4
  %9 = call i32 @regmap_read(i32 %7, i32 %8, i32* %3)
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TIM_CCER_CCXE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %17 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TIM_CR1, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %4)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TIM_CR1_CEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %27 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable(i32 %28)
  br label %30

30:                                               ; preds = %25, %15
  %31 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %32 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TIM_CR1, align 4
  %35 = load i32, i32* @TIM_CR1_ARPE, align 4
  %36 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 0)
  %37 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %38 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TIM_CR1, align 4
  %41 = load i32, i32* @TIM_CR1_CEN, align 4
  %42 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %44 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TIM_PSC, align 4
  %47 = call i32 @regmap_write(i32 %45, i32 %46, i32 0)
  %48 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %49 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TIM_ARR, align 4
  %52 = call i32 @regmap_write(i32 %50, i32 %51, i32 0)
  %53 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %54 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TIM_EGR, align 4
  %57 = load i32, i32* @TIM_EGR_UG, align 4
  %58 = load i32, i32* @TIM_EGR_UG, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
