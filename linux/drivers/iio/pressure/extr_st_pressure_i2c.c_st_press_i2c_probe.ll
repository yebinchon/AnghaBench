; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_i2c.c_st_press_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_st_pressure_i2c.c_st_press_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.st_sensor_settings = type { i32 }
%struct.st_sensor_data = type { %struct.st_sensor_settings* }
%struct.iio_dev = type { i32 }

@st_press_of_match = common dso_local global i32 0, align 4
@ST_PRESS_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@st_press_id_table = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"device name %s not recognized.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @st_press_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_press_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.st_sensor_settings*, align 8
  %7 = alloca %struct.st_sensor_data*, align 8
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* @st_press_of_match, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @st_sensors_of_name_probe(%struct.TYPE_7__* %17, i32 %18, i32 %21, i32 4)
  br label %60

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i64 @ACPI_HANDLE(%struct.TYPE_7__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @st_sensors_match_acpi_device(%struct.TYPE_7__* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ST_PRESS_MAX, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %28
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %106

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @st_press_id_table, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlcpy(i32 %44, i32 %50, i32 4)
  br label %59

52:                                               ; preds = %23
  %53 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %54 = icmp ne %struct.i2c_device_id* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %106

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %15
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.st_sensor_settings* @st_press_get_settings(i32 %63)
  store %struct.st_sensor_settings* %64, %struct.st_sensor_settings** %6, align 8
  %65 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %6, align 8
  %66 = icmp ne %struct.st_sensor_settings* %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %60
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(%struct.TYPE_7__* %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %106

76:                                               ; preds = %60
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__* %78, i32 8)
  store %struct.iio_dev* %79, %struct.iio_dev** %8, align 8
  %80 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %81 = icmp ne %struct.iio_dev* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %106

85:                                               ; preds = %76
  %86 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %87 = call %struct.st_sensor_data* @iio_priv(%struct.iio_dev* %86)
  store %struct.st_sensor_data* %87, %struct.st_sensor_data** %7, align 8
  %88 = load %struct.st_sensor_settings*, %struct.st_sensor_settings** %6, align 8
  %89 = load %struct.st_sensor_data*, %struct.st_sensor_data** %7, align 8
  %90 = getelementptr inbounds %struct.st_sensor_data, %struct.st_sensor_data* %89, i32 0, i32 0
  store %struct.st_sensor_settings* %88, %struct.st_sensor_settings** %90, align 8
  %91 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = call i32 @st_sensors_i2c_configure(%struct.iio_dev* %91, %struct.i2c_client* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %106

98:                                               ; preds = %85
  %99 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %100 = call i32 @st_press_common_probe(%struct.iio_dev* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %103, %96, %82, %67, %55, %38
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @st_sensors_of_name_probe(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i64 @ACPI_HANDLE(%struct.TYPE_7__*) #1

declare dso_local i32 @st_sensors_match_acpi_device(%struct.TYPE_7__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.st_sensor_settings* @st_press_get_settings(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.st_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_i2c_configure(%struct.iio_dev*, %struct.i2c_client*) #1

declare dso_local i32 @st_press_common_probe(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
