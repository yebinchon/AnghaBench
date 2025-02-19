; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_htu21.c_htu21_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_htu21.c_htu21_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64, i32 }
%struct.ms_ht_dev = type { i32, i64, %struct.i2c_client* }
%struct.iio_dev = type { i8*, i8*, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Adapter does not support some i2c transaction\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@htu21_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@MS8607 = common dso_local global i64 0, align 8
@ms8607_channels = common dso_local global i8* null, align 8
@htu21_channels = common dso_local global i8* null, align 8
@HTU21_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Serial number : %llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @htu21_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htu21_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ms_ht_dev*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %12, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %109

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %28, i32 24)
  store %struct.iio_dev* %29, %struct.iio_dev** %7, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %31 = icmp ne %struct.iio_dev* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %109

35:                                               ; preds = %26
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = call %struct.ms_ht_dev* @iio_priv(%struct.iio_dev* %36)
  store %struct.ms_ht_dev* %37, %struct.ms_ht_dev** %6, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %6, align 8
  %40 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %39, i32 0, i32 2
  store %struct.i2c_client* %38, %struct.i2c_client** %40, align 8
  %41 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %6, align 8
  %42 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.ms_ht_dev*, %struct.ms_ht_dev** %6, align 8
  %44 = getelementptr inbounds %struct.ms_ht_dev, %struct.ms_ht_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_init(i32* %44)
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 5
  store i32* @htu21_info, i32** %47, align 8
  %48 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32* %54, i32** %57, align 8
  %58 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MS8607, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %35
  %67 = load i8*, i8** @ms8607_channels, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @ms8607_channels, align 8
  %71 = call i8* @ARRAY_SIZE(i8* %70)
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %82

74:                                               ; preds = %35
  %75 = load i8*, i8** @htu21_channels, align 8
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @htu21_channels, align 8
  %79 = call i8* @ARRAY_SIZE(i8* %78)
  %80 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %81 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %85 = call i32 @i2c_set_clientdata(%struct.i2c_client* %83, %struct.iio_dev* %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* @HTU21_RESET, align 4
  %88 = call i32 @ms_sensors_reset(%struct.i2c_client* %86, i32 %87, i32 15000)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %109

93:                                               ; preds = %82
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = call i32 @ms_sensors_read_serial(%struct.i2c_client* %94, i32* %9)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %109

100:                                              ; preds = %93
  %101 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %102 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %101, i32 0, i32 0
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dev_info(i32* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %108 = call i32 @devm_iio_device_register(i32* %106, %struct.iio_dev* %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %100, %98, %91, %32, %20
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.ms_ht_dev* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ms_sensors_reset(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ms_sensors_read_serial(%struct.i2c_client*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
