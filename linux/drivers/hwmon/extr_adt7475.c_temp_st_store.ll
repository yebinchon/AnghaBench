; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_st_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_st_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.adt7475_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@REG_ENHANCE_ACOUSTICS1 = common dso_local global i8 0, align 1
@REG_ENHANCE_ACOUSTICS2 = common dso_local global i8 0, align 1
@ad7475_st_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_st_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @temp_st_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.adt7475_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.adt7475_data* %20, %struct.adt7475_data** %11, align 8
  %21 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %22 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %21, i32 0, i32 2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @kstrtoul(i8* %24, i32 10, i32* %16)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %92

30:                                               ; preds = %4
  %31 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %39 [
    i32 0, label %34
    i32 1, label %36
    i32 2, label %38
  ]

34:                                               ; preds = %30
  %35 = load i8, i8* @REG_ENHANCE_ACOUSTICS1, align 1
  store i8 %35, i8* %13, align 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %41

36:                                               ; preds = %30
  %37 = load i8, i8* @REG_ENHANCE_ACOUSTICS2, align 1
  store i8 %37, i8* %13, align 1
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %41

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %30, %38
  %40 = load i8, i8* @REG_ENHANCE_ACOUSTICS2, align 1
  store i8 %40, i8* %13, align 1
  store i32 4, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %41

41:                                               ; preds = %39, %36, %34
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @ad7475_st_map, align 4
  %47 = load i32, i32* @ad7475_st_map, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = call i32 @find_closest_descending(i32 %45, i32 %46, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = or i32 %50, 8
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %54 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load i32, i32* %14, align 4
  %57 = shl i32 15, %56
  %58 = xor i32 %57, -1
  %59 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %60 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %58
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %14, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %71 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %69
  store i32 %77, i32* %75, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %79 = load i8, i8* %13, align 1
  %80 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %81 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %78, i8 zeroext %79, i32 %86)
  %88 = load %struct.adt7475_data*, %struct.adt7475_data** %11, align 8
  %89 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %52, %27
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i32*) #1

declare dso_local i32 @find_closest_descending(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
