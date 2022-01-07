; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_sps30.c_sps30_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.sps30_state = type { i32, i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@sps30_info = common dso_local global i32 0, align 4
@sps30_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@sps30_scan_masks = common dso_local global i32 0, align 4
@sps30_crc8_table = common dso_local global i32 0, align 4
@SPS30_CRC8_POLYNOMIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to reset device\0A\00", align 1
@SPS30_READ_SERIAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to read serial number\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"serial number: %s\0A\00", align 1
@sps30_stop_meas = common dso_local global i32 0, align 4
@sps30_trigger_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @sps30_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sps30_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.sps30_state*, align 8
  %6 = alloca [32 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_I2C, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %119

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %19, i32 16)
  store %struct.iio_dev* %20, %struct.iio_dev** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %22 = icmp ne %struct.iio_dev* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %119

26:                                               ; preds = %17
  %27 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %28 = call %struct.sps30_state* @iio_priv(%struct.iio_dev* %27)
  store %struct.sps30_state* %28, %struct.sps30_state** %5, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.iio_dev* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %33 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %34 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %33, i32 0, i32 2
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load i32, i32* @RESET, align 4
  %36 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %37 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* %39, i32** %42, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 5
  store i32* @sps30_info, i32** %44, align 8
  %45 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @sps30_channels, align 4
  %51 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @sps30_channels, align 4
  %54 = call i32 @ARRAY_SIZE(i32 %53)
  %55 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @sps30_scan_masks, align 4
  %61 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %62 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %64 = getelementptr inbounds %struct.sps30_state, %struct.sps30_state* %63, i32 0, i32 0
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load i32, i32* @sps30_crc8_table, align 4
  %67 = load i32, i32* @SPS30_CRC8_POLYNOMIAL, align 4
  %68 = call i32 @crc8_populate_msb(i32 %66, i32 %67)
  %69 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %70 = call i32 @sps30_do_cmd_reset(%struct.sps30_state* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %26
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %119

78:                                               ; preds = %26
  %79 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %80 = load i32, i32* @SPS30_READ_SERIAL, align 4
  %81 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %82 = call i32 @sps30_do_cmd(%struct.sps30_state* %79, i32 %80, i32* %81, i32 128)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %2, align 4
  br label %119

90:                                               ; preds = %78
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %94 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %93)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* @sps30_stop_meas, align 4
  %98 = load %struct.sps30_state*, %struct.sps30_state** %5, align 8
  %99 = call i32 @devm_add_action_or_reset(i32* %96, i32 %97, %struct.sps30_state* %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %2, align 4
  br label %119

104:                                              ; preds = %90
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %108 = load i32, i32* @sps30_trigger_handler, align 4
  %109 = call i32 @devm_iio_triggered_buffer_setup(i32* %106, %struct.iio_dev* %107, i32* null, i32 %108, i32* null)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %119

114:                                              ; preds = %104
  %115 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %118 = call i32 @devm_iio_device_register(i32* %116, %struct.iio_dev* %117)
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %112, %102, %85, %73, %23, %14
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.sps30_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @crc8_populate_msb(i32, i32) #1

declare dso_local i32 @sps30_do_cmd_reset(%struct.sps30_state*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sps30_do_cmd(%struct.sps30_state*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.sps30_state*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
