; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_count_get_preset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_count_get_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_timer_trigger = type { i32 }

@TIM_ARR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*)* @stm32_count_get_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_count_get_preset(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stm32_timer_trigger*, align 8
  %10 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev* %11)
  store %struct.stm32_timer_trigger* %12, %struct.stm32_timer_trigger** %9, align 8
  %13 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %9, align 8
  %14 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TIM_ARR, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %10)
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @snprintf(i8* %18, i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  ret i32 %21
}

declare dso_local %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
