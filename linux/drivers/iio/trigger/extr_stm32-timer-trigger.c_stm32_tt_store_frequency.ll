; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_store_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_store_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.iio_trigger = type { i32 }
%struct.stm32_timer_trigger = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @stm32_tt_store_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_tt_store_frequency(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iio_trigger*, align 8
  %11 = alloca %struct.stm32_timer_trigger*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.iio_trigger* @to_iio_trigger(%struct.device* %14)
  store %struct.iio_trigger* %15, %struct.iio_trigger** %10, align 8
  %16 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %17 = call %struct.stm32_timer_trigger* @iio_trigger_get_drvdata(%struct.iio_trigger* %16)
  store %struct.stm32_timer_trigger* %17, %struct.stm32_timer_trigger** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtouint(i8* %18, i32 10, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %43

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %11, align 8
  %29 = call i32 @stm32_timer_stop(%struct.stm32_timer_trigger* %28)
  br label %40

30:                                               ; preds = %24
  %31 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %11, align 8
  %32 = load %struct.iio_trigger*, %struct.iio_trigger** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @stm32_timer_start(%struct.stm32_timer_trigger* %31, %struct.iio_trigger* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %37, %22
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.iio_trigger* @to_iio_trigger(%struct.device*) #1

declare dso_local %struct.stm32_timer_trigger* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local i32 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @stm32_timer_stop(%struct.stm32_timer_trigger*) #1

declare dso_local i32 @stm32_timer_start(%struct.stm32_timer_trigger*, %struct.iio_trigger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
