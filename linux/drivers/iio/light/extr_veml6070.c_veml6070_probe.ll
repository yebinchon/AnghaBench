; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_veml6070.c_veml6070_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_veml6070.c_veml6070_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.veml6070_data = type { i32, i32, %struct.i2c_client*, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@veml6070_info = common dso_local global i32 0, align 4
@veml6070_channels = common dso_local global i32 0, align 4
@VEML6070_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@VEML6070_ADDR_DATA_LSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"i2c device for second chip address failed\0A\00", align 1
@VEML6070_IT_10 = common dso_local global i32 0, align 4
@VEML6070_COMMAND_RSRVD = common dso_local global i32 0, align 4
@VEML6070_COMMAND_SD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @veml6070_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veml6070_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.veml6070_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 24)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.veml6070_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.veml6070_data* %19, %struct.veml6070_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %25 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %24, i32 0, i32 2
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %27 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %26, i32 0, i32 3
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 4
  store i32* @veml6070_info, i32** %35, align 8
  %36 = load i32, i32* @veml6070_channels, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @veml6070_channels, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @VEML6070_DRV_NAME, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @VEML6070_ADDR_DATA_LSB, align 4
  %53 = call i32 @i2c_new_dummy_device(i32 %51, i32 %52)
  %54 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %55 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %57 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @IS_ERR(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %17
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %66 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %3, align 4
  br label %101

69:                                               ; preds = %17
  %70 = load i32, i32* @VEML6070_IT_10, align 4
  %71 = load i32, i32* @VEML6070_COMMAND_RSRVD, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @VEML6070_COMMAND_SD, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %76 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %78 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %77, i32 0, i32 2
  %79 = load %struct.i2c_client*, %struct.i2c_client** %78, align 8
  %80 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %81 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %79, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  br label %95

87:                                               ; preds = %69
  %88 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %89 = call i32 @iio_device_register(%struct.iio_dev* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %95

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %101

95:                                               ; preds = %92, %86
  %96 = load %struct.veml6070_data*, %struct.veml6070_data** %6, align 8
  %97 = getelementptr inbounds %struct.veml6070_data, %struct.veml6070_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @i2c_unregister_device(i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %93, %61, %14
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.veml6070_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_new_dummy_device(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
