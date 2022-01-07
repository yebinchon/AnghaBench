; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_set_temp8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_set_temp8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm63_data = type { i32*, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@LM63_REG_REMOTE_TCRIT = common dso_local global i32 0, align 4
@LM63_REG_LOCAL_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_temp8(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.lm63_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %10, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.lm63_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.lm63_data* %21, %struct.lm63_data** %11, align 8
  %22 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %23 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %22, i32 0, i32 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtol(i8* %28, i32 10, i64* %14)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %5, align 4
  br label %91

34:                                               ; preds = %4
  %35 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %36 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %67 [
    i32 2, label %39
    i32 1, label %63
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* @LM63_REG_REMOTE_TCRIT, align 4
  store i32 %40, i32* %17, align 4
  %41 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %42 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %48 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %46, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @TEMP8U_TO_REG(i32 %52)
  store i32 %53, i32* %16, align 4
  br label %62

54:                                               ; preds = %39
  %55 = load i64, i64* %14, align 8
  %56 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %57 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %55, %59
  %61 = call i32 @TEMP8_TO_REG(i64 %60)
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %54, %45
  br label %74

63:                                               ; preds = %34
  %64 = load i32, i32* @LM63_REG_LOCAL_HIGH, align 4
  store i32 %64, i32* %17, align 4
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @TEMP8_TO_REG(i64 %65)
  store i32 %66, i32* %16, align 4
  br label %74

67:                                               ; preds = %34
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %68, 3
  %70 = call i32 @LM63_REG_LUT_TEMP(i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @lut_temp_to_reg(%struct.lm63_data* %71, i64 %72)
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %67, %63, %62
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %77 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %82, i32 %83, i32 %84)
  %86 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %87 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i64, i64* %9, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %74, %32
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm63_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP8U_TO_REG(i32) #1

declare dso_local i32 @TEMP8_TO_REG(i64) #1

declare dso_local i32 @LM63_REG_LUT_TEMP(i32) #1

declare dso_local i32 @lut_temp_to_reg(%struct.lm63_data*, i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
