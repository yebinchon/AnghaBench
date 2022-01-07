; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_update_dig_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_qcom-spmi-adc5.c_adc5_update_dig_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adc5_chip = type { i32 }
%struct.adc5_channel_prop = type { i32, i32, i32 }

@ADC5_USR_DIG_PARAM_CAL_VAL = common dso_local global i32 0, align 4
@ADC5_USR_DIG_PARAM_CAL_VAL_SHIFT = common dso_local global i32 0, align 4
@ADC5_USR_DIG_PARAM_CAL_SEL = common dso_local global i32 0, align 4
@ADC5_USR_DIG_PARAM_CAL_SEL_SHIFT = common dso_local global i32 0, align 4
@ADC5_USR_DIG_PARAM_DEC_RATIO_SEL = common dso_local global i32 0, align 4
@ADC5_USR_DIG_PARAM_DEC_RATIO_SEL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adc5_chip*, %struct.adc5_channel_prop*, i32*)* @adc5_update_dig_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adc5_update_dig_param(%struct.adc5_chip* %0, %struct.adc5_channel_prop* %1, i32* %2) #0 {
  %4 = alloca %struct.adc5_chip*, align 8
  %5 = alloca %struct.adc5_channel_prop*, align 8
  %6 = alloca i32*, align 8
  store %struct.adc5_chip* %0, %struct.adc5_chip** %4, align 8
  store %struct.adc5_channel_prop* %1, %struct.adc5_channel_prop** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @ADC5_USR_DIG_PARAM_CAL_VAL, align 4
  %8 = xor i32 %7, -1
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  store i32 %11, i32* %9, align 4
  %12 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %5, align 8
  %13 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ADC5_USR_DIG_PARAM_CAL_VAL_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @ADC5_USR_DIG_PARAM_CAL_SEL, align 4
  %21 = xor i32 %20, -1
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %5, align 8
  %26 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ADC5_USR_DIG_PARAM_CAL_SEL_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @ADC5_USR_DIG_PARAM_DEC_RATIO_SEL, align 4
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load %struct.adc5_channel_prop*, %struct.adc5_channel_prop** %5, align 8
  %39 = getelementptr inbounds %struct.adc5_channel_prop, %struct.adc5_channel_prop* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ADC5_USR_DIG_PARAM_DEC_RATIO_SEL_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
