; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_show_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_show_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i32 }
%struct.abituguru3_data = type { i32**, i32*, %struct.abituguru3_sensor_info* }
%struct.abituguru3_sensor_info = type { i64, i32, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@ABIT_UGURU3_TEMP_SENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_value(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sensor_device_attribute_2*, align 8
  %10 = alloca %struct.abituguru3_data*, align 8
  %11 = alloca %struct.abituguru3_sensor_info*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute_2* %13, %struct.sensor_device_attribute_2** %9, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.abituguru3_data* @abituguru3_update_device(%struct.device* %14)
  store %struct.abituguru3_data* %15, %struct.abituguru3_data** %10, align 8
  %16 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %17 = icmp ne %struct.abituguru3_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %83

21:                                               ; preds = %3
  %22 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %23 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %22, i32 0, i32 2
  %24 = load %struct.abituguru3_sensor_info*, %struct.abituguru3_sensor_info** %23, align 8
  %25 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.abituguru3_sensor_info, %struct.abituguru3_sensor_info* %24, i64 %27
  store %struct.abituguru3_sensor_info* %28, %struct.abituguru3_sensor_info** %11, align 8
  %29 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %30 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %21
  %34 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %35 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.abituguru3_sensor_info*, %struct.abituguru3_sensor_info** %11, align 8
  %38 = getelementptr inbounds %struct.abituguru3_sensor_info, %struct.abituguru3_sensor_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %9, align 8
  %43 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  br label %57

48:                                               ; preds = %21
  %49 = load %struct.abituguru3_data*, %struct.abituguru3_data** %10, align 8
  %50 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.abituguru3_sensor_info*, %struct.abituguru3_sensor_info** %11, align 8
  %53 = getelementptr inbounds %struct.abituguru3_sensor_info, %struct.abituguru3_sensor_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %48, %33
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.abituguru3_sensor_info*, %struct.abituguru3_sensor_info** %11, align 8
  %60 = getelementptr inbounds %struct.abituguru3_sensor_info, %struct.abituguru3_sensor_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.abituguru3_sensor_info*, %struct.abituguru3_sensor_info** %11, align 8
  %64 = getelementptr inbounds %struct.abituguru3_sensor_info, %struct.abituguru3_sensor_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %62, %65
  %67 = load %struct.abituguru3_sensor_info*, %struct.abituguru3_sensor_info** %11, align 8
  %68 = getelementptr inbounds %struct.abituguru3_sensor_info, %struct.abituguru3_sensor_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %8, align 4
  %71 = load %struct.abituguru3_sensor_info*, %struct.abituguru3_sensor_info** %11, align 8
  %72 = getelementptr inbounds %struct.abituguru3_sensor_info, %struct.abituguru3_sensor_info* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ABIT_UGURU3_TEMP_SENSOR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %57
  %77 = load i32, i32* %8, align 4
  %78 = mul nsw i32 %77, 1000
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %57
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @sprintf(i8* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %18
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru3_data* @abituguru3_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
