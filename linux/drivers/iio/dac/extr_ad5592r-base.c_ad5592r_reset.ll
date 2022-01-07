; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5592r_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ad5592r_state*, i32, i32)* }
%struct.gpio_desc = type { i32 }
%struct.iio_dev = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@AD5592R_REG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5592r_state*)* @ad5592r_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5592r_reset(%struct.ad5592r_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad5592r_state*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  store %struct.ad5592r_state* %0, %struct.ad5592r_state** %3, align 8
  %6 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %7 = call %struct.iio_dev* @iio_priv_to_dev(%struct.ad5592r_state* %6)
  store %struct.iio_dev* %7, %struct.iio_dev** %5, align 8
  %8 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %9 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %12 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.gpio_desc* %12, %struct.gpio_desc** %4, align 8
  %13 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %14 = call i64 @IS_ERR(%struct.gpio_desc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %18 = call i32 @PTR_ERR(%struct.gpio_desc* %17)
  store i32 %18, i32* %2, align 4
  br label %43

19:                                               ; preds = %1
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %21 = icmp ne %struct.gpio_desc* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i32 @udelay(i32 1)
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %25 = call i32 @gpiod_set_value(%struct.gpio_desc* %24, i32 1)
  br label %41

26:                                               ; preds = %19
  %27 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %28 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %31 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %33, align 8
  %35 = load %struct.ad5592r_state*, %struct.ad5592r_state** %3, align 8
  %36 = load i32, i32* @AD5592R_REG_RESET, align 4
  %37 = call i32 %34(%struct.ad5592r_state* %35, i32 %36, i32 3500)
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %26, %22
  %42 = call i32 @udelay(i32 250)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.ad5592r_state*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
