; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.adc12138 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @adc12138_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc12138_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.adc12138*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %6 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.adc12138* @iio_priv(%struct.iio_dev* %7)
  store %struct.adc12138* %8, %struct.adc12138** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %11)
  %13 = load %struct.adc12138*, %struct.adc12138** %4, align 8
  %14 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IS_ERR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.adc12138*, %struct.adc12138** %4, align 8
  %20 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regulator_disable(i32 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.adc12138*, %struct.adc12138** %4, align 8
  %25 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_disable(i32 %26)
  %28 = load %struct.adc12138*, %struct.adc12138** %4, align 8
  %29 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  ret i32 0
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.adc12138* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
