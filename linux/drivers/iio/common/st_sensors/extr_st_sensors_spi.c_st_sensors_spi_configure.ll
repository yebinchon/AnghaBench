; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_spi.c_st_sensors_spi_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/st_sensors/extr_st_sensors_spi.c_st_sensors_spi_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.iio_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.spi_device = type { i32, i32, i32 }
%struct.st_sensor_data = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@st_sensors_spi_regmap_multiread_bit_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@st_sensors_spi_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register spi regmap (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_sensors_spi_configure(%struct.iio_dev* %0, %struct.spi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.st_sensor_data*, align 8
  %7 = alloca %struct.regmap_config*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.st_sensor_data* %10, %struct.st_sensor_data** %6, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %12 = call i64 @st_sensors_is_spi_3_wire(%struct.spi_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %16 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %17 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @st_sensors_configure_spi_3_wire(%struct.spi_device* %15, %struct.TYPE_4__* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %80

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %27 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store %struct.regmap_config* @st_sensors_spi_regmap_multiread_bit_config, %struct.regmap_config** %7, align 8
  br label %34

33:                                               ; preds = %25
  store %struct.regmap_config* @st_sensors_spi_regmap_config, %struct.regmap_config** %7, align 8
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %36 = load %struct.regmap_config*, %struct.regmap_config** %7, align 8
  %37 = call i32 @devm_regmap_init_spi(%struct.spi_device* %35, %struct.regmap_config* %36)
  %38 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %39 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %41 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %34
  %46 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 1
  %48 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %49 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  %52 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %54 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @PTR_ERR(i32 %55)
  store i32 %56, i32* %3, align 4
  br label %80

57:                                               ; preds = %34
  %58 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %59 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %60 = call i32 @spi_set_drvdata(%struct.spi_device* %58, %struct.iio_dev* %59)
  %61 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %62 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %61, i32 0, i32 1
  %63 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32* %62, i32** %65, align 8
  %66 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 1
  %73 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %74 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %73, i32 0, i32 1
  store i32* %72, i32** %74, align 8
  %75 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %76 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.st_sensor_data*, %struct.st_sensor_data** %6, align 8
  %79 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %57, %45, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @st_sensors_is_spi_3_wire(%struct.spi_device*) #1

declare dso_local i32 @st_sensors_configure_spi_3_wire(%struct.spi_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, %struct.regmap_config*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
