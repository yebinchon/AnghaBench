; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_mb1232.c_mb1232_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_mb1232.c_mb1232_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.mb1232_data = type { i32, i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mb1232_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mb1232_channels = common dso_local global i32 0, align 4
@mb1232_handle_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"request_irq: %d\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@mb1232_trigger_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"setup of iio triggered buffer failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mb1232_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb1232_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mb1232_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %16 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %116

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %9, align 8
  %25 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %24, i32 24)
  store %struct.iio_dev* %25, %struct.iio_dev** %6, align 8
  %26 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %27 = icmp ne %struct.iio_dev* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %116

31:                                               ; preds = %23
  %32 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %33 = call %struct.mb1232_data* @iio_priv(%struct.iio_dev* %32)
  store %struct.mb1232_data* %33, %struct.mb1232_data** %7, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.iio_dev* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %39 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %38, i32 0, i32 3
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 5
  store i32* @mb1232_info, i32** %41, align 8
  %42 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %9, align 8
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.device* %47, %struct.device** %50, align 8
  %51 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @mb1232_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @mb1232_channels, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %62 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %61, i32 0, i32 2
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %65 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %64, i32 0, i32 1
  %66 = call i32 @init_completion(i32* %65)
  %67 = load %struct.device*, %struct.device** %9, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @irq_of_parse_and_map(i32 %69, i32 0)
  %71 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %72 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %74 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %31
  %78 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %79 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %78, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  br label %100

80:                                               ; preds = %31
  %81 = load %struct.device*, %struct.device** %9, align 8
  %82 = load %struct.mb1232_data*, %struct.mb1232_data** %7, align 8
  %83 = getelementptr inbounds %struct.mb1232_data, %struct.mb1232_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @mb1232_handle_irq, align 4
  %86 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %87 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %88 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %91 = call i32 @devm_request_irq(%struct.device* %81, i32 %84, i32 %85, i32 %86, i32 %89, %struct.iio_dev* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %80
  %95 = load %struct.device*, %struct.device** %9, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %3, align 4
  br label %116

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %77
  %101 = load %struct.device*, %struct.device** %9, align 8
  %102 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %103 = load i32, i32* @iio_pollfunc_store_time, align 4
  %104 = load i32, i32* @mb1232_trigger_handler, align 4
  %105 = call i32 @devm_iio_triggered_buffer_setup(%struct.device* %101, %struct.iio_dev* %102, i32 %103, i32 %104, i32* null)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %100
  %109 = load %struct.device*, %struct.device** %9, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  br label %116

112:                                              ; preds = %100
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %115 = call i32 @devm_iio_device_register(%struct.device* %113, %struct.iio_dev* %114)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %108, %94, %28, %20
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.mb1232_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @irq_of_parse_and_map(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.device*, %struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
