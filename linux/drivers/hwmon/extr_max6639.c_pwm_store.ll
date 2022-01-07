; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max6639.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.max6639_data = type { i32, i64*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.max6639_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.max6639_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.max6639_data* %18, %struct.max6639_data** %11, align 8
  %19 = load %struct.max6639_data*, %struct.max6639_data** %11, align 8
  %20 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtoul(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %63

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @clamp_val(i64 %29, i32 0, i32 255)
  store i64 %30, i64* %13, align 8
  %31 = load %struct.max6639_data*, %struct.max6639_data** %11, align 8
  %32 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i64, i64* %13, align 8
  %35 = mul i64 %34, 120
  %36 = udiv i64 %35, 255
  %37 = load %struct.max6639_data*, %struct.max6639_data** %11, align 8
  %38 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  store i64 %36, i64* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %45 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %46 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @MAX6639_REG_TARGTDUTY(i64 %47)
  %49 = load %struct.max6639_data*, %struct.max6639_data** %11, align 8
  %50 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %53 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %44, i32 %48, i64 %56)
  %58 = load %struct.max6639_data*, %struct.max6639_data** %11, align 8
  %59 = getelementptr inbounds %struct.max6639_data, %struct.max6639_data* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %28, %26
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.max6639_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @MAX6639_REG_TARGTDUTY(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
