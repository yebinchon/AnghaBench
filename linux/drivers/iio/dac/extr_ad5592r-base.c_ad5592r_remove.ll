; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad5592r_state = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ad5592r_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad5592r_state*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.iio_dev* @dev_get_drvdata(%struct.device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad5592r_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.ad5592r_state* %8, %struct.ad5592r_state** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.ad5592r_state*, %struct.ad5592r_state** %4, align 8
  %12 = call i32 @ad5592r_reset_channel_modes(%struct.ad5592r_state* %11)
  %13 = load %struct.ad5592r_state*, %struct.ad5592r_state** %4, align 8
  %14 = call i32 @ad5592r_gpio_cleanup(%struct.ad5592r_state* %13)
  %15 = load %struct.ad5592r_state*, %struct.ad5592r_state** %4, align 8
  %16 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ad5592r_state*, %struct.ad5592r_state** %4, align 8
  %21 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @regulator_disable(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  ret i32 0
}

declare dso_local %struct.iio_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ad5592r_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @ad5592r_reset_channel_modes(%struct.ad5592r_state*) #1

declare dso_local i32 @ad5592r_gpio_cleanup(%struct.ad5592r_state*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
