; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_tsys01.c_tsys01_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.tsys01_dev = type { i32, i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32 }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Adapter does not support some i2c transaction\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ms_sensors_reset = common dso_local global i32 0, align 4
@ms_sensors_read_prom_word = common dso_local global i32 0, align 4
@ms_sensors_convert_and_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tsys01_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsys01_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tsys01_dev*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(i32 %10, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %26, i32 24)
  store %struct.iio_dev* %27, %struct.iio_dev** %7, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = icmp ne %struct.iio_dev* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %24
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call %struct.tsys01_dev* @iio_priv(%struct.iio_dev* %34)
  store %struct.tsys01_dev* %35, %struct.tsys01_dev** %6, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %38 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %37, i32 0, i32 3
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load i32, i32* @ms_sensors_reset, align 4
  %40 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %41 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @ms_sensors_read_prom_word, align 4
  %43 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %44 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ms_sensors_convert_and_read, align 4
  %46 = load %struct.tsys01_dev*, %struct.tsys01_dev** %6, align 8
  %47 = getelementptr inbounds %struct.tsys01_dev, %struct.tsys01_dev* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = call i32 @i2c_set_clientdata(%struct.i2c_client* %48, %struct.iio_dev* %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @tsys01_probe(%struct.iio_dev* %51, i32* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %33, %30, %18
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.tsys01_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @tsys01_probe(%struct.iio_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
