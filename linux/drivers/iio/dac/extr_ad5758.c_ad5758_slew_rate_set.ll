; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_slew_rate_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_slew_rate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i32 }

@AD5758_DAC_CONFIG_SR_EN_MSK = common dso_local global i64 0, align 8
@AD5758_DAC_CONFIG_SR_CLOCK_MSK = common dso_local global i64 0, align 8
@AD5758_DAC_CONFIG_SR_STEP_MSK = common dso_local global i64 0, align 8
@AD5758_DAC_CONFIG = common dso_local global i32 0, align 4
@AD5758_DIGITAL_DIAG_RESULTS = common dso_local global i32 0, align 4
@AD5758_CAL_MEM_UNREFRESHED_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*, i32, i32)* @ad5758_slew_rate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_slew_rate_set(%struct.ad5758_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad5758_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @AD5758_DAC_CONFIG_SR_EN_MSK, align 8
  %12 = load i64, i64* @AD5758_DAC_CONFIG_SR_CLOCK_MSK, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @AD5758_DAC_CONFIG_SR_STEP_MSK, align 8
  %15 = or i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = call i32 @AD5758_DAC_CONFIG_SR_EN_MODE(i32 1)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @AD5758_DAC_CONFIG_SR_STEP_MODE(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @AD5758_DAC_CONFIG_SR_CLOCK_MODE(i32 %20)
  %22 = or i32 %19, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ad5758_state*, %struct.ad5758_state** %5, align 8
  %24 = load i32, i32* @AD5758_DAC_CONFIG, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @ad5758_spi_write_mask(%struct.ad5758_state* %23, i32 %24, i64 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.ad5758_state*, %struct.ad5758_state** %5, align 8
  %34 = load i32, i32* @AD5758_DIGITAL_DIAG_RESULTS, align 4
  %35 = load i32, i32* @AD5758_CAL_MEM_UNREFRESHED_MSK, align 4
  %36 = call i32 @ad5758_wait_for_task_complete(%struct.ad5758_state* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %32, %30
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @AD5758_DAC_CONFIG_SR_EN_MODE(i32) #1

declare dso_local i32 @AD5758_DAC_CONFIG_SR_STEP_MODE(i32) #1

declare dso_local i32 @AD5758_DAC_CONFIG_SR_CLOCK_MODE(i32) #1

declare dso_local i32 @ad5758_spi_write_mask(%struct.ad5758_state*, i32, i64, i32) #1

declare dso_local i32 @ad5758_wait_for_task_complete(%struct.ad5758_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
