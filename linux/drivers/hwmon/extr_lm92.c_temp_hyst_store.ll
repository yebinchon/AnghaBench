; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm92.c_temp_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm92.c_temp_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.lm92_data = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@t_hyst = common dso_local global i64 0, align 8
@LM92_REG_TEMP_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.lm92_data*, align 8
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
  %18 = call %struct.lm92_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.lm92_data* %18, %struct.lm92_data** %11, align 8
  %19 = load %struct.lm92_data*, %struct.lm92_data** %11, align 8
  %20 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %65

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @clamp_val(i64 %29, i32 -120000, i32 220000)
  store i64 %30, i64* %13, align 8
  %31 = load %struct.lm92_data*, %struct.lm92_data** %11, align 8
  %32 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.lm92_data*, %struct.lm92_data** %11, align 8
  %35 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @TEMP_FROM_REG(i32 %41)
  %43 = load i64, i64* %13, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i32 @TEMP_TO_REG(i64 %44)
  %46 = load %struct.lm92_data*, %struct.lm92_data** %11, align 8
  %47 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @t_hyst, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %52 = load i32, i32* @LM92_REG_TEMP_HYST, align 4
  %53 = load %struct.lm92_data*, %struct.lm92_data** %11, align 8
  %54 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @t_hyst, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %51, i32 %52, i32 %58)
  %60 = load %struct.lm92_data*, %struct.lm92_data** %11, align 8
  %61 = getelementptr inbounds %struct.lm92_data, %struct.lm92_data* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %28, %26
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm92_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i64 @TEMP_FROM_REG(i32) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
