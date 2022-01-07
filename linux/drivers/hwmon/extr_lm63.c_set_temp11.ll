; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_set_temp11.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm63.c_set_temp11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm63_data = type { i32*, i32, i64, i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@set_temp11.reg = internal constant [6 x i32] [i32 130, i32 131, i32 132, i32 133, i32 128, i32 129], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_temp11(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.lm63_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.lm63_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.lm63_data* %19, %struct.lm63_data** %11, align 8
  %20 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %21 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %20, i32 0, i32 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %21, align 8
  store %struct.i2c_client* %22, %struct.i2c_client** %12, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtol(i8* %26, i32 10, i64* %13)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %5, align 4
  br label %108

32:                                               ; preds = %4
  %33 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %34 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %37 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %32
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %46 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = call i32 @TEMP11U_TO_REG(i64 %48)
  %50 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %51 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %69

56:                                               ; preds = %40, %32
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %59 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = call i32 @TEMP11_TO_REG(i64 %61)
  %63 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %64 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  br label %69

69:                                               ; preds = %56, %43
  %70 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %71, 1
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [6 x i32], [6 x i32]* @set_temp11.reg, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %78 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 8
  %85 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %70, i32 %76, i32 %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %87, 1
  %89 = mul nsw i32 %88, 2
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* @set_temp11.reg, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %95 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 255
  %102 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %86, i32 %93, i32 %101)
  %103 = load %struct.lm63_data*, %struct.lm63_data** %11, align 8
  %104 = getelementptr inbounds %struct.lm63_data, %struct.lm63_data* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i64, i64* %9, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %69, %30
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm63_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP11U_TO_REG(i64) #1

declare dso_local i32 @TEMP11_TO_REG(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
