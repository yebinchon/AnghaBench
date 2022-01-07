; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm_auto_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm_auto_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.adt7470_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_auto_temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_auto_temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.adt7470_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.adt7470_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.adt7470_data* %19, %struct.adt7470_data** %11, align 8
  %20 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %21 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %20, i32 0, i32 2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %12, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ADT7470_REG_PWM_AUTO_TEMP(i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @kstrtol(i8* %27, i32 10, i64* %14)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %88

33:                                               ; preds = %4
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @cvt_auto_temp(i64 %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* %14, align 8
  store i64 %39, i64* %5, align 8
  br label %88

40:                                               ; preds = %33
  %41 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %42 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %46 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 %44, i64* %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %56 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = urem i64 %57, 2
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %40
  %61 = load i32, i32* %15, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %15, align 4
  %63 = load i64, i64* %14, align 8
  %64 = shl i64 %63, 4
  %65 = and i64 %64, 240
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = or i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %15, align 4
  br label %79

70:                                               ; preds = %40
  %71 = load i32, i32* %15, align 4
  %72 = and i32 %71, 240
  store i32 %72, i32* %15, align 4
  %73 = load i64, i64* %14, align 8
  %74 = and i64 %73, 15
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = or i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %15, align 4
  br label %79

79:                                               ; preds = %70, %60
  %80 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %80, i32 %81, i32 %82)
  %84 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %85 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %79, %38, %30
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7470_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ADT7470_REG_PWM_AUTO_TEMP(i64) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @cvt_auto_temp(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
