; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_st_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp_st_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.adt7475_data = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@ad7475_st_map = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_st_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_st_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca %struct.adt7475_data*, align 8
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %12 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute_2* %12, %struct.sensor_device_attribute_2** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.adt7475_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.adt7475_data* %14, %struct.adt7475_data** %9, align 8
  %15 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %36 [
    i32 0, label %18
    i32 1, label %26
    i32 2, label %35
  ]

18:                                               ; preds = %3
  %19 = load %struct.adt7475_data*, %struct.adt7475_data** %9, align 8
  %20 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.adt7475_data*, %struct.adt7475_data** %9, align 8
  %28 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 15
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  br label %44

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %3, %35
  %37 = load %struct.adt7475_data*, %struct.adt7475_data** %9, align 8
  %38 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 15
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %36, %26, %18
  %45 = load i64, i64* %10, align 8
  %46 = and i64 %45, 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  %50 = load i32*, i32** @ad7475_st_map, align 8
  %51 = load i64, i64* %10, align 8
  %52 = and i64 %51, 7
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %44
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %48
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.adt7475_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
