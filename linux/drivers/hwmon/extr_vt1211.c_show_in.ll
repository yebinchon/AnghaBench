; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_show_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_show_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32, i32*, i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@bitalarmin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vt1211_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.vt1211_data* @vt1211_update_device(%struct.device* %12)
  store %struct.vt1211_data* %13, %struct.vt1211_data** %7, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %15 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute_2* %15, %struct.sensor_device_attribute_2** %8, align 8
  %16 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %64 [
    i32 130, label %23
    i32 128, label %33
    i32 129, label %43
    i32 131, label %53
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.vt1211_data*, %struct.vt1211_data** %7, align 8
  %26 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IN_FROM_REG(i32 %24, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %68

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.vt1211_data*, %struct.vt1211_data** %7, align 8
  %36 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IN_FROM_REG(i32 %34, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %68

43:                                               ; preds = %3
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.vt1211_data*, %struct.vt1211_data** %7, align 8
  %46 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IN_FROM_REG(i32 %44, i32 %51)
  store i32 %52, i32* %11, align 4
  br label %68

53:                                               ; preds = %3
  %54 = load %struct.vt1211_data*, %struct.vt1211_data** %7, align 8
  %55 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** @bitalarmin, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %56, %61
  %63 = and i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %68

64:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %65 = load %struct.device*, %struct.device** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %53, %43, %33, %23
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  ret i32 %71
}

declare dso_local %struct.vt1211_data* @vt1211_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @IN_FROM_REG(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
