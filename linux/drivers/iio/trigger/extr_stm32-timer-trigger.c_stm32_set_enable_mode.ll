; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_set_enable_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_set_enable_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_timer_trigger = type { i32, i32 }

@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@TIM_SMCR = common dso_local global i32 0, align 4
@TIM_SMCR_SMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32)* @stm32_set_enable_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_set_enable_mode(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stm32_timer_trigger*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev* %11)
  store %struct.stm32_timer_trigger* %12, %struct.stm32_timer_trigger** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @stm32_enable_mode2sms(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %46

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %8, align 8
  %24 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TIM_CR1, align 4
  %27 = call i32 @regmap_read(i32 %25, i32 %26, i32* %10)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @TIM_CR1_CEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %8, align 8
  %34 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_enable(i32 %35)
  br label %37

37:                                               ; preds = %32, %22
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %8, align 8
  %40 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @TIM_SMCR, align 4
  %43 = load i32, i32* @TIM_SMCR_SMS, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %17
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stm32_enable_mode2sms(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
