; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29125.c_isl29125_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.isl29125_data = type { i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@isl29125_info = common dso_local global i32 0, align 4
@ISL29125_DRV_NAME = common dso_local global i32 0, align 4
@isl29125_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ISL29125_DEVICE_ID = common dso_local global i32 0, align 4
@ISL29125_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ISL29125_MODE_PD = common dso_local global i32 0, align 4
@ISL29125_MODE_RANGE = common dso_local global i32 0, align 4
@ISL29125_CONF1 = common dso_local global i32 0, align 4
@ISL29125_STATUS = common dso_local global i32 0, align 4
@isl29125_trigger_handler = common dso_local global i32 0, align 4
@isl29125_buffer_setup_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @isl29125_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29125_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.isl29125_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp eq %struct.iio_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %109

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.isl29125_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.isl29125_data* %19, %struct.isl29125_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.isl29125_data*, %struct.isl29125_data** %6, align 8
  %25 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %24, i32 0, i32 1
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* %27, i32** %30, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %31, i32 0, i32 4
  store i32* @isl29125_info, i32** %32, align 8
  %33 = load i32, i32* @ISL29125_DRV_NAME, align 4
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @isl29125_channels, align 4
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @isl29125_channels, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.isl29125_data*, %struct.isl29125_data** %6, align 8
  %47 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %46, i32 0, i32 1
  %48 = load %struct.i2c_client*, %struct.i2c_client** %47, align 8
  %49 = load i32, i32* @ISL29125_DEVICE_ID, align 4
  %50 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %17
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %109

55:                                               ; preds = %17
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ISL29125_ID, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %109

62:                                               ; preds = %55
  %63 = load i32, i32* @ISL29125_MODE_PD, align 4
  %64 = load i32, i32* @ISL29125_MODE_RANGE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.isl29125_data*, %struct.isl29125_data** %6, align 8
  %67 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.isl29125_data*, %struct.isl29125_data** %6, align 8
  %69 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %68, i32 0, i32 1
  %70 = load %struct.i2c_client*, %struct.i2c_client** %69, align 8
  %71 = load i32, i32* @ISL29125_CONF1, align 4
  %72 = load %struct.isl29125_data*, %struct.isl29125_data** %6, align 8
  %73 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %70, i32 %71, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %109

80:                                               ; preds = %62
  %81 = load %struct.isl29125_data*, %struct.isl29125_data** %6, align 8
  %82 = getelementptr inbounds %struct.isl29125_data, %struct.isl29125_data* %81, i32 0, i32 1
  %83 = load %struct.i2c_client*, %struct.i2c_client** %82, align 8
  %84 = load i32, i32* @ISL29125_STATUS, align 4
  %85 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %83, i32 %84, i32 0)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %109

90:                                               ; preds = %80
  %91 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %92 = load i32, i32* @isl29125_trigger_handler, align 4
  %93 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %91, i32* null, i32 %92, i32* @isl29125_buffer_setup_ops)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %109

98:                                               ; preds = %90
  %99 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %100 = call i32 @iio_device_register(%struct.iio_dev* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %105

104:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %109

105:                                              ; preds = %103
  %106 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %107 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %104, %96, %88, %78, %59, %53, %14
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.isl29125_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

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
