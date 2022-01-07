; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc5_chip = type { i32, i32 }
%struct.adc5_channel_prop = type { i32, i32, i32 }

@ADC5_USR_DIG_PARAM = common dso_local global i32 0, align 4
@ADC5_USR_FAST_AVG_CTL_SAMPLES_MASK = common dso_local global i64 0, align 8
@ADC5_USR_HW_SETTLE_DELAY_MASK = common dso_local global i64 0, align 8
@ADC5_USR_EN_CTL1_ADC_EN = common dso_local global i32 0, align 4
@ADC5_USR_CONV_REQ_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adc5_chip*, %struct.adc5_channel_prop*)* @adc5_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc5_configure(%struct.adc5_chip* %0, %struct.adc5_channel_prop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adc5_chip*, align 8
  %5 = alloca %struct.adc5_channel_prop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  store %struct.adc5_chip* %0, %struct.adc5_chip** %4, align 8
  store %struct.adc5_channel_prop* %1, %struct.adc5_channel_prop** %5, align 8
  %8 = load %struct.adc5_chip*, %struct.adc5_chip** %4, align 8
  %9 = load i32, i32* @ADC5_USR_DIG_PARAM, align 4
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %11 = call i32 @adc5_read(%struct.adc5_chip* %8, i32 %9, i32* %10, i32 24)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.adc5_chip*, %struct.adc5_chip** %4, align 8
  %18 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %5, align 8
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %20 = call i32 @adc5_update_dig_param(%struct.adc5_chip* %17, %struct.adc5_channel_prop* %18, i32* %19)
  %21 = load i64, i64* @ADC5_USR_FAST_AVG_CTL_SAMPLES_MASK, align 8
  %22 = xor i64 %21, -1
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %23
  store i32 %26, i32* %24, align 4
  %27 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %5, align 8
  %28 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %5, align 8
  %34 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  store i32 %35, i32* %36, align 8
  %37 = load i64, i64* @ADC5_USR_HW_SETTLE_DELAY_MASK, align 8
  %38 = xor i64 %37, -1
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %5, align 8
  %44 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @ADC5_USR_EN_CTL1_ADC_EN, align 4
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %51 = load i32, i32* %50, align 16
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 16
  %53 = load i32, i32* @ADC5_USR_CONV_REQ_REQ, align 4
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.adc5_chip*, %struct.adc5_chip** %4, align 8
  %58 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %16
  %62 = load %struct.adc5_chip*, %struct.adc5_chip** %4, align 8
  %63 = getelementptr inbounds %struct.adc5_chip, %struct.adc5_chip* %62, i32 0, i32 0
  %64 = call i32 @reinit_completion(i32* %63)
  br label %65

65:                                               ; preds = %61, %16
  %66 = load %struct.adc5_chip*, %struct.adc5_chip** %4, align 8
  %67 = load i32, i32* @ADC5_USR_DIG_PARAM, align 4
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %69 = call i32 @adc5_write(%struct.adc5_chip* %66, i32 %67, i32* %68, i32 24)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @adc5_read(%struct.adc5_chip*, i32, i32*, i32) #1

declare dso_local i32 @adc5_update_dig_param(%struct.adc5_chip*, %struct.adc5_channel_prop*, i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @adc5_write(%struct.adc5_chip*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
