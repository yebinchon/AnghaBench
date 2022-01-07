; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i8*, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mlx90614_data = type { i64, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@mlx90614_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found single sensor\00", align 1
@mlx90614_channels = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Found dual sensor\00", align 1
@MLX90614_AUTOSLEEP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mlx90614_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90614_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mlx90614_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %20, i32 24)
  store %struct.iio_dev* %21, %struct.iio_dev** %6, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %23 = icmp ne %struct.iio_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %105

27:                                               ; preds = %18
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = call %struct.mlx90614_data* @iio_priv(%struct.iio_dev* %28)
  store %struct.mlx90614_data* %29, %struct.mlx90614_data** %7, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.iio_dev* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.mlx90614_data*, %struct.mlx90614_data** %7, align 8
  %35 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %34, i32 0, i32 2
  store %struct.i2c_client* %33, %struct.i2c_client** %35, align 8
  %36 = load %struct.mlx90614_data*, %struct.mlx90614_data** %7, align 8
  %37 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i64 @mlx90614_probe_wakeup(%struct.i2c_client* %39)
  %41 = load %struct.mlx90614_data*, %struct.mlx90614_data** %7, align 8
  %42 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.mlx90614_data*, %struct.mlx90614_data** %7, align 8
  %44 = call i32 @mlx90614_wakeup(%struct.mlx90614_data* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 2
  store i32* @mlx90614_info, i32** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = call i32 @mlx90614_probe_num_ir_sensors(%struct.i2c_client* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %81 [
    i32 0, label %63
    i32 1, label %72
  ]

63:                                               ; preds = %27
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = call i32 @dev_dbg(i32* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %67 = load i8*, i8** @mlx90614_channels, align 8
  %68 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %69 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  store i32 2, i32* %71, align 8
  br label %83

72:                                               ; preds = %27
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i32 @dev_dbg(i32* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i8*, i8** @mlx90614_channels, align 8
  %77 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %80 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %79, i32 0, i32 0
  store i32 3, i32* %80, align 8
  br label %83

81:                                               ; preds = %27
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %105

83:                                               ; preds = %72, %63
  %84 = load %struct.mlx90614_data*, %struct.mlx90614_data** %7, align 8
  %85 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %83
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = load i32, i32* @MLX90614_AUTOSLEEP_DELAY, align 4
  %92 = call i32 @pm_runtime_set_autosuspend_delay(i32* %90, i32 %91)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = call i32 @pm_runtime_use_autosuspend(i32* %94)
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = call i32 @pm_runtime_set_active(i32* %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 0
  %101 = call i32 @pm_runtime_enable(i32* %100)
  br label %102

102:                                              ; preds = %88, %83
  %103 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %104 = call i32 @iio_device_register(%struct.iio_dev* %103)
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %102, %81, %24, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.mlx90614_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @mlx90614_probe_wakeup(%struct.i2c_client*) #1

declare dso_local i32 @mlx90614_wakeup(%struct.mlx90614_data*) #1

declare dso_local i32 @mlx90614_probe_num_ir_sensors(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
