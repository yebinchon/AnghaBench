; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7828.c_ads7828_in_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ads7828.c_ads7828_in_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.ads7828_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ads7828_in_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads7828_in_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.ads7828_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %13)
  store %struct.sensor_device_attribute* %14, %struct.sensor_device_attribute** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.ads7828_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.ads7828_data* %16, %struct.ads7828_data** %9, align 8
  %17 = load %struct.ads7828_data*, %struct.ads7828_data** %9, align 8
  %18 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ads7828_cmd_byte(i32 %19, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ads7828_data*, %struct.ads7828_data** %9, align 8
  %25 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @regmap_read(i32 %26, i32 %27, i32* %11)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ads7828_data*, %struct.ads7828_data** %9, align 8
  %37 = getelementptr inbounds %struct.ads7828_data, %struct.ads7828_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %35, %38
  %40 = call i32 @DIV_ROUND_CLOSEST(i32 %39, i32 1000)
  %41 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %33, %31
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.ads7828_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ads7828_cmd_byte(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
