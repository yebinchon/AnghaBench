; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_show_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_show_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i32*, i32*, i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_zone(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dme1737_data*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.dme1737_data* @dme1737_update_device(%struct.device* %12)
  store %struct.dme1737_data* %13, %struct.dme1737_data** %7, align 8
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
  switch i32 %22, label %94 [
    i32 132, label %23
    i32 130, label %37
    i32 131, label %58
    i32 129, label %67
    i32 128, label %85
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %28 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 4, i32* %11, align 4
  br label %36

33:                                               ; preds = %26, %23
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 1, %34
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %32
  br label %98

37:                                               ; preds = %3
  %38 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %39 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @TEMP_FROM_REG(i32 %44, i32 8)
  %46 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %47 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @TEMP_HYST_FROM_REG(i32 %54, i32 %55)
  %57 = sub nsw i32 %45, %56
  store i32 %57, i32* %11, align 4
  br label %98

58:                                               ; preds = %3
  %59 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %60 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @TEMP_FROM_REG(i32 %65, i32 8)
  store i32 %66, i32* %11, align 4
  br label %98

67:                                               ; preds = %3
  %68 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %69 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @TEMP_FROM_REG(i32 %74, i32 8)
  %76 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %77 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @TEMP_RANGE_FROM_REG(i32 %82)
  %84 = add nsw i32 %75, %83
  store i32 %84, i32* %11, align 4
  br label %98

85:                                               ; preds = %3
  %86 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %87 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @TEMP_FROM_REG(i32 %92, i32 8)
  store i32 %93, i32* %11, align 4
  br label %98

94:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dev_dbg(%struct.device* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %85, %67, %58, %37, %36
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @sprintf(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  ret i32 %101
}

declare dso_local %struct.dme1737_data* @dme1737_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @TEMP_FROM_REG(i32, i32) #1

declare dso_local i32 @TEMP_HYST_FROM_REG(i32, i32) #1

declare dso_local i32 @TEMP_RANGE_FROM_REG(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
