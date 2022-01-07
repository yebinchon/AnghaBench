; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.lidar_data = type { i32, %struct.iio_dev*, %struct.i2c_client*, i32 }
%struct.iio_dev = type { i32, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@lidar_i2c_xfer = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@lidar_smbus_xfer = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@lidar_info = common dso_local global i32 0, align 4
@LIDAR_DRV_NAME = common dso_local global i32 0, align 4
@lidar_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@lidar_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lidar_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lidar_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lidar_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 32)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %116

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.lidar_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.lidar_data* %19, %struct.lidar_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I2C_FUNC_I2C, align 4
  %24 = call i64 @i2c_check_functionality(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @lidar_i2c_xfer, align 4
  %28 = load %struct.lidar_data*, %struct.lidar_data** %6, align 8
  %29 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.lidar_data*, %struct.lidar_data** %6, align 8
  %31 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %49

32:                                               ; preds = %17
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %37 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @i2c_check_functionality(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* @lidar_smbus_xfer, align 4
  %43 = load %struct.lidar_data*, %struct.lidar_data** %6, align 8
  %44 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  br label %48

45:                                               ; preds = %32
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %116

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 5
  store i32* @lidar_info, i32** %51, align 8
  %52 = load i32, i32* @LIDAR_DRV_NAME, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @lidar_channels, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @lidar_channels, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32* %63, i32** %66, align 8
  %67 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %72 = call i32 @i2c_set_clientdata(%struct.i2c_client* %70, %struct.iio_dev* %71)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load %struct.lidar_data*, %struct.lidar_data** %6, align 8
  %75 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %74, i32 0, i32 2
  store %struct.i2c_client* %73, %struct.i2c_client** %75, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = load %struct.lidar_data*, %struct.lidar_data** %6, align 8
  %78 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %77, i32 0, i32 1
  store %struct.iio_dev* %76, %struct.iio_dev** %78, align 8
  %79 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %80 = load i32, i32* @lidar_trigger_handler, align 4
  %81 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %79, i32* null, i32 %80, i32* null)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %49
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %116

86:                                               ; preds = %49
  %87 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %88 = call i32 @iio_device_register(%struct.iio_dev* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %112

92:                                               ; preds = %86
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @pm_runtime_set_autosuspend_delay(i32* %94, i32 1000)
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 @pm_runtime_use_autosuspend(i32* %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = call i32 @pm_runtime_set_active(i32* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %112

105:                                              ; preds = %92
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = call i32 @pm_runtime_enable(i32* %107)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 @pm_runtime_idle(i32* %110)
  store i32 0, i32* %3, align 4
  br label %116

112:                                              ; preds = %104, %91
  %113 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %114 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %105, %84, %45, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.lidar_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_idle(i32*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
