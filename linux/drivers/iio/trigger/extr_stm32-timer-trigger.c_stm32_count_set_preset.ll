; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_count_set_preset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_count_set_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_timer_trigger = type { i32 }

@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_ARPE = common dso_local global i32 0, align 4
@TIM_ARR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @stm32_count_set_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_count_set_preset(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stm32_timer_trigger*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev* %15)
  store %struct.stm32_timer_trigger* %16, %struct.stm32_timer_trigger** %12, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @kstrtouint(i8* %17, i32 0, i32* %13)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %5
  %24 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %12, align 8
  %25 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TIM_CR1, align 4
  %28 = load i32, i32* @TIM_CR1_ARPE, align 4
  %29 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 0)
  %30 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %12, align 8
  %31 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TIM_ARR, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @regmap_write(i32 %32, i32 %33, i32 %34)
  %36 = load i64, i64* %11, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %23, %21
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
