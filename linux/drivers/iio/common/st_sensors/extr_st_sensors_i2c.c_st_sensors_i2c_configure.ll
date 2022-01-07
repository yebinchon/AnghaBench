; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_i2c.c_st_sensors_i2c_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_i2c.c_st_sensors_i2c_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.iio_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.i2c_client = type { i32, i32, i32 }
%struct.st_sensor_data = type { i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@st_sensors_i2c_regmap_multiread_bit_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@st_sensors_i2c_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register i2c regmap (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_i2c_configure(%struct.iio_dev* %0, %struct.i2c_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.st_sensor_data*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %8)
  store %struct.st_sensor_data* %9, %struct.st_sensor_data** %6, align 8
  %10 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %11 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.regmap_config* @st_sensors_i2c_regmap_multiread_bit_config, %struct.regmap_config** %7, align 8
  br label %18

17:                                               ; preds = %2
  store %struct.regmap_config* @st_sensors_i2c_regmap_config, %struct.regmap_config** %7, align 8
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %20 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %21 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %19, %struct.regmap_config* %20)
  %22 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %23 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %25 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 1
  %32 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %33 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  %36 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %38 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %18
  %42 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %43 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.iio_dev* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 1
  %47 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 1
  %57 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %58 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %63 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %41, %29
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
