; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32, i8**, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@regtempmax = common dso_local global i32* null, align 8
@regtemphyst = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt1211_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.vt1211_data* %17, %struct.vt1211_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute_2* %19, %struct.sensor_device_attribute_2** %11, align 8
  %20 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtol(i8* %26, i32 10, i64* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %95

32:                                               ; preds = %4
  %33 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %34 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %85 [
    i32 129, label %37
    i32 128, label %61
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = load i64, i64* %14, align 8
  %40 = call i8* @TEMP_TO_REG(i32 %38, i64 %39)
  %41 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %42 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  %47 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %48 = load i32*, i32** @regtempmax, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %54 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %53, i32 0, i32 2
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @vt1211_write8(%struct.vt1211_data* %47, i32 %52, i8* %59)
  br label %89

61:                                               ; preds = %32
  %62 = load i32, i32* %12, align 4
  %63 = load i64, i64* %14, align 8
  %64 = call i8* @TEMP_TO_REG(i32 %62, i64 %63)
  %65 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %66 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %64, i8** %70, align 8
  %71 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %72 = load i32*, i32** @regtemphyst, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %78 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @vt1211_write8(%struct.vt1211_data* %71, i32 %76, i8* %83)
  br label %89

85:                                               ; preds = %32
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @dev_dbg(%struct.device* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %85, %61, %37
  %90 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %91 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %89, %30
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @TEMP_TO_REG(i32, i64) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
