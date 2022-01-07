; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_bool_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc2945.c_ltc2945_bool_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.regmap = type { i32 }

@LTC2945_FAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ltc2945_bool_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2945_bool_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.regmap* @dev_get_drvdata(%struct.device* %14)
  store %struct.regmap* %15, %struct.regmap** %9, align 8
  %16 = load %struct.regmap*, %struct.regmap** %9, align 8
  %17 = load i32, i32* @LTC2945_FAULT, align 4
  %18 = call i32 @regmap_read(%struct.regmap* %16, i32 %17, i32* %10)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %47

23:                                               ; preds = %3
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.regmap*, %struct.regmap** %9, align 8
  %33 = load i32, i32* @LTC2945_FAULT, align 4
  %34 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %35 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 %33, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %21
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.regmap* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
