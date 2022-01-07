; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm73.c_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm73_data = type { i32 }

@LM73_TEMP_MIN = common dso_local global i32 0, align 4
@LM73_TEMP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.lm73_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.lm73_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.lm73_data* %19, %struct.lm73_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtol(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %5, align 4
  br label %51

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = sdiv i64 %27, 250
  %29 = load i32, i32* @LM73_TEMP_MIN, align 4
  %30 = load i32, i32* @LM73_TEMP_MAX, align 4
  %31 = call i32 @clamp_val(i64 %28, i32 %29, i32 %30)
  %32 = shl i32 %31, 5
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %13, align 2
  %34 = load %struct.lm73_data*, %struct.lm73_data** %11, align 8
  %35 = getelementptr inbounds %struct.lm73_data, %struct.lm73_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %38 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i16, i16* %13, align 2
  %41 = call i64 @i2c_smbus_write_word_swapped(i32 %36, i32 %39, i16 signext %40)
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i64, i64* %14, align 8
  br label %48

46:                                               ; preds = %26
  %47 = load i64, i64* %9, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %24
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm73_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @i2c_smbus_write_word_swapped(i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
