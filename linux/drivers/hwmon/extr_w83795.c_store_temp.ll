; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32, i32** }

@EINVAL = common dso_local global i64 0, align 8
@W83795_REG_TEMP = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.w83795_data*, align 8
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = call %struct.i2c_client* @to_i2c_client(%struct.device* %24)
  store %struct.i2c_client* %25, %struct.i2c_client** %13, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %27 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %26)
  store %struct.w83795_data* %27, %struct.w83795_data** %14, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtol(i8* %28, i32 10, i64* %15)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %76

34:                                               ; preds = %4
  %35 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %36 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @temp_to_reg(i64 %38, i32 -128, i32 127)
  %40 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %41 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %39, i32* %49, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %51 = load i32**, i32*** @W83795_REG_TEMP, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %61 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @w83795_write(%struct.i2c_client* %50, i32 %59, i32 %70)
  %72 = load %struct.w83795_data*, %struct.w83795_data** %14, align 8
  %73 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %34, %31
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @temp_to_reg(i64, i32, i32) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
