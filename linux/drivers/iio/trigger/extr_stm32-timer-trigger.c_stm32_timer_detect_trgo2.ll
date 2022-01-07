; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_detect_trgo2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_detect_trgo2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_timer_trigger = type { i32, i32 }

@TIM_CR2 = common dso_local global i32 0, align 4
@TIM_CR2_MMS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_timer_trigger*)* @stm32_timer_detect_trgo2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_timer_detect_trgo2(%struct.stm32_timer_trigger* %0) #0 {
  %2 = alloca %struct.stm32_timer_trigger*, align 8
  %3 = alloca i32, align 4
  store %struct.stm32_timer_trigger* %0, %struct.stm32_timer_trigger** %2, align 8
  %4 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %5 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TIM_CR2, align 4
  %8 = load i32, i32* @TIM_CR2_MMS2, align 4
  %9 = load i32, i32* @TIM_CR2_MMS2, align 4
  %10 = call i32 @regmap_update_bits(i32 %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %12 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TIM_CR2, align 4
  %15 = call i32 @regmap_read(i32 %13, i32 %14, i32* %3)
  %16 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %17 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TIM_CR2, align 4
  %20 = load i32, i32* @TIM_CR2_MMS2, align 4
  %21 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %2, align 8
  %28 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
