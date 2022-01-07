; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_spi.c_ms5611_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5611_spi.c_ms5611_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.ms5611_state = type { %struct.spi_device*, i32, i32, i32 }
%struct.iio_dev = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@ms5611_spi_reset = common dso_local global i32 0, align 4
@ms5611_spi_read_prom_word = common dso_local global i32 0, align 4
@ms5611_spi_read_adc_temp_and_pressure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ms5611_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5611_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ms5611_state*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  %9 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %8, i32 24)
  store %struct.iio_dev* %9, %struct.iio_dev** %6, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %11 = icmp ne %struct.iio_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %18 = call i32 @spi_set_drvdata(%struct.spi_device* %16, %struct.iio_dev* %17)
  %19 = load i32, i32* @SPI_MODE_0, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  store i32 20000000, i32* %23, align 4
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 1
  store i32 8, i32* %25, align 4
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = call i32 @spi_setup(%struct.spi_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %15
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = call %struct.ms5611_state* @iio_priv(%struct.iio_dev* %33)
  store %struct.ms5611_state* %34, %struct.ms5611_state** %5, align 8
  %35 = load i32, i32* @ms5611_spi_reset, align 4
  %36 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %37 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ms5611_spi_read_prom_word, align 4
  %39 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %40 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ms5611_spi_read_adc_temp_and_pressure, align 4
  %42 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %43 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = load %struct.ms5611_state*, %struct.ms5611_state** %5, align 8
  %46 = getelementptr inbounds %struct.ms5611_state, %struct.ms5611_state* %45, i32 0, i32 0
  store %struct.spi_device* %44, %struct.spi_device** %46, align 8
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 2
  %50 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %51 = call %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = call %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ms5611_probe(%struct.iio_dev* %47, i32* %49, i32 %53, i32 %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %32, %30, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local %struct.ms5611_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ms5611_probe(%struct.iio_dev*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @spi_get_device_id(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
