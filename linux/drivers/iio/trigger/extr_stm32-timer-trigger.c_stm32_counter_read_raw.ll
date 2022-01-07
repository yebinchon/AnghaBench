; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_counter_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_counter_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_timer_trigger = type { i32 }

@TIM_CNT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@TIM_SMCR = common dso_local global i32 0, align 4
@TIM_SMCR_SMS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @stm32_counter_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_counter_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_timer_trigger*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev* %14)
  store %struct.stm32_timer_trigger* %15, %struct.stm32_timer_trigger** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %57 [
    i64 129, label %17
    i64 130, label %26
    i64 128, label %40
  ]

17:                                               ; preds = %5
  %18 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %12, align 8
  %19 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TIM_CNT, align 4
  %22 = call i32 @regmap_read(i32 %20, i32 %21, i32* %13)
  %23 = load i32, i32* %13, align 4
  %24 = load i32*, i32** %9, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %25, i32* %6, align 4
  br label %60

26:                                               ; preds = %5
  %27 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %12, align 8
  %28 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TIM_CR1, align 4
  %31 = call i32 @regmap_read(i32 %29, i32 %30, i32* %13)
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @TIM_CR1_CEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %6, align 4
  br label %60

40:                                               ; preds = %5
  %41 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %12, align 8
  %42 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TIM_SMCR, align 4
  %45 = call i32 @regmap_read(i32 %43, i32 %44, i32* %13)
  %46 = load i32, i32* @TIM_SMCR_SMS, align 4
  %47 = load i32, i32* %13, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 1, i32* %49, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32*, i32** %10, align 8
  store i32 2, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %56, i32* %6, align 4
  br label %60

57:                                               ; preds = %5
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %55, %26, %17
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
