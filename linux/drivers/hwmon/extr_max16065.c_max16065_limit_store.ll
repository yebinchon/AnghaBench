; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_limit_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_limit_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i64 }
%struct.max16065_data = type { i32, i32, i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @max16065_limit_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max16065_limit_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.max16065_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.max16065_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.max16065_data* %18, %struct.max16065_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoul(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %5, align 4
  br label %81

28:                                               ; preds = %4
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.max16065_data*, %struct.max16065_data** %11, align 8
  %31 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MV_TO_LIMIT(i64 %29, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load %struct.max16065_data*, %struct.max16065_data** %11, align 8
  %40 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.max16065_data*, %struct.max16065_data** %11, align 8
  %44 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @LIMIT_TO_MV(i32 %42, i32 %50)
  %52 = load %struct.max16065_data*, %struct.max16065_data** %11, align 8
  %53 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %52, i32 0, i32 3
  %54 = load i32**, i32*** %53, align 8
  %55 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %56 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32*, i32** %54, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %61 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %51, i32* %63, align 4
  %64 = load %struct.max16065_data*, %struct.max16065_data** %11, align 8
  %65 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %68 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %71 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @MAX16065_LIMIT(i64 %69, i64 %72)
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @i2c_smbus_write_byte_data(i32 %66, i32 %73, i32 %74)
  %76 = load %struct.max16065_data*, %struct.max16065_data** %11, align 8
  %77 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i64, i64* %9, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %28, %26
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.max16065_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MV_TO_LIMIT(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @LIMIT_TO_MV(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @MAX16065_LIMIT(i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
