; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_store_master_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_tt_store_master_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stm32_timer_trigger = type { i32 }
%struct.iio_trigger = type { i32 }

@TIM_CR2_MMS2 = common dso_local global i32 0, align 4
@TIM_CR2_MMS2_SHIFT = common dso_local global i32 0, align 4
@MASTER_MODE2_MAX = common dso_local global i32 0, align 4
@TIM_CR2_MMS = common dso_local global i32 0, align 4
@TIM_CR2_MMS_SHIFT = common dso_local global i32 0, align 4
@MASTER_MODE_MAX = common dso_local global i32 0, align 4
@master_mode_table = common dso_local global i32* null, align 8
@TIM_CR2 = common dso_local global i32 0, align 4
@TIM_EGR = common dso_local global i32 0, align 4
@TIM_EGR_UG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @stm32_tt_store_master_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stm32_tt_store_master_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stm32_timer_trigger*, align 8
  %11 = alloca %struct.iio_trigger*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.stm32_timer_trigger* @dev_get_drvdata(%struct.device* %16)
  store %struct.stm32_timer_trigger* %17, %struct.stm32_timer_trigger** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.iio_trigger* @to_iio_trigger(%struct.device* %18)
  store %struct.iio_trigger* %19, %struct.iio_trigger** %11, align 8
  %20 = load %struct.iio_trigger*, %struct.iio_trigger** %11, align 8
  %21 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @stm32_timer_is_trgo2_name(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @TIM_CR2_MMS2, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @TIM_CR2_MMS2_SHIFT, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @MASTER_MODE2_MAX, align 4
  store i32 %28, i32* %14, align 4
  br label %33

29:                                               ; preds = %4
  %30 = load i32, i32* @TIM_CR2_MMS, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @TIM_CR2_MMS_SHIFT, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* @MASTER_MODE_MAX, align 4
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %29, %25
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %72, %33
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %75

38:                                               ; preds = %34
  %39 = load i32*, i32** @master_mode_table, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** @master_mode_table, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = call i32 @strncmp(i32 %43, i8* %44, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %38
  %54 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %10, align 8
  %55 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TIM_CR2, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %10, align 8
  %64 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TIM_EGR, align 4
  %67 = load i32, i32* @TIM_EGR_UG, align 4
  %68 = load i32, i32* @TIM_EGR_UG, align 4
  %69 = call i32 @regmap_update_bits(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i64, i64* %9, align 8
  store i64 %70, i64* %5, align 8
  br label %78

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %34

75:                                               ; preds = %34
  %76 = load i64, i64* @EINVAL, align 8
  %77 = sub i64 0, %76
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %75, %53
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local %struct.stm32_timer_trigger* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.iio_trigger* @to_iio_trigger(%struct.device*) #1

declare dso_local i64 @stm32_timer_is_trgo2_name(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
