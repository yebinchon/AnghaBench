; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_in_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m192.c_in_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.smsc47m192_data = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.smsc47m192_data*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = call %struct.smsc47m192_data* @dev_get_drvdata(%struct.device* %21)
  store %struct.smsc47m192_data* %22, %struct.smsc47m192_data** %12, align 8
  %23 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %24 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %23, i32 0, i32 2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %24, align 8
  store %struct.i2c_client* %25, %struct.i2c_client** %13, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %61

32:                                               ; preds = %4
  %33 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %34 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i64, i64* %14, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @IN_TO_REG(i64 %36, i32 %37)
  %39 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %40 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @SMSC47M192_REG_IN_MAX(i32 %46)
  %48 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %49 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %45, i32 %47, i32 %54)
  %56 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %12, align 8
  %57 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %32, %30
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.smsc47m192_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IN_TO_REG(i64, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @SMSC47M192_REG_IN_MAX(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
