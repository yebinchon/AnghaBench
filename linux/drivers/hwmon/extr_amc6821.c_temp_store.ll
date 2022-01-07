; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i64*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@temp_reg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Register write error, aborting.\0A\00", align 1
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amc6821_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.amc6821_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.amc6821_data* %16, %struct.amc6821_data** %10, align 8
  %17 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %18 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %17, i32 0, i32 2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %11, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtol(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %71

30:                                               ; preds = %4
  %31 = load i64, i64* %13, align 8
  %32 = sdiv i64 %31, 1000
  %33 = call i64 @clamp_val(i64 %32, i32 -128, i32 127)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %35 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %39 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %37, i64* %43, align 8
  %44 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %45 = load i32*, i32** @temp_reg, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %51 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @i2c_smbus_write_byte_data(%struct.i2c_client* %44, i32 %49, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %30
  %60 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %63 = load i64, i64* @EIO, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %59, %30
  %66 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %67 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %65, %28
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.amc6821_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
