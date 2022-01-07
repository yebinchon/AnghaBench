; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard09.c_dmard09_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard09.c_dmard09_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.dmard09_data = type { %struct.i2c_client* }

@.str = private unnamed_addr constant [23 x i8] c"iio allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMARD09_REG_CHIPID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error reading chip id %d\0A\00", align 1
@DMARD09_CHIPID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Invalid chip id %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DMARD09_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@dmard09_channels = common dso_local global i32 0, align 4
@dmard09_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @dmard09_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmard09_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.dmard09_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 8)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call %struct.dmard09_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.dmard09_data* %22, %struct.dmard09_data** %8, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.dmard09_data*, %struct.dmard09_data** %8, align 8
  %25 = getelementptr inbounds %struct.dmard09_data, %struct.dmard09_data* %24, i32 0, i32 0
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.dmard09_data*, %struct.dmard09_data** %8, align 8
  %27 = getelementptr inbounds %struct.dmard09_data, %struct.dmard09_data* %26, i32 0, i32 0
  %28 = load %struct.i2c_client*, %struct.i2c_client** %27, align 8
  %29 = load i32, i32* @DMARD09_REG_CHIPID, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %20
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %20
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DMARD09_CHIPID, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %78

50:                                               ; preds = %39
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = call i32 @i2c_set_clientdata(%struct.i2c_client* %51, %struct.iio_dev* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load i32, i32* @DMARD09_DRV_NAME, align 4
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @dmard09_channels, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @dmard09_channels, align 4
  %69 = call i32 @ARRAY_SIZE(i32 %68)
  %70 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  store i32* @dmard09_info, i32** %73, align 8
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = call i32 @devm_iio_device_register(i32* %75, %struct.iio_dev* %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %50, %43, %33, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.dmard09_data* @iio_priv(%struct.iio_dev*) #1

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
