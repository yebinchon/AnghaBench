; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_store_temp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.w83795_data = type { i32, i32 }
%struct.sensor_device_attribute_2 = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@W83795_REG_TEMP_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_temp_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = call %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.w83795_data* %20, %struct.w83795_data** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute_2* %22, %struct.sensor_device_attribute_2** %12, align 8
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %12, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @kstrtoul(i8* %26, i32 10, i64* %15)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %93

32:                                               ; preds = %4
  %33 = load i64, i64* %15, align 8
  %34 = icmp ne i64 %33, 4
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %93

41:                                               ; preds = %35, %32
  %42 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %43 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load i64, i64* %15, align 8
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  store i64 1, i64* %15, align 8
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %51 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %66

54:                                               ; preds = %41
  %55 = load i64, i64* %15, align 8
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  store i64 3, i64* %15, align 8
  %58 = load i32, i32* %13, align 4
  %59 = shl i32 1, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %62 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %54
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 2, %67
  store i32 %68, i32* %14, align 4
  %69 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %70 = load i32, i32* @W83795_REG_TEMP_CTRL2, align 4
  %71 = call i32 @w83795_read(%struct.i2c_client* %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = shl i32 3, %72
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %16, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %16, align 4
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* %14, align 4
  %79 = zext i32 %78 to i64
  %80 = shl i64 %77, %79
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = or i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %16, align 4
  %85 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %86 = load i32, i32* @W83795_REG_TEMP_CTRL2, align 4
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @w83795_write(%struct.i2c_client* %85, i32 %86, i32 %87)
  %89 = load %struct.w83795_data*, %struct.w83795_data** %11, align 8
  %90 = getelementptr inbounds %struct.w83795_data, %struct.w83795_data* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %66, %38, %29
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.w83795_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83795_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @w83795_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
