; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_fan_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i64*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca %struct.w83795_data*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.i2c_client* @to_i2c_client(%struct.device* %20)
  store %struct.i2c_client* %21, %struct.i2c_client** %12, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %23 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %22)
  store %struct.w83795_data* %23, %struct.w83795_data** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @kstrtoul(i8* %24, i32 10, i64* %14)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %86

30:                                               ; preds = %4
  %31 = load i64, i64* %14, align 8
  %32 = call i64 @fan_to_reg(i64 %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.w83795_data*, %struct.w83795_data** %13, align 8
  %34 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i64, i64* %14, align 8
  %37 = load %struct.w83795_data*, %struct.w83795_data** %13, align 8
  %38 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %36, i64* %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @W83795_REG_FAN_MIN_HL(i32 %44)
  %46 = load i64, i64* %14, align 8
  %47 = lshr i64 %46, 4
  %48 = and i64 %47, 255
  %49 = call i32 @w83795_write(%struct.i2c_client* %43, i32 %45, i64 %48)
  %50 = load i64, i64* %14, align 8
  %51 = and i64 %50, 15
  store i64 %51, i64* %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %30
  %56 = load i64, i64* %14, align 8
  %57 = shl i64 %56, 4
  store i64 %57, i64* %14, align 8
  %58 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @W83795_REG_FAN_MIN_LSB(i32 %59)
  %61 = call i32 @w83795_read(%struct.i2c_client* %58, i32 %60)
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %14, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %14, align 8
  br label %75

66:                                               ; preds = %30
  %67 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @W83795_REG_FAN_MIN_LSB(i32 %68)
  %70 = call i32 @w83795_read(%struct.i2c_client* %67, i32 %69)
  %71 = and i32 %70, 240
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %14, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %14, align 8
  br label %75

75:                                               ; preds = %66, %55
  %76 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @W83795_REG_FAN_MIN_LSB(i32 %77)
  %79 = load i64, i64* %14, align 8
  %80 = and i64 %79, 255
  %81 = call i32 @w83795_write(%struct.i2c_client* %76, i32 %78, i64 %80)
  %82 = load %struct.w83795_data*, %struct.w83795_data** %13, align 8
  %83 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %75, %27
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @fan_to_reg(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @W83795_REG_FAN_MIN_HL(i32) #1

declare dso_local i32 @w83795_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83795_REG_FAN_MIN_LSB(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
