; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mpl3115_data = type { i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@MPL3115_WHO_AM_I = common dso_local global i32 0, align 4
@MPL3115_DEVICE_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mpl3115_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mpl3115_channels = common dso_local global i32 0, align 4
@MPL3115_CTRL_REG1 = common dso_local global i32 0, align 4
@MPL3115_CTRL_RESET = common dso_local global i32 0, align 4
@MPL3115_CTRL_OS_258MS = common dso_local global i32 0, align 4
@mpl3115_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mpl3115_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl3115_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mpl3115_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @MPL3115_WHO_AM_I, align 4
  %11 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %103

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MPL3115_DEVICE_ID, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %103

23:                                               ; preds = %16
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %25, i32 16)
  store %struct.iio_dev* %26, %struct.iio_dev** %7, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = icmp ne %struct.iio_dev* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %103

32:                                               ; preds = %23
  %33 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %34 = call %struct.mpl3115_data* @iio_priv(%struct.iio_dev* %33)
  store %struct.mpl3115_data* %34, %struct.mpl3115_data** %6, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.mpl3115_data*, %struct.mpl3115_data** %6, align 8
  %37 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %36, i32 0, i32 2
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.mpl3115_data*, %struct.mpl3115_data** %6, align 8
  %39 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = call i32 @i2c_set_clientdata(%struct.i2c_client* %41, %struct.iio_dev* %42)
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 5
  store i32* @mpl3115_info, i32** %45, align 8
  %46 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* %52, i32** %55, align 8
  %56 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @mpl3115_channels, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @mpl3115_channels, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i32, i32* @MPL3115_CTRL_REG1, align 4
  %68 = load i32, i32* @MPL3115_CTRL_RESET, align 4
  %69 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %66, i32 %67, i32 %68)
  %70 = call i32 @msleep(i32 50)
  %71 = load i32, i32* @MPL3115_CTRL_OS_258MS, align 4
  %72 = load %struct.mpl3115_data*, %struct.mpl3115_data** %6, align 8
  %73 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = load i32, i32* @MPL3115_CTRL_REG1, align 4
  %76 = load %struct.mpl3115_data*, %struct.mpl3115_data** %6, align 8
  %77 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %74, i32 %75, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %32
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %103

84:                                               ; preds = %32
  %85 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %86 = load i32, i32* @mpl3115_trigger_handler, align 4
  %87 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %85, i32* null, i32 %86, i32* null)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %103

92:                                               ; preds = %84
  %93 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %94 = call i32 @iio_device_register(%struct.iio_dev* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %99

98:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %103

99:                                               ; preds = %97
  %100 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %101 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %98, %90, %82, %29, %20, %14
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.mpl3115_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
