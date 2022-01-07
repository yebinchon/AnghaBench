; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_stm32-timer-trigger.c_stm32_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_timer_trigger = type { i64, i32, i32, i32 }
%struct.iio_trigger = type { i32 }

@MAX_TIM_PSC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"prescaler exceeds the maximum value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TIM_CCER = common dso_local global i32 0, align 4
@TIM_CCER_CCXE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TIM_CR1 = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@TIM_PSC = common dso_local global i32 0, align 4
@TIM_ARR = common dso_local global i32 0, align 4
@TIM_CR1_ARPE = common dso_local global i32 0, align 4
@TIM_CR2 = common dso_local global i32 0, align 4
@TIM_CR2_MMS2 = common dso_local global i32 0, align 4
@TIM_CR2_MMS2_SHIFT = common dso_local global i32 0, align 4
@TIM_CR2_MMS = common dso_local global i32 0, align 4
@TIM_CR2_MMS_SHIFT = common dso_local global i32 0, align 4
@TIM_EGR = common dso_local global i32 0, align 4
@TIM_EGR_UG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_timer_trigger*, %struct.iio_trigger*, i32)* @stm32_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_timer_start(%struct.stm32_timer_trigger* %0, %struct.iio_trigger* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stm32_timer_trigger*, align 8
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm32_timer_trigger* %0, %struct.stm32_timer_trigger** %5, align 8
  store %struct.iio_trigger* %1, %struct.iio_trigger** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %14 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @clk_get_rate(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @do_div(i64 %17, i32 %18)
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %27, %3
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = call i32 @do_div(i64 %31, i32 %33)
  br label %21

35:                                               ; preds = %21
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MAX_TIM_PSC, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %42 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %135

47:                                               ; preds = %35
  %48 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %49 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TIM_CCER, align 4
  %52 = call i32 @regmap_read(i32 %50, i32 %51, i32* %11)
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @TIM_CCER_CCXE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %135

60:                                               ; preds = %47
  %61 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %62 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TIM_CR1, align 4
  %65 = call i32 @regmap_read(i32 %63, i32 %64, i32* %12)
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @TIM_CR1_CEN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %60
  %71 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %72 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @clk_enable(i32 %73)
  br label %75

75:                                               ; preds = %70, %60
  %76 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %77 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @TIM_PSC, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 @regmap_write(i32 %78, i32 %79, i64 %81)
  %83 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %84 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TIM_ARR, align 4
  %87 = load i64, i64* %8, align 8
  %88 = sub i64 %87, 1
  %89 = call i32 @regmap_write(i32 %85, i32 %86, i64 %88)
  %90 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %91 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @TIM_CR1, align 4
  %94 = load i32, i32* @TIM_CR1_ARPE, align 4
  %95 = load i32, i32* @TIM_CR1_ARPE, align 4
  %96 = call i32 @regmap_update_bits(i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %98 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @stm32_timer_is_trgo2_name(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %75
  %103 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %104 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TIM_CR2, align 4
  %107 = load i32, i32* @TIM_CR2_MMS2, align 4
  %108 = load i32, i32* @TIM_CR2_MMS2_SHIFT, align 4
  %109 = shl i32 2, %108
  %110 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 %107, i32 %109)
  br label %120

111:                                              ; preds = %75
  %112 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %113 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TIM_CR2, align 4
  %116 = load i32, i32* @TIM_CR2_MMS, align 4
  %117 = load i32, i32* @TIM_CR2_MMS_SHIFT, align 4
  %118 = shl i32 2, %117
  %119 = call i32 @regmap_update_bits(i32 %114, i32 %115, i32 %116, i32 %118)
  br label %120

120:                                              ; preds = %111, %102
  %121 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %122 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @TIM_EGR, align 4
  %125 = load i32, i32* @TIM_EGR_UG, align 4
  %126 = load i32, i32* @TIM_EGR_UG, align 4
  %127 = call i32 @regmap_update_bits(i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load %struct.stm32_timer_trigger*, %struct.stm32_timer_trigger** %5, align 8
  %129 = getelementptr inbounds %struct.stm32_timer_trigger, %struct.stm32_timer_trigger* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TIM_CR1, align 4
  %132 = load i32, i32* @TIM_CR1_CEN, align 4
  %133 = load i32, i32* @TIM_CR1_CEN, align 4
  %134 = call i32 @regmap_update_bits(i32 %130, i32 %131, i32 %132, i32 %133)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %120, %57, %40
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @stm32_timer_is_trgo2_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
