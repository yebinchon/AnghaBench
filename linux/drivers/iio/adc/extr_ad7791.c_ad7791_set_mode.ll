; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7791.c_ad7791_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad_sigma_delta = type { i32 }
%struct.ad7791_state = type { i32 }

@AD7791_MODE_CONTINUOUS = common dso_local global i32 0, align 4
@AD7791_MODE_SINGLE = common dso_local global i32 0, align 4
@AD7791_MODE_POWERDOWN = common dso_local global i32 0, align 4
@AD7791_MODE_SEL_MASK = common dso_local global i32 0, align 4
@AD7791_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad_sigma_delta*, i32)* @ad7791_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7791_set_mode(%struct.ad_sigma_delta* %0, i32 %1) #0 {
  %3 = alloca %struct.ad_sigma_delta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad7791_state*, align 8
  store %struct.ad_sigma_delta* %0, %struct.ad_sigma_delta** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %7 = call %struct.ad7791_state* @ad_sigma_delta_to_ad7791(%struct.ad_sigma_delta* %6)
  store %struct.ad7791_state* %7, %struct.ad7791_state** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %15 [
    i32 131, label %9
    i32 128, label %11
    i32 130, label %13
    i32 129, label %13
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @AD7791_MODE_CONTINUOUS, align 4
  store i32 %10, i32* %4, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @AD7791_MODE_SINGLE, align 4
  store i32 %12, i32* %4, align 4
  br label %15

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @AD7791_MODE_POWERDOWN, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %2, %13, %11, %9
  %16 = load i32, i32* @AD7791_MODE_SEL_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ad7791_state*, %struct.ad7791_state** %5, align 8
  %19 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @AD7791_MODE_SEL(i32 %22)
  %24 = load %struct.ad7791_state*, %struct.ad7791_state** %5, align 8
  %25 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ad_sigma_delta*, %struct.ad_sigma_delta** %3, align 8
  %29 = load i32, i32* @AD7791_REG_MODE, align 4
  %30 = load %struct.ad7791_state*, %struct.ad7791_state** %5, align 8
  %31 = getelementptr inbounds %struct.ad7791_state, %struct.ad7791_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ad_sd_write_reg(%struct.ad_sigma_delta* %28, i32 %29, i32 4, i32 %32)
  ret i32 %33
}

declare dso_local %struct.ad7791_state* @ad_sigma_delta_to_ad7791(%struct.ad_sigma_delta*) #1

declare dso_local i32 @AD7791_MODE_SEL(i32) #1

declare dso_local i32 @ad_sd_write_reg(%struct.ad_sigma_delta*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
