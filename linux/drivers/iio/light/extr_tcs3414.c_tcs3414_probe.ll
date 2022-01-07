; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3414.c_tcs3414_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tcs3414_data = type { i32, %struct.i2c_client*, i32, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@tcs3414_info = common dso_local global i32 0, align 4
@TCS3414_DRV_NAME = common dso_local global i32 0, align 4
@tcs3414_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@TCS3414_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"TCS3404 found\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TCS3413/14/15/16 found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TCS3414_CONTROL_POWER = common dso_local global i32 0, align 4
@TCS3414_CONTROL = common dso_local global i32 0, align 4
@TCS3414_INTEG_12MS = common dso_local global i32 0, align 4
@TCS3414_TIMING = common dso_local global i32 0, align 4
@TCS3414_GAIN = common dso_local global i32 0, align 4
@tcs3414_trigger_handler = common dso_local global i32 0, align 4
@tcs3414_buffer_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tcs3414_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3414_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tcs3414_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 24)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp eq %struct.iio_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %133

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.tcs3414_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.tcs3414_data* %19, %struct.tcs3414_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %25 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* %27, i32** %30, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 4
  store i32* @tcs3414_info, i32** %32, align 8
  %33 = load i32, i32* @TCS3414_DRV_NAME, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @tcs3414_channels, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @tcs3414_channels, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %47 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %46, i32 0, i32 1
  %48 = load %struct.i2c_client*, %struct.i2c_client** %47, align 8
  %49 = load i32, i32* @TCS3414_ID, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %17
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %133

55:                                               ; preds = %17
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 240
  switch i32 %57, label %66 [
    i32 0, label %58
    i32 16, label %62
  ]

58:                                               ; preds = %55
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call i32 @dev_info(i32* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %69

62:                                               ; preds = %55
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @dev_info(i32* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %69

66:                                               ; preds = %55
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %133

69:                                               ; preds = %62, %58
  %70 = load i32, i32* @TCS3414_CONTROL_POWER, align 4
  %71 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %72 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %74 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %73, i32 0, i32 1
  %75 = load %struct.i2c_client*, %struct.i2c_client** %74, align 8
  %76 = load i32, i32* @TCS3414_CONTROL, align 4
  %77 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %78 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %75, i32 %76, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %133

85:                                               ; preds = %69
  %86 = load i32, i32* @TCS3414_INTEG_12MS, align 4
  %87 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %88 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %90 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %89, i32 0, i32 1
  %91 = load %struct.i2c_client*, %struct.i2c_client** %90, align 8
  %92 = load i32, i32* @TCS3414_TIMING, align 4
  %93 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %94 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %91, i32 %92, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %133

101:                                              ; preds = %85
  %102 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %103 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %102, i32 0, i32 1
  %104 = load %struct.i2c_client*, %struct.i2c_client** %103, align 8
  %105 = load i32, i32* @TCS3414_GAIN, align 4
  %106 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %104, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %133

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.tcs3414_data*, %struct.tcs3414_data** %6, align 8
  %114 = getelementptr inbounds %struct.tcs3414_data, %struct.tcs3414_data* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %116 = load i32, i32* @tcs3414_trigger_handler, align 4
  %117 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %115, i32* null, i32 %116, i32* @tcs3414_buffer_setup_ops)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %3, align 4
  br label %133

122:                                              ; preds = %111
  %123 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %124 = call i32 @iio_device_register(%struct.iio_dev* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %129

128:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %133

129:                                              ; preds = %127
  %130 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %131 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %130)
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %128, %120, %109, %99, %83, %66, %53, %14
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.tcs3414_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
