; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2485.c_ltc2485_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2485.c_ltc2485_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ltc2485_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ltc2485_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ltc2485_channel = common dso_local global i32 0, align 4
@LTC2485_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ltc2485_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2485_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ltc2485_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_I2C, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @i2c_check_functionality(i32 %11, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %22, i32 16)
  store %struct.iio_dev* %23, %struct.iio_dev** %6, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = icmp ne %struct.iio_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %77

29:                                               ; preds = %20
  %30 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %31 = call %struct.ltc2485_data* @iio_priv(%struct.iio_dev* %30)
  store %struct.ltc2485_data* %31, %struct.ltc2485_data** %7, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.iio_dev* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.ltc2485_data*, %struct.ltc2485_data** %7, align 8
  %37 = getelementptr inbounds %struct.ltc2485_data, %struct.ltc2485_data* %36, i32 0, i32 1
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %44 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 3
  store i32* @ltc2485_info, i32** %49, align 8
  %50 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @ltc2485_channel, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @ltc2485_channel, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ltc2485_data*, %struct.ltc2485_data** %7, align 8
  %61 = getelementptr inbounds %struct.ltc2485_data, %struct.ltc2485_data* %60, i32 0, i32 1
  %62 = load %struct.i2c_client*, %struct.i2c_client** %61, align 8
  %63 = load i32, i32* @LTC2485_CONFIG_DEFAULT, align 4
  %64 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %29
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %29
  %70 = call i32 (...) @ktime_get()
  %71 = load %struct.ltc2485_data*, %struct.ltc2485_data** %7, align 8
  %72 = getelementptr inbounds %struct.ltc2485_data, %struct.ltc2485_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %76 = call i32 @devm_iio_device_register(i32* %74, %struct.iio_dev* %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %69, %67, %26, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ltc2485_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
