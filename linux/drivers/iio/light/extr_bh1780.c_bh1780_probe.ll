; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1780.c_bh1780_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_bh1780.c_bh1780_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.bh1780_data = type { %struct.i2c_client* }
%struct.iio_dev = type { i8*, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BH1780_REG_CONTROL = common dso_local global i32 0, align 4
@BH1780_PON = common dso_local global i32 0, align 4
@BH1780_PON_DELAY = common dso_local global i32 0, align 4
@BH1780_REG_PARTID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Ambient Light Sensor, Rev : %lu\0A\00", align 1
@BH1780_REVMASK = common dso_local global i32 0, align 4
@bh1780_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bh1780\00", align 1
@bh1780_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bh1780_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bh1780_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bh1780_data*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.iio_dev*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %8, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %113

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %22, i32 8)
  store %struct.iio_dev* %23, %struct.iio_dev** %9, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %25 = icmp ne %struct.iio_dev* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %113

29:                                               ; preds = %20
  %30 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %31 = call %struct.bh1780_data* @iio_priv(%struct.iio_dev* %30)
  store %struct.bh1780_data* %31, %struct.bh1780_data** %7, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.bh1780_data*, %struct.bh1780_data** %7, align 8
  %34 = getelementptr inbounds %struct.bh1780_data, %struct.bh1780_data* %33, i32 0, i32 0
  store %struct.i2c_client* %32, %struct.i2c_client** %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %37 = call i32 @i2c_set_clientdata(%struct.i2c_client* %35, %struct.iio_dev* %36)
  %38 = load %struct.bh1780_data*, %struct.bh1780_data** %7, align 8
  %39 = load i32, i32* @BH1780_REG_CONTROL, align 4
  %40 = load i32, i32* @BH1780_PON, align 4
  %41 = call i32 @bh1780_write(%struct.bh1780_data* %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %113

46:                                               ; preds = %29
  %47 = load i32, i32* @BH1780_PON_DELAY, align 4
  %48 = call i32 @msleep(i32 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @pm_runtime_get_noresume(i32* %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 @pm_runtime_set_active(i32* %53)
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_enable(i32* %56)
  %58 = load %struct.bh1780_data*, %struct.bh1780_data** %7, align 8
  %59 = load i32, i32* @BH1780_REG_PARTID, align 4
  %60 = call i32 @bh1780_read(%struct.bh1780_data* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  br label %105

64:                                               ; preds = %46
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BH1780_REVMASK, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = call i32 @pm_runtime_set_autosuspend_delay(i32* %72, i32 5000)
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = call i32 @pm_runtime_use_autosuspend(i32* %75)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call i32 @pm_runtime_put(i32* %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32* %81, i32** %84, align 8
  %85 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %86 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %85, i32 0, i32 4
  store i32* @bh1780_info, i32** %86, align 8
  %87 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %88 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %87, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %88, align 8
  %89 = load i32, i32* @bh1780_channels, align 4
  %90 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %91 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @bh1780_channels, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %95 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %97 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %98 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %100 = call i32 @iio_device_register(%struct.iio_dev* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %64
  br label %105

104:                                              ; preds = %64
  store i32 0, i32* %3, align 4
  br label %113

105:                                              ; preds = %103, %63
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = call i32 @pm_runtime_put_noidle(i32* %107)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 @pm_runtime_disable(i32* %110)
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %104, %44, %26, %17
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.bh1780_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @bh1780_write(%struct.bh1780_data*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @bh1780_read(%struct.bh1780_data*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
