; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_srf08.c_srf08_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32, i64 }
%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.srf08_data = type { i32, %struct.TYPE_6__*, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_WORD_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@srf02_chip_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@srf02_info = common dso_local global i32 0, align 4
@srf08_chip_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@srf08_info = common dso_local global i32 0, align 4
@srf10_chip_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@srf08_channels = common dso_local global i32 0, align 4
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@srf08_trigger_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"setup of iio triggered buffer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @srf08_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srf08_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.srf08_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_WORD_DATA, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(i32 %11, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %149

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %24, i32 32)
  store %struct.iio_dev* %25, %struct.iio_dev** %6, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = icmp ne %struct.iio_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %149

31:                                               ; preds = %22
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = call %struct.srf08_data* @iio_priv(%struct.iio_dev* %32)
  store %struct.srf08_data* %33, %struct.srf08_data** %7, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.iio_dev* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %39 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %38, i32 0, i32 3
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %45 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %47 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %64 [
    i32 130, label %49
    i32 129, label %54
    i32 128, label %59
  ]

49:                                               ; preds = %31
  %50 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %51 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %50, i32 0, i32 1
  store %struct.TYPE_6__* @srf02_chip_info, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 5
  store i32* @srf02_info, i32** %53, align 8
  br label %67

54:                                               ; preds = %31
  %55 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %56 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %55, i32 0, i32 1
  store %struct.TYPE_6__* @srf08_chip_info, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %58 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %57, i32 0, i32 5
  store i32* @srf08_info, i32** %58, align 8
  br label %67

59:                                               ; preds = %31
  %60 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %61 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %60, i32 0, i32 1
  store %struct.TYPE_6__* @srf10_chip_info, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 5
  store i32* @srf08_info, i32** %63, align 8
  br label %67

64:                                               ; preds = %31
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %149

67:                                               ; preds = %59, %54, %49
  %68 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %69 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %72 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %79 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @srf08_channels, align 4
  %82 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @srf08_channels, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %89 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %88, i32 0, i32 2
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %94 = load i32, i32* @iio_pollfunc_store_time, align 4
  %95 = load i32, i32* @srf08_trigger_handler, align 4
  %96 = call i32 @devm_iio_triggered_buffer_setup(i32* %92, %struct.iio_dev* %93, i32 %94, i32 %95, i32* null)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %67
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = call i32 @dev_err(i32* %101, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %149

104:                                              ; preds = %67
  %105 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %106 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %104
  %112 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %113 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %114 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @srf08_write_range_mm(%struct.srf08_data* %112, i64 %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %3, align 4
  br label %149

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %104
  %125 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %126 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %133 = load %struct.srf08_data*, %struct.srf08_data** %7, align 8
  %134 = getelementptr inbounds %struct.srf08_data, %struct.srf08_data* %133, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @srf08_write_sensitivity(%struct.srf08_data* %132, i64 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  br label %149

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %124
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %148 = call i32 @devm_iio_device_register(i32* %146, %struct.iio_dev* %147)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %141, %121, %99, %64, %28, %19
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.srf08_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @srf08_write_range_mm(%struct.srf08_data*, i64) #1

declare dso_local i32 @srf08_write_sensitivity(%struct.srf08_data*, i64) #1

declare dso_local i32 @devm_iio_device_register(i32*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
