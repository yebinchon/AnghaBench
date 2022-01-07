; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard06.c_dmard06_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard06.c_dmard06_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.dmard06_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"I2C check functionality failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to allocate iio device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMARD06_CHIP_ID_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Error reading chip id: %d\0A\00", align 1
@DMARD05_CHIP_ID = common dso_local global i32 0, align 4
@DMARD06_CHIP_ID = common dso_local global i32 0, align 4
@DMARD07_CHIP_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid chip id: %02d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DMARD06_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dmard06_channels = common dso_local global i32 0, align 4
@dmard06_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dmard06_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmard06_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.dmard06_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_I2C, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %23, i32 16)
  store %struct.iio_dev* %24, %struct.iio_dev** %7, align 8
  %25 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %26 = icmp ne %struct.iio_dev* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %21
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call %struct.dmard06_data* @iio_priv(%struct.iio_dev* %34)
  store %struct.dmard06_data* %35, %struct.dmard06_data** %8, align 8
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.dmard06_data*, %struct.dmard06_data** %8, align 8
  %38 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %37, i32 0, i32 1
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.dmard06_data*, %struct.dmard06_data** %8, align 8
  %40 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %39, i32 0, i32 1
  %41 = load %struct.i2c_client*, %struct.i2c_client** %40, align 8
  %42 = load i32, i32* @DMARD06_CHIP_ID_REG, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %102

52:                                               ; preds = %33
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @DMARD05_CHIP_ID, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @DMARD06_CHIP_ID, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @DMARD07_CHIP_ID, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %102

71:                                               ; preds = %60, %56, %52
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.dmard06_data*, %struct.dmard06_data** %8, align 8
  %74 = getelementptr inbounds %struct.dmard06_data, %struct.dmard06_data* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = call i32 @i2c_set_clientdata(%struct.i2c_client* %75, %struct.iio_dev* %76)
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  %83 = load i32, i32* @DMARD06_DRV_NAME, align 4
  %84 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %85 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %87 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @dmard06_channels, align 4
  %90 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @dmard06_channels, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %97 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %96, i32 0, i32 0
  store i32* @dmard06_info, i32** %97, align 8
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %101 = call i32 @devm_iio_device_register(i32* %99, %struct.iio_dev* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %71, %64, %46, %27, %15
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.dmard06_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
