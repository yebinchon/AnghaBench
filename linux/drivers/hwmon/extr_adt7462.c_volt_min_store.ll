; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_volt_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_volt_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.adt7462_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @volt_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @volt_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.adt7462_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.adt7462_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.adt7462_data* %18, %struct.adt7462_data** %11, align 8
  %19 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %20 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %12, align 8
  %22 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @voltage_multiplier(%struct.adt7462_data* %22, i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @kstrtol(i8* %27, i32 10, i64* %14)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %4
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %5, align 8
  br label %70

36:                                               ; preds = %30
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %13, align 4
  %39 = mul nsw i32 255, %38
  %40 = sdiv i32 %39, 1000
  %41 = call i64 @clamp_val(i64 %37, i32 0, i32 %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = mul nsw i64 %42, 1000
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i64 @DIV_ROUND_CLOSEST(i64 %44, i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %48 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load i64, i64* %14, align 8
  %51 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %52 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %55 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64 %50, i64* %57, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %59 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %60 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %61 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ADT7462_REG_VOLT_MIN(%struct.adt7462_data* %59, i64 %62)
  %64 = load i64, i64* %14, align 8
  %65 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 %63, i64 %64)
  %66 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %67 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %36, %33
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7462_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @voltage_multiplier(%struct.adt7462_data*, i64) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @ADT7462_REG_VOLT_MIN(%struct.adt7462_data*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
