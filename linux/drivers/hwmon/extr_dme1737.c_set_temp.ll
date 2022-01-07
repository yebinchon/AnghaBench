; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_set_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_set_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i8**, i8**, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dme1737_data*, align 8
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
  %17 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.dme1737_data* %17, %struct.dme1737_data** %10, align 8
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
  br label %107

32:                                               ; preds = %4
  %33 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %34 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %97 [
    i32 129, label %37
    i32 130, label %57
    i32 128, label %77
  ]

37:                                               ; preds = %32
  %38 = load i64, i64* %14, align 8
  %39 = call i8* @TEMP_TO_REG(i64 %38)
  %40 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %41 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %40, i32 0, i32 3
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  store i8* %39, i8** %45, align 8
  %46 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @DME1737_REG_TEMP_MIN(i32 %47)
  %49 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %50 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @dme1737_write(%struct.dme1737_data* %46, i32 %48, i8* %55)
  br label %101

57:                                               ; preds = %32
  %58 = load i64, i64* %14, align 8
  %59 = call i8* @TEMP_TO_REG(i64 %58)
  %60 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %61 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  %66 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @DME1737_REG_TEMP_MAX(i32 %67)
  %69 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %70 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @dme1737_write(%struct.dme1737_data* %66, i32 %68, i8* %75)
  br label %101

77:                                               ; preds = %32
  %78 = load i64, i64* %14, align 8
  %79 = call i8* @TEMP_TO_REG(i64 %78)
  %80 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %81 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  %86 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @DME1737_REG_TEMP_OFFSET(i32 %87)
  %89 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %90 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @dme1737_write(%struct.dme1737_data* %86, i32 %88, i8* %95)
  br label %101

97:                                               ; preds = %32
  %98 = load %struct.device*, %struct.device** %6, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @dev_dbg(%struct.device* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %77, %57, %37
  %102 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %103 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i64, i64* %9, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %101, %30
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @TEMP_TO_REG(i64) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i8*) #1

declare dso_local i32 @DME1737_REG_TEMP_MIN(i32) #1

declare dso_local i32 @DME1737_REG_TEMP_MAX(i32) #1

declare dso_local i32 @DME1737_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
