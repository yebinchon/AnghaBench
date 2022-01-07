; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_ssp_accel_sensor.c_ssp_accel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_ssp_accel_sensor.c_ssp_accel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, i32, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.ssp_sensor_data = type { i32, i32 }
%struct.iio_buffer = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ssp_process_accel_data = common dso_local global i32 0, align 4
@SSP_ACCELEROMETER_SENSOR = common dso_local global i32 0, align 4
@ssp_accel_device_name = common dso_local global i32 0, align 4
@ssp_accel_iio_info = common dso_local global i32 0, align 4
@INDIO_BUFFER_SOFTWARE = common dso_local global i32 0, align 4
@ssp_acc_channels = common dso_local global i32 0, align 4
@ssp_accel_scan_mask = common dso_local global i32 0, align 4
@ssp_accel_buffer_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ssp_accel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssp_accel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.ssp_sensor_data*, align 8
  %7 = alloca %struct.iio_buffer*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__* %9, i32 8)
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = icmp ne %struct.iio_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %18 = call %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev* %17)
  store %struct.ssp_sensor_data* %18, %struct.ssp_sensor_data** %6, align 8
  %19 = load i32, i32* @ssp_process_accel_data, align 4
  %20 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %6, align 8
  %21 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @SSP_ACCELEROMETER_SENSOR, align 4
  %23 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %6, align 8
  %24 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ssp_accel_device_name, align 4
  %26 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %27 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %31 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 5
  store i32* @ssp_accel_iio_info, i32** %41, align 8
  %42 = load i32, i32* @INDIO_BUFFER_SOFTWARE, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ssp_acc_channels, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @ssp_acc_channels, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @ssp_accel_scan_mask, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call %struct.iio_buffer* @devm_iio_kfifo_allocate(%struct.TYPE_6__* %56)
  store %struct.iio_buffer* %57, %struct.iio_buffer** %7, align 8
  %58 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %59 = icmp ne %struct.iio_buffer* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %16
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %84

63:                                               ; preds = %16
  %64 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %65 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %66 = call i32 @iio_device_attach_buffer(%struct.iio_dev* %64, %struct.iio_buffer* %65)
  %67 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %68 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %67, i32 0, i32 0
  store i32* @ssp_accel_buffer_ops, i32** %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.iio_dev* %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %75 = call i32 @devm_iio_device_register(%struct.TYPE_6__* %73, %struct.iio_dev* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %84

80:                                               ; preds = %63
  %81 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %82 = load i32, i32* @SSP_ACCELEROMETER_SENSOR, align 4
  %83 = call i32 @ssp_register_consumer(%struct.iio_dev* %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %80, %78, %60, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.iio_buffer* @devm_iio_kfifo_allocate(%struct.TYPE_6__*) #1

declare dso_local i32 @iio_device_attach_buffer(%struct.iio_dev*, %struct.iio_buffer*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_device_register(%struct.TYPE_6__*, %struct.iio_dev*) #1

declare dso_local i32 @ssp_register_consumer(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
