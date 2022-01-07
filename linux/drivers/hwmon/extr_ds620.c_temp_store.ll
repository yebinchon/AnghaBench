; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ds620.c_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.ds620_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@DS620_REG_TEMP = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.sensor_device_attribute*, align 8
  %13 = alloca %struct.ds620_data*, align 8
  %14 = alloca %struct.i2c_client*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %12, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.ds620_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.ds620_data* %18, %struct.ds620_data** %13, align 8
  %19 = load %struct.ds620_data*, %struct.ds620_data** %13, align 8
  %20 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %14, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %11)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %67

28:                                               ; preds = %4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @clamp_val(i64 %29, i32 -128000, i32 128000)
  %31 = mul nsw i32 %30, 10
  %32 = sdiv i32 %31, 625
  %33 = mul nsw i32 %32, 8
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %11, align 8
  %35 = load %struct.ds620_data*, %struct.ds620_data** %13, align 8
  %36 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.ds620_data*, %struct.ds620_data** %13, align 8
  %40 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %43 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  store i64 %38, i64* %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %47 = load i32*, i32** @DS620_REG_TEMP, align 8
  %48 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %49 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ds620_data*, %struct.ds620_data** %13, align 8
  %54 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %57 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %46, i32 %52, i64 %60)
  %62 = load %struct.ds620_data*, %struct.ds620_data** %13, align 8
  %63 = getelementptr inbounds %struct.ds620_data, %struct.ds620_data* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %28, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.ds620_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
