; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hdc100x.c_hdc100x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.hdc100x_data = type { i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@hdc100x_info = common dso_local global i32 0, align 4
@hdc100x_channels = common dso_local global i32 0, align 4
@hdc100x_scan_masks = common dso_local global i32 0, align 4
@hdc100x_int_time = common dso_local global i32** null, align 8
@HDC100X_REG_CONFIG_ACQ_MODE = common dso_local global i32 0, align 4
@hdc100x_trigger_handler = common dso_local global i32 0, align 4
@hdc_buffer_setup_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @hdc100x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdc100x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.hdc100x_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2C_FUNC_I2C, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(i32 %11, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %102

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %24, i32 16)
  store %struct.iio_dev* %25, %struct.iio_dev** %6, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = icmp ne %struct.iio_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %102

31:                                               ; preds = %22
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = call %struct.hdc100x_data* @iio_priv(%struct.iio_dev* %32)
  store %struct.hdc100x_data* %33, %struct.hdc100x_data** %7, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.iio_dev* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %39 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %38, i32 0, i32 1
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %41 = getelementptr inbounds %struct.hdc100x_data, %struct.hdc100x_data* %40, i32 0, i32 0
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @dev_name(i32* %49)
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %54 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %55 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 3
  store i32* @hdc100x_info, i32** %57, align 8
  %58 = load i32, i32* @hdc100x_channels, align 4
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @hdc100x_channels, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @hdc100x_scan_masks, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %69 = load i32**, i32*** @hdc100x_int_time, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hdc100x_set_it_time(%struct.hdc100x_data* %68, i32 0, i32 %73)
  %75 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %76 = load i32**, i32*** @hdc100x_int_time, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hdc100x_set_it_time(%struct.hdc100x_data* %75, i32 1, i32 %80)
  %82 = load %struct.hdc100x_data*, %struct.hdc100x_data** %7, align 8
  %83 = load i32, i32* @HDC100X_REG_CONFIG_ACQ_MODE, align 4
  %84 = call i32 @hdc100x_update_config(%struct.hdc100x_data* %82, i32 %83, i32 0)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %88 = load i32, i32* @hdc100x_trigger_handler, align 4
  %89 = call i32 @devm_iio_triggered_buffer_setup(i32* %86, %struct.iio_dev* %87, i32* null, i32 %88, i32* @hdc_buffer_setup_ops)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %31
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %102

97:                                               ; preds = %31
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %101 = call i32 @devm_iio_device_register(i32* %99, %struct.iio_dev* %100)
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %97, %92, %28, %19
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.hdc100x_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @hdc100x_set_it_time(%struct.hdc100x_data*, i32, i32) #1

declare dso_local i32 @hdc100x_update_config(%struct.hdc100x_data*, i32, i32) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
