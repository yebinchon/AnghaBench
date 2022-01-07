; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.zopt2201_data = type { i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ZOPT2201_PART_ID = common dso_local global i32 0, align 4
@ZOPT2201_PART_NUMBER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zopt2201_info = common dso_local global i32 0, align 4
@zopt2201_channels = common dso_local global i32 0, align 4
@ZOPT2201_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ZOPT2201_MEAS_FREQ_100MS = common dso_local global i32 0, align 4
@ZOPT2201_MEAS_RES_18BIT = common dso_local global i32 0, align 4
@ZOPT2201_LS_GAIN_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @zopt2201_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zopt2201_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.zopt2201_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load i32, i32* @ZOPT2201_PART_ID, align 4
  %21 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %97

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ZOPT2201_PART_NUMBER, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %97

33:                                               ; preds = %26
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %35, i32 16)
  store %struct.iio_dev* %36, %struct.iio_dev** %7, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = icmp ne %struct.iio_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %97

42:                                               ; preds = %33
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = call %struct.zopt2201_data* @iio_priv(%struct.iio_dev* %43)
  store %struct.zopt2201_data* %44, %struct.zopt2201_data** %6, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = call i32 @i2c_set_clientdata(%struct.i2c_client* %45, %struct.iio_dev* %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load %struct.zopt2201_data*, %struct.zopt2201_data** %6, align 8
  %50 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %49, i32 0, i32 2
  store %struct.i2c_client* %48, %struct.i2c_client** %50, align 8
  %51 = load %struct.zopt2201_data*, %struct.zopt2201_data** %6, align 8
  %52 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_init(i32* %52)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 4
  store i32* @zopt2201_info, i32** %60, align 8
  %61 = load i32, i32* @zopt2201_channels, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @zopt2201_channels, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @ZOPT2201_DRV_NAME, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @ZOPT2201_MEAS_FREQ_100MS, align 4
  %75 = load %struct.zopt2201_data*, %struct.zopt2201_data** %6, align 8
  %76 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.zopt2201_data*, %struct.zopt2201_data** %6, align 8
  %78 = load i32, i32* @ZOPT2201_MEAS_RES_18BIT, align 4
  %79 = call i32 @zopt2201_set_resolution(%struct.zopt2201_data* %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %42
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %97

84:                                               ; preds = %42
  %85 = load %struct.zopt2201_data*, %struct.zopt2201_data** %6, align 8
  %86 = load i32, i32* @ZOPT2201_LS_GAIN_3, align 4
  %87 = call i32 @zopt2201_set_gain(%struct.zopt2201_data* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %97

92:                                               ; preds = %84
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %96 = call i32 @devm_iio_device_register(i32* %94, %struct.iio_dev* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %90, %82, %39, %30, %24, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.zopt2201_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @zopt2201_set_resolution(%struct.zopt2201_data*, i32) #1

declare dso_local i32 @zopt2201_set_gain(%struct.zopt2201_data*, i32) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
