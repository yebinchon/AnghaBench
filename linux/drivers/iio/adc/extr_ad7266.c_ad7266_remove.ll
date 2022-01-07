; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7266.c_ad7266_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad7266_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ad7266_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7266_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad7266_state*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad7266_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.ad7266_state* %8, %struct.ad7266_state** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %11)
  %13 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %14 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %1
  %18 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %19 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @gpio_free_array(i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %28 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IS_ERR(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.ad7266_state*, %struct.ad7266_state** %4, align 8
  %34 = getelementptr inbounds %struct.ad7266_state, %struct.ad7266_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_disable(i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  ret i32 0
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.ad7266_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @gpio_free_array(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
