; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_temp_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_temp_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i64, i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@FSCHMD_REG_TEMP_LIMIT = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fschmd_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.fschmd_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.fschmd_data* %19, %struct.fschmd_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtol(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %61

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = sdiv i64 %27, 1000
  %29 = call i32 @clamp_val(i64 %28, i32 -128, i32 127)
  %30 = add nsw i32 %29, 128
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %33 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %32, i32 0, i32 2
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @to_i2c_client(%struct.device* %35)
  %37 = load i32**, i32*** @FSCHMD_REG_TEMP_LIMIT, align 8
  %38 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %39 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @i2c_smbus_write_byte_data(i32 %36, i32 %46, i64 %47)
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %51 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %49, i64* %55, align 8
  %56 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %57 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %26, %24
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
