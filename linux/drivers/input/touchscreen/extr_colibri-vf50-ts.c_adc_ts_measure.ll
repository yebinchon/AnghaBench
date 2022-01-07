; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_adc_ts_measure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_colibri-vf50-ts.c_adc_ts_measure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { i32 }
%struct.gpio_desc = type { i32 }

@COLI_TOUCH_MIN_DELAY_US = common dso_local global i32 0, align 4
@COLI_TOUCH_MAX_DELAY_US = common dso_local global i32 0, align 4
@COLI_TOUCH_NO_OF_AVGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_channel*, %struct.gpio_desc*, %struct.gpio_desc*)* @adc_ts_measure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_ts_measure(%struct.iio_channel* %0, %struct.gpio_desc* %1, %struct.gpio_desc* %2) #0 {
  %4 = alloca %struct.iio_channel*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iio_channel* %0, %struct.iio_channel** %4, align 8
  store %struct.gpio_desc* %1, %struct.gpio_desc** %5, align 8
  store %struct.gpio_desc* %2, %struct.gpio_desc** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %12 = call i32 @gpiod_set_value(%struct.gpio_desc* %11, i32 1)
  %13 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %14 = call i32 @gpiod_set_value(%struct.gpio_desc* %13, i32 1)
  %15 = load i32, i32* @COLI_TOUCH_MIN_DELAY_US, align 4
  %16 = load i32, i32* @COLI_TOUCH_MAX_DELAY_US, align 4
  %17 = call i32 @usleep_range(i32 %15, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %33, %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @COLI_TOUCH_NO_OF_AVGS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.iio_channel*, %struct.iio_channel** %4, align 8
  %24 = call i32 @iio_read_channel_raw(%struct.iio_channel* %23, i32* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* @COLI_TOUCH_NO_OF_AVGS, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %27
  %41 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %42 = call i32 @gpiod_set_value(%struct.gpio_desc* %41, i32 0)
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %44 = call i32 @gpiod_set_value(%struct.gpio_desc* %43, i32 0)
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @iio_read_channel_raw(%struct.iio_channel*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
