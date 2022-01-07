; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_fanin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_fanin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i64*, i64, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83795_REG_TFTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fanin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fanin(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.w83795_data*, align 8
  %12 = alloca %struct.sensor_device_attribute_2*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.i2c_client* @to_i2c_client(%struct.device* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %19 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.w83795_data* %19, %struct.w83795_data** %11, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute_2* %21, %struct.sensor_device_attribute_2** %12, align 8
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @kstrtoul(i8* %28, i32 10, i64* %15)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %5, align 8
  br label %78

34:                                               ; preds = %4
  %35 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %36 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %73 [
    i32 129, label %39
    i32 128, label %63
  ]

39:                                               ; preds = %34
  %40 = load i64, i64* %15, align 8
  %41 = call i64 @clamp_val(i64 %40, i32 0, i32 4095)
  %42 = call i64 @fan_to_reg(i64 %41)
  store i64 %42, i64* %15, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @W83795_REG_FTSH(i32 %44)
  %46 = load i64, i64* %15, align 8
  %47 = lshr i64 %46, 4
  %48 = call i32 @w83795_write(%struct.i2c_client* %43, i32 %45, i64 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @W83795_REG_FTSL(i32 %50)
  %52 = load i64, i64* %15, align 8
  %53 = shl i64 %52, 4
  %54 = and i64 %53, 240
  %55 = call i32 @w83795_write(%struct.i2c_client* %49, i32 %51, i64 %54)
  %56 = load i64, i64* %15, align 8
  %57 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %58 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %56, i64* %62, align 8
  br label %73

63:                                               ; preds = %34
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @clamp_val(i64 %64, i32 0, i32 63)
  store i64 %65, i64* %15, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %67 = load i32, i32* @W83795_REG_TFTS, align 4
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @w83795_write(%struct.i2c_client* %66, i32 %67, i64 %68)
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %72 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %34, %63, %39
  %74 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %75 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %73, %31
  %79 = load i64, i64* %5, align 8
  ret i64 %79
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @fan_to_reg(i64) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @W83795_REG_FTSH(i32) #1

declare dso_local i32 @W83795_REG_FTSL(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
