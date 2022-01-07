; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_temp_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_store_temp_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627ehf_data = type { i64*, i32 }
%struct.sensor_device_attribute = type { i32 }

@W83627EHF_REG_TEMP_OFFSET = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_temp_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_temp_offset(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.w83627ehf_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.w83627ehf_data* %16, %struct.w83627ehf_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %55

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @DIV_ROUND_CLOSEST(i64 %29, i32 1000)
  %31 = call i64 @clamp_val(i32 %30, i32 -128, i32 127)
  store i64 %31, i64* %13, align 8
  %32 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %33 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %13, align 8
  %36 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %37 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  store i64 %35, i64* %41, align 8
  %42 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %43 = load i32*, i32** @W83627EHF_REG_TEMP_OFFSET, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %42, i32 %47, i64 %48)
  %50 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %10, align 8
  %51 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i64, i64* %9, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %28, %26
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
