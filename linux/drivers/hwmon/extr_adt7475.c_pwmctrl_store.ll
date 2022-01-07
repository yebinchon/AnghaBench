; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_pwmctrl_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_pwmctrl_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.adt7475_data = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwmctrl_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwmctrl_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.adt7475_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.adt7475_data* %18, %struct.adt7475_data** %11, align 8
  %19 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %20 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %19, i32 0, i32 2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtol(i8* %22, i32 10, i64* %14)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %61

28:                                               ; preds = %4
  %29 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %30 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %33 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @adt7475_read_pwm(%struct.i2c_client* %32, i64 %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %38 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %39 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %43 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %46 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @hw_set_pwm(%struct.i2c_client* %37, i64 %40, i64 %41, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %28
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %53, %28
  %57 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %58 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %56, %25
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7475_read_pwm(%struct.i2c_client*, i64) #1

declare dso_local i32 @hw_set_pwm(%struct.i2c_client*, i64, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
