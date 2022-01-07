; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_counter_validate_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_counter_validate_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_trigger = type { i32 }
%struct.stm32_timer_trigger = type { i8**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIM_SMCR = common dso_local global i32 0, align 4
@TIM_SMCR_TS = common dso_local global i32 0, align 4
@TIM_SMCR_TS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_trigger*)* @stm32_counter_validate_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_counter_validate_trigger(%struct.iio_dev* %0, %struct.iio_trigger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_trigger*, align 8
  %6 = alloca %struct.stm32_timer_trigger*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_trigger* %1, %struct.iio_trigger** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev* %9)
  store %struct.stm32_timer_trigger* %10, %struct.stm32_timer_trigger** %6, align 8
  %11 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %6, align 8
  %12 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %11, i32 0, i32 0
  %13 = load i8**, i8*** %12, align 8
  store i8** %13, i8*** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %15 = call i32 @is_stm32_timer_trigger(%struct.iio_trigger* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i8**, i8*** %7, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %57

30:                                               ; preds = %28
  %31 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %32 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8**, i8*** %7, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.iio_trigger*, %struct.iio_trigger** %5, align 8
  %37 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlen(i32 %38)
  %40 = call i32 @strncmp(i32 %33, i8* %35, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %30
  %43 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %6, align 8
  %44 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TIM_SMCR, align 4
  %47 = load i32, i32* @TIM_SMCR_TS, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @TIM_SMCR_TS_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %47, i32 %50)
  store i32 0, i32* %3, align 4
  br label %60

52:                                               ; preds = %30
  %53 = load i8**, i8*** %7, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %21

57:                                               ; preds = %28
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %42, %17
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.stm32_timer_trigger* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @is_stm32_timer_trigger(%struct.iio_trigger*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
