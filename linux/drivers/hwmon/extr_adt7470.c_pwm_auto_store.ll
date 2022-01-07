; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm_auto_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_pwm_auto_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adt7470_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7470_PWM2_AUTO_MASK = common dso_local global i32 0, align 4
@ADT7470_PWM1_AUTO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_auto_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_auto_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.adt7470_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.adt7470_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.adt7470_data* %20, %struct.adt7470_data** %11, align 8
  %21 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %22 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %21, i32 0, i32 2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ADT7470_REG_PWM_CFG(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtol(i8* %28, i32 10, i64* %15)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %91

34:                                               ; preds = %4
  %35 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @ADT7470_PWM2_AUTO_MASK, align 4
  store i32 %41, i32* %14, align 4
  br label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @ADT7470_PWM1_AUTO_MASK, align 4
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i64, i64* %15, align 8
  %46 = icmp ne i64 %45, 2
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %5, align 8
  br label %91

53:                                               ; preds = %47, %44
  %54 = load i64, i64* %15, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %15, align 8
  %56 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %57 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load i64, i64* %15, align 8
  %60 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %61 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %64 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %62, i64 %66
  store i64 %59, i64* %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %68, i32 %69)
  store i32 %70, i32* %16, align 4
  %71 = load i64, i64* %15, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %53
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %16, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %16, align 4
  br label %82

77:                                               ; preds = %53
  %78 = load i32, i32* %14, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %16, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %16, align 4
  br label %82

82:                                               ; preds = %77, %73
  %83 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %83, i32 %84, i32 %85)
  %87 = load %struct.adt7470_data*, %struct.adt7470_data** %11, align 8
  %88 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %87, i32 0, i32 1
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i64, i64* %9, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %82, %50, %31
  %92 = load i64, i64* %5, align 8
  ret i64 %92
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7470_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ADT7470_REG_PWM_CFG(i32) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

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
