; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_show_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_show_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i32*, i32*, i32*, i32* }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@DME1737_BIT_ALARM_IN = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
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
  switch i32 %22, label %82 [
    i32 130, label %23
    i32 128, label %39
    i32 129, label %55
    i32 131, label %71
  ]

23:                                               ; preds = %3
  %24 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %25 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %32 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IN_FROM_REG(i32 %30, i32 %37, i32 16)
  store i32 %38, i32* %11, align 4
  br label %86

39:                                               ; preds = %3
  %40 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %41 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %48 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IN_FROM_REG(i32 %46, i32 %53, i32 8)
  store i32 %54, i32* %11, align 4
  br label %86

55:                                               ; preds = %3
  %56 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %57 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %64 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IN_FROM_REG(i32 %62, i32 %69, i32 8)
  store i32 %70, i32* %11, align 4
  br label %86

71:                                               ; preds = %3
  %72 = load %struct.dme1737_data*, %struct.dme1737_data** %7, align 8
  %73 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** @DME1737_BIT_ALARM_IN, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %74, %79
  %81 = and i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %86

82:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %71, %55, %39, %23
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  ret i32 %89
}

declare dso_local %struct.dme1737_data* @dme1737_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @IN_FROM_REG(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
