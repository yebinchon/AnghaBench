; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl4531.c_tsl4531_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl4531.c_tsl4531_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tsl4531_data = type { %struct.i2c_client*, i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no TSL4531 sensor\0A\00", align 1
@TSL4531_CONTROL = common dso_local global i32 0, align 4
@TSL4531_MODE_NORMAL = common dso_local global i32 0, align 4
@TSL4531_CONFIG = common dso_local global i32 0, align 4
@TSL4531_TCNTRL_400MS = common dso_local global i32 0, align 4
@tsl4531_info = common dso_local global i32 0, align 4
@tsl4531_channels = common dso_local global i32 0, align 4
@TSL4531_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tsl4531_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl4531_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tsl4531_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 16)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.tsl4531_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.tsl4531_data* %19, %struct.tsl4531_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.tsl4531_data*, %struct.tsl4531_data** %6, align 8
  %25 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %24, i32 0, i32 0
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.tsl4531_data*, %struct.tsl4531_data** %6, align 8
  %27 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %26, i32 0, i32 1
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = call i32 @tsl4531_check_id(%struct.i2c_client* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 0
  %36 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %83

38:                                               ; preds = %17
  %39 = load %struct.tsl4531_data*, %struct.tsl4531_data** %6, align 8
  %40 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %39, i32 0, i32 0
  %41 = load %struct.i2c_client*, %struct.i2c_client** %40, align 8
  %42 = load i32, i32* @TSL4531_CONTROL, align 4
  %43 = load i32, i32* @TSL4531_MODE_NORMAL, align 4
  %44 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %38
  %50 = load %struct.tsl4531_data*, %struct.tsl4531_data** %6, align 8
  %51 = getelementptr inbounds %struct.tsl4531_data, %struct.tsl4531_data* %50, i32 0, i32 0
  %52 = load %struct.i2c_client*, %struct.i2c_client** %51, align 8
  %53 = load i32, i32* @TSL4531_CONFIG, align 4
  %54 = load i32, i32* @TSL4531_TCNTRL_400MS, align 4
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %52, i32 %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %83

60:                                               ; preds = %49
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32* %62, i32** %65, align 8
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 4
  store i32* @tsl4531_info, i32** %67, align 8
  %68 = load i32, i32* @tsl4531_channels, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @tsl4531_channels, align 4
  %72 = call i32 @ARRAY_SIZE(i32 %71)
  %73 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @TSL4531_DRV_NAME, align 4
  %76 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %77 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %79 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %82 = call i32 @iio_device_register(%struct.iio_dev* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %60, %58, %47, %33, %14
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.tsl4531_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tsl4531_check_id(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
