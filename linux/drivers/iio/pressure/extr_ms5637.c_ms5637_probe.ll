; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5637.c_ms5637_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_ms5637.c_ms5637_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ms_tp_dev = type { i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Adapter does not support some i2c transaction\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ms5637_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ms5637_channels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ms5637_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms5637_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ms_tp_dev*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(i32 %11, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %88

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %27, i32 16)
  store %struct.iio_dev* %28, %struct.iio_dev** %7, align 8
  %29 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %30 = icmp ne %struct.iio_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %88

34:                                               ; preds = %25
  %35 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %36 = call %struct.ms_tp_dev* @iio_priv(%struct.iio_dev* %35)
  store %struct.ms_tp_dev* %36, %struct.ms_tp_dev** %6, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %6, align 8
  %39 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %38, i32 0, i32 2
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %6, align 8
  %41 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %40, i32 0, i32 0
  store i32 5, i32* %41, align 8
  %42 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %6, align 8
  %43 = getelementptr inbounds %struct.ms_tp_dev, %struct.ms_tp_dev* %42, i32 0, i32 1
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 5
  store i32* @ms5637_info, i32** %46, align 8
  %47 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @ms5637_channels, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ms5637_channels, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %66 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = call i32 @i2c_set_clientdata(%struct.i2c_client* %67, %struct.iio_dev* %68)
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = call i32 @ms_sensors_reset(%struct.i2c_client* %70, i32 30, i32 3000)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %34
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %88

76:                                               ; preds = %34
  %77 = load %struct.ms_tp_dev*, %struct.ms_tp_dev** %6, align 8
  %78 = call i32 @ms_sensors_tp_read_prom(%struct.ms_tp_dev* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %76
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %87 = call i32 @devm_iio_device_register(i32* %85, %struct.iio_dev* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %81, %74, %31, %19
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ms_tp_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ms_sensors_reset(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ms_sensors_tp_read_prom(%struct.ms_tp_dev*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
