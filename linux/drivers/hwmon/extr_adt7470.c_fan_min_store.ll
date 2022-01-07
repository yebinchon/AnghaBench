; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_fan_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_fan_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.adt7470_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fan_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.adt7470_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adt7470_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adt7470_data* %17, %struct.adt7470_data** %11, align 8
  %18 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %19 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtol(i8* %21, i32 10, i64* %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %57

30:                                               ; preds = %24
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @FAN_RPM_TO_PERIOD(i64 %31)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @clamp_val(i64 %33, i32 1, i32 65534)
  store i64 %34, i64* %13, align 8
  %35 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %36 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %40 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %43 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64 %38, i64* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %47 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %48 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ADT7470_REG_FAN_MIN(i64 %49)
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @adt7470_write_word_data(%struct.i2c_client* %46, i32 %50, i64 %51)
  %53 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %54 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %30, %27
  %58 = load i64, i64* %5, align 8
  ret i64 %58
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7470_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @FAN_RPM_TO_PERIOD(i64) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7470_write_word_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @ADT7470_REG_FAN_MIN(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
