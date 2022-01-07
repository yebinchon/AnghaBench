; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_voltage_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_voltage_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.adt7475_data = type { i32**, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7475_VOLTAGE_COUNT = common dso_local global i64 0, align 8
@MIN = common dso_local global i64 0, align 8
@REG_VTT_MIN = common dso_local global i8 0, align 1
@REG_VTT_MAX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @voltage_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @voltage_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.adt7475_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.adt7475_data* %18, %struct.adt7475_data** %11, align 8
  %19 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %20 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %19, i32 0, i32 3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtol(i8* %22, i32 10, i64* %14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %107

28:                                               ; preds = %4
  %29 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %30 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %37 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @volt2reg(i64 %34, i64 %35, i32 %38)
  %40 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %41 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %44 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32*, i32** %42, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  store i32 %39, i32* %51, align 4
  %52 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %53 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ADT7475_VOLTAGE_COUNT, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %28
  %58 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %59 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MIN, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %65 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call zeroext i8 @VOLTAGE_MIN_REG(i64 %66)
  store i8 %67, i8* %13, align 1
  br label %73

68:                                               ; preds = %57
  %69 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %70 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call zeroext i8 @VOLTAGE_MAX_REG(i64 %71)
  store i8 %72, i8* %13, align 1
  br label %73

73:                                               ; preds = %68, %63
  br label %85

74:                                               ; preds = %28
  %75 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %76 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MIN, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i8, i8* @REG_VTT_MIN, align 1
  store i8 %81, i8* %13, align 1
  br label %84

82:                                               ; preds = %74
  %83 = load i8, i8* @REG_VTT_MAX, align 1
  store i8 %83, i8* %13, align 1
  br label %84

84:                                               ; preds = %82, %80
  br label %85

85:                                               ; preds = %84, %73
  %86 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %87 = load i8, i8* %13, align 1
  %88 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %89 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %92 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32*, i32** %90, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %97 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 2
  %102 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %86, i8 zeroext %87, i32 %101)
  %103 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %104 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i64, i64* %9, align 8
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %85, %25
  %108 = load i64, i64* %5, align 8
  ret i64 %108
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @volt2reg(i64, i64, i32) #1

declare dso_local zeroext i8 @VOLTAGE_MIN_REG(i64) #1

declare dso_local zeroext i8 @VOLTAGE_MAX_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
