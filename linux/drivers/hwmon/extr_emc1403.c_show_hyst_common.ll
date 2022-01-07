; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_show_hyst_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_show_hyst_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.thermal_data = type { %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d000\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i32)* @show_hyst_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_hyst_common(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.thermal_data*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.thermal_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.thermal_data* %19, %struct.thermal_data** %11, align 8
  %20 = load %struct.thermal_data*, %struct.thermal_data** %11, align 8
  %21 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %20, i32 0, i32 0
  %22 = load %struct.regmap*, %struct.regmap** %21, align 8
  store %struct.regmap* %22, %struct.regmap** %12, align 8
  %23 = load %struct.regmap*, %struct.regmap** %12, align 8
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regmap_read(%struct.regmap* %23, i32 %26, i32* %13)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %4
  %33 = load %struct.regmap*, %struct.regmap** %12, align 8
  %34 = call i32 @regmap_read(%struct.regmap* %33, i32 33, i32* %14)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %5, align 4
  br label %54

39:                                               ; preds = %32
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add i32 %44, %45
  br label %51

47:                                               ; preds = %39
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = sub i32 %48, %49
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %46, %43 ], [ %50, %47 ]
  %53 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %37, %30
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.thermal_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
