; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_maxim_thermocouple.c_maxim_thermocouple_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_maxim_thermocouple.c_maxim_thermocouple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maxim_thermocouple_chip = type { i32, i32, i32 }
%struct.spi_device = type { i32 }
%struct.spi_device_id = type { i64 }
%struct.iio_dev = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.maxim_thermocouple_data = type { %struct.maxim_thermocouple_chip*, %struct.spi_device* }

@maxim_thermocouple_chips = common dso_local global %struct.maxim_thermocouple_chip* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@maxim_thermocouple_info = common dso_local global i32 0, align 4
@MAXIM_THERMOCOUPLE_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@maxim_thermocouple_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @maxim_thermocouple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maxim_thermocouple_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_device_id*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.maxim_thermocouple_data*, align 8
  %7 = alloca %struct.maxim_thermocouple_chip*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = call %struct.spi_device_id* @spi_get_device_id(%struct.spi_device* %9)
  store %struct.spi_device_id* %10, %struct.spi_device_id** %4, align 8
  %11 = load %struct.maxim_thermocouple_chip*, %struct.maxim_thermocouple_chip** @maxim_thermocouple_chips, align 8
  %12 = load %struct.spi_device_id*, %struct.spi_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.spi_device_id, %struct.spi_device_id* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.maxim_thermocouple_chip, %struct.maxim_thermocouple_chip* %11, i64 %14
  store %struct.maxim_thermocouple_chip* %15, %struct.maxim_thermocouple_chip** %7, align 8
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %17, i32 16)
  store %struct.iio_dev* %18, %struct.iio_dev** %5, align 8
  %19 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %20 = icmp ne %struct.iio_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %1
  %25 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %26 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %25, i32 0, i32 6
  store i32* @maxim_thermocouple_info, i32** %26, align 8
  %27 = load i32, i32* @MAXIM_THERMOCOUPLE_DRV_NAME, align 4
  %28 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.maxim_thermocouple_chip*, %struct.maxim_thermocouple_chip** %7, align 8
  %31 = getelementptr inbounds %struct.maxim_thermocouple_chip, %struct.maxim_thermocouple_chip* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %34 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.maxim_thermocouple_chip*, %struct.maxim_thermocouple_chip** %7, align 8
  %36 = getelementptr inbounds %struct.maxim_thermocouple_chip, %struct.maxim_thermocouple_chip* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %39 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.maxim_thermocouple_chip*, %struct.maxim_thermocouple_chip** %7, align 8
  %41 = getelementptr inbounds %struct.maxim_thermocouple_chip, %struct.maxim_thermocouple_chip* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %48, i32 0, i32 0
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* %49, i32** %52, align 8
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = call %struct.maxim_thermocouple_data* @iio_priv(%struct.iio_dev* %53)
  store %struct.maxim_thermocouple_data* %54, %struct.maxim_thermocouple_data** %6, align 8
  %55 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %56 = load %struct.maxim_thermocouple_data*, %struct.maxim_thermocouple_data** %6, align 8
  %57 = getelementptr inbounds %struct.maxim_thermocouple_data, %struct.maxim_thermocouple_data* %56, i32 0, i32 1
  store %struct.spi_device* %55, %struct.spi_device** %57, align 8
  %58 = load %struct.maxim_thermocouple_chip*, %struct.maxim_thermocouple_chip** %7, align 8
  %59 = load %struct.maxim_thermocouple_data*, %struct.maxim_thermocouple_data** %6, align 8
  %60 = getelementptr inbounds %struct.maxim_thermocouple_data, %struct.maxim_thermocouple_data* %59, i32 0, i32 0
  store %struct.maxim_thermocouple_chip* %58, %struct.maxim_thermocouple_chip** %60, align 8
  %61 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 0
  %63 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %64 = load i32, i32* @maxim_thermocouple_trigger_handler, align 4
  %65 = call i32 @devm_iio_triggered_buffer_setup(i32* %62, %struct.iio_dev* %63, i32* null, i32 %64, i32* null)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %24
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %24
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 0
  %73 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %74 = call i32 @devm_iio_device_register(i32* %72, %struct.iio_dev* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %68, %21
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.spi_device_id* @spi_get_device_id(%struct.spi_device*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.maxim_thermocouple_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
