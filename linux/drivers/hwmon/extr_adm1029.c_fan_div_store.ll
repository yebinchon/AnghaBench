; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1029.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adm1029_data = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sensor_device_attribute = type { i64 }

@ADM1029_REG_FAN_DIV = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [59 x i8] c"fan_div value %ld not supported. Choose one of 1, 2 or 4!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adm1029_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca %struct.sensor_device_attribute*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adm1029_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adm1029_data* %17, %struct.adm1029_data** %10, align 8
  %18 = load %struct.adm1029_data*, %struct.adm1029_data** %10, align 8
  %19 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %18, i32 0, i32 2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %11, align 8
  %21 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %22 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %21)
  store %struct.sensor_device_attribute* %22, %struct.sensor_device_attribute** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtol(i8* %23, i32 10, i64* %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %5, align 4
  br label %85

29:                                               ; preds = %4
  %30 = load %struct.adm1029_data*, %struct.adm1029_data** %10, align 8
  %31 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %34 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %35 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %33, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i64, i64* %14, align 8
  switch i64 %41, label %45 [
    i64 1, label %42
    i64 2, label %43
    i64 4, label %44
  ]

42:                                               ; preds = %29
  store i64 1, i64* %14, align 8
  br label %55

43:                                               ; preds = %29
  store i64 2, i64* %14, align 8
  br label %55

44:                                               ; preds = %29
  store i64 3, i64* %14, align 8
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.adm1029_data*, %struct.adm1029_data** %10, align 8
  %47 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %85

55:                                               ; preds = %44, %43, %42
  %56 = load i32, i32* %13, align 4
  %57 = and i32 %56, 63
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %14, align 8
  %60 = shl i64 %59, 6
  %61 = or i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.adm1029_data*, %struct.adm1029_data** %10, align 8
  %65 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %68 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %63, i32* %70, align 4
  %71 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %72 = load i32*, i32** @ADM1029_REG_FAN_DIV, align 8
  %73 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %12, align 8
  %74 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %71, i32 %77, i32 %78)
  %80 = load %struct.adm1029_data*, %struct.adm1029_data** %10, align 8
  %81 = getelementptr inbounds %struct.adm1029_data, %struct.adm1029_data* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %55, %45, %27
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.adm1029_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
