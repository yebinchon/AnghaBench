; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87360.c_temp_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_pc87360.c_temp_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.pc87360_data = type { i32, i32* }

@LD_TEMP = common dso_local global i32 0, align 4
@PC87365_REG_TEMP_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.pc87360_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.pc87360_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.pc87360_data* %17, %struct.pc87360_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtol(i8* %18, i32 10, i64* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %26 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @TEMP_TO_REG(i64 %28)
  %30 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %31 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %29, i32* %36, align 4
  %37 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %38 = load i32, i32* @LD_TEMP, align 4
  %39 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @PC87365_REG_TEMP_MIN, align 4
  %43 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %44 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %47 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pc87360_write_value(%struct.pc87360_data* %37, i32 %38, i64 %41, i32 %42, i32 %50)
  %52 = load %struct.pc87360_data*, %struct.pc87360_data** %11, align 8
  %53 = getelementptr inbounds %struct.pc87360_data, %struct.pc87360_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %24, %22
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.pc87360_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @pc87360_write_value(%struct.pc87360_data*, i32, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
