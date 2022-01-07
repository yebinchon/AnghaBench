; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_set_dc_dc_conv_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_set_dc_dc_conv_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i32 }

@AD5758_DCDC_MODE_PPC_CURRENT = common dso_local global i32 0, align 4
@AD5758_ADC_CONFIG = common dso_local global i32 0, align 4
@AD5758_ADC_CONFIG_PPC_BUF_MSK = common dso_local global i32 0, align 4
@AD5758_DCDC_CONFIG1 = common dso_local global i32 0, align 4
@AD5758_DCDC_CONFIG1_DCDC_MODE_MSK = common dso_local global i32 0, align 4
@AD5758_DCDC_CONFIG2 = common dso_local global i32 0, align 4
@AD5758_DCDC_CONFIG2_BUSY_3WI_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*, i32)* @ad5758_set_dc_dc_conv_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_set_dc_dc_conv_mode(%struct.ad5758_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5758_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @AD5758_DCDC_MODE_PPC_CURRENT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %12 = load i32, i32* @AD5758_ADC_CONFIG, align 4
  %13 = load i32, i32* @AD5758_ADC_CONFIG_PPC_BUF_MSK, align 4
  %14 = call i32 @AD5758_ADC_CONFIG_PPC_BUF_EN(i32 1)
  %15 = call i32 @ad5758_spi_write_mask(%struct.ad5758_state* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %46

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %23 = load i32, i32* @AD5758_DCDC_CONFIG1, align 4
  %24 = load i32, i32* @AD5758_DCDC_CONFIG1_DCDC_MODE_MSK, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @AD5758_DCDC_CONFIG1_DCDC_MODE_MODE(i32 %25)
  %27 = call i32 @ad5758_spi_write_mask(%struct.ad5758_state* %22, i32 %23, i32 %24, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %21
  %33 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %34 = load i32, i32* @AD5758_DCDC_CONFIG2, align 4
  %35 = load i32, i32* @AD5758_DCDC_CONFIG2_BUSY_3WI_MSK, align 4
  %36 = call i32 @ad5758_wait_for_task_complete(%struct.ad5758_state* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %44 = getelementptr inbounds %struct.ad5758_state, %struct.ad5758_state* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %39, %30, %18
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ad5758_spi_write_mask(%struct.ad5758_state*, i32, i32, i32) #1

declare dso_local i32 @AD5758_ADC_CONFIG_PPC_BUF_EN(i32) #1

declare dso_local i32 @AD5758_DCDC_CONFIG1_DCDC_MODE_MODE(i32) #1

declare dso_local i32 @ad5758_wait_for_task_complete(%struct.ad5758_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
