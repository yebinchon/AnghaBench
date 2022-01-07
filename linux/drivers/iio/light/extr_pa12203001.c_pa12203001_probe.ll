; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_pa12203001.c_pa12203001_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.pa12203001_data = type { i32, i32, %struct.i2c_client* }
%struct.iio_dev = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@pa12203001_regmap_config = common dso_local global i32 0, align 4
@pa12203001_info = common dso_local global i32 0, align 4
@PA12203001_DRIVER_NAME = common dso_local global i32 0, align 4
@pa12203001_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@PA12203001_CHIP_ENABLE = common dso_local global i32 0, align 4
@PA12203001_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@PA12203001_CHIP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pa12203001_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa12203001_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pa12203001_data*, align 8
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
  br label %107

17:                                               ; preds = %2
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call %struct.pa12203001_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.pa12203001_data* %19, %struct.pa12203001_data** %6, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call i32 @i2c_set_clientdata(%struct.i2c_client* %20, %struct.iio_dev* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.pa12203001_data*, %struct.pa12203001_data** %6, align 8
  %25 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %24, i32 0, i32 2
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %26, i32* @pa12203001_regmap_config)
  %28 = load %struct.pa12203001_data*, %struct.pa12203001_data** %6, align 8
  %29 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pa12203001_data*, %struct.pa12203001_data** %6, align 8
  %31 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %17
  %36 = load %struct.pa12203001_data*, %struct.pa12203001_data** %6, align 8
  %37 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %17
  %41 = load %struct.pa12203001_data*, %struct.pa12203001_data** %6, align 8
  %42 = getelementptr inbounds %struct.pa12203001_data, %struct.pa12203001_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* %45, i32** %48, align 8
  %49 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %50 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %49, i32 0, i32 4
  store i32* @pa12203001_info, i32** %50, align 8
  %51 = load i32, i32* @PA12203001_DRIVER_NAME, align 4
  %52 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %53 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @pa12203001_channels, align 4
  %55 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %56 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @pa12203001_channels, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %60 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %62 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %65 = call i32 @pa12203001_init(%struct.iio_dev* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %40
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %107

70:                                               ; preds = %40
  %71 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %72 = load i32, i32* @PA12203001_CHIP_ENABLE, align 4
  %73 = call i32 @pa12203001_power_chip(%struct.iio_dev* %71, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %107

78:                                               ; preds = %70
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 @pm_runtime_set_active(i32* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %102

85:                                               ; preds = %78
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = call i32 @pm_runtime_enable(i32* %87)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* @PA12203001_SLEEP_DELAY_MS, align 4
  %92 = call i32 @pm_runtime_set_autosuspend_delay(i32* %90, i32 %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @pm_runtime_use_autosuspend(i32* %94)
  %96 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %97 = call i32 @iio_device_register(%struct.iio_dev* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  br label %102

101:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %107

102:                                              ; preds = %100, %84
  %103 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %104 = load i32, i32* @PA12203001_CHIP_DISABLE, align 4
  %105 = call i32 @pa12203001_power_chip(%struct.iio_dev* %103, i32 %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %101, %76, %68, %35, %14
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.pa12203001_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pa12203001_init(%struct.iio_dev*) #1

declare dso_local i32 @pa12203001_power_chip(%struct.iio_dev*, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
