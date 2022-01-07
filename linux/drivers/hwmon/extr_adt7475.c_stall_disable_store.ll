; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_stall_disable_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_stall_disable_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.adt7475_data = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@REG_ENHANCE_ACOUSTICS1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @stall_disable_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stall_disable_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.adt7475_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
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
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 5, %24
  %26 = call i32 @BIT(i64 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @kstrtol(i8* %27, i32 10, i64* %13)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %68

33:                                               ; preds = %4
  %34 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %35 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %14, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %40 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %33
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %50 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %48
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %47, %33
  %56 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %57 = load i32, i32* @REG_ENHANCE_ACOUSTICS1, align 4
  %58 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %59 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %56, i32 %57, i32 %62)
  %64 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %65 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %55, %30
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
