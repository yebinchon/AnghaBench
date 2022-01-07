; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32, i8**, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_in(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %89

32:                                               ; preds = %4
  %33 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %34 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %79 [
    i32 128, label %37
    i32 129, label %58
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = load i64, i64* %14, align 8
  %40 = call i8* @IN_TO_REG(i32 %38, i64 %39)
  %41 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %42 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %41, i32 0, i32 2
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  %47 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @VT1211_REG_IN_MIN(i32 %48)
  %50 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %51 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @vt1211_write8(%struct.vt1211_data* %47, i32 %49, i8* %56)
  br label %83

58:                                               ; preds = %32
  %59 = load i32, i32* %12, align 4
  %60 = load i64, i64* %14, align 8
  %61 = call i8* @IN_TO_REG(i32 %59, i64 %60)
  %62 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %63 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %62, i32 0, i32 1
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %61, i8** %67, align 8
  %68 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @VT1211_REG_IN_MAX(i32 %69)
  %71 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %72 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @vt1211_write8(%struct.vt1211_data* %68, i32 %70, i8* %77)
  br label %83

79:                                               ; preds = %32
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %58, %37
  %84 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %85 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %83, %30
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @IN_TO_REG(i32, i64) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i8*) #1

declare dso_local i32 @VT1211_REG_IN_MIN(i32) #1

declare dso_local i32 @VT1211_REG_IN_MAX(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
