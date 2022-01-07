; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_auto_point_temp_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_auto_point_temp_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i32*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unknown attr->nr (%d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_auto_point_temp_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_auto_point_temp_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amc6821_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.amc6821_data* @amc6821_update_device(%struct.device* %19)
  store %struct.amc6821_data* %20, %struct.amc6821_data** %10, align 8
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %44 [
    i32 1, label %22
    i32 2, label %33
  ]

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %25 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 1000
  %32 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %36 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %41, 1000
  %43 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 %43, i32* %4, align 4
  br label %50

44:                                               ; preds = %3
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %33, %22
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.amc6821_data* @amc6821_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
