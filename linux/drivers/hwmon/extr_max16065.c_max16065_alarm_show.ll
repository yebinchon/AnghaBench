; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_max16065.c_max16065_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i32 }
%struct.max16065_data = type { i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @max16065_alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max16065_alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca %struct.max16065_data*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute_2* %12, %struct.sensor_device_attribute_2** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.max16065_data* @max16065_update_device(%struct.device* %13)
  store %struct.max16065_data* %14, %struct.max16065_data** %9, align 8
  %15 = load %struct.max16065_data*, %struct.max16065_data** %9, align 8
  %16 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %29 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = load %struct.max16065_data*, %struct.max16065_data** %9, align 8
  %38 = getelementptr inbounds %struct.max16065_data, %struct.max16065_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @MAX16065_FAULT(i64 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @i2c_smbus_write_byte_data(i32 %39, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %27
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %46, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.max16065_data* @max16065_update_device(%struct.device*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @MAX16065_FAULT(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
