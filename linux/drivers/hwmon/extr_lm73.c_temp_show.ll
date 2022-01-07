; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm73_data = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.lm73_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.lm73_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm73_data* %15, %struct.lm73_data** %9, align 8
  %16 = load %struct.lm73_data*, %struct.lm73_data** %9, align 8
  %17 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @i2c_smbus_read_word_swapped(i32 %18, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %4, align 8
  br label %36

27:                                               ; preds = %3
  %28 = load i64, i64* %11, align 8
  %29 = trunc i64 %28 to i32
  %30 = mul nsw i32 %29, 250
  %31 = sdiv i32 %30, 32
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @scnprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %27, %25
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm73_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @i2c_smbus_read_word_swapped(i32, i32) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
