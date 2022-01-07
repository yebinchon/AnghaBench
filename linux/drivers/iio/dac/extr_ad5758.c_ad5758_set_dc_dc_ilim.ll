; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_set_dc_dc_ilim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5758.c_ad5758_set_dc_dc_ilim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5758_state = type { i32 }

@AD5758_DCDC_CONFIG2 = common dso_local global i32 0, align 4
@AD5758_DCDC_CONFIG2_ILIMIT_MSK = common dso_local global i32 0, align 4
@AD5758_DCDC_CONFIG2_BUSY_3WI_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5758_state*, i32)* @ad5758_set_dc_dc_ilim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5758_set_dc_dc_ilim(%struct.ad5758_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ad5758_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ad5758_state* %0, %struct.ad5758_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %8 = load i32, i32* @AD5758_DCDC_CONFIG2, align 4
  %9 = load i32, i32* @AD5758_DCDC_CONFIG2_ILIMIT_MSK, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @AD5758_DCDC_CONFIG2_ILIMIT_MODE(i32 %10)
  %12 = call i32 @ad5758_spi_write_mask(%struct.ad5758_state* %7, i32 %8, i32 %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.ad5758_state*, %struct.ad5758_state** %4, align 8
  %19 = load i32, i32* @AD5758_DCDC_CONFIG2, align 4
  %20 = load i32, i32* @AD5758_DCDC_CONFIG2_BUSY_3WI_MSK, align 4
  %21 = call i32 @ad5758_wait_for_task_complete(%struct.ad5758_state* %18, i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ad5758_spi_write_mask(%struct.ad5758_state*, i32, i32, i32) #1

declare dso_local i32 @AD5758_DCDC_CONFIG2_ILIMIT_MODE(i32) #1

declare dso_local i32 @ad5758_wait_for_task_complete(%struct.ad5758_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
