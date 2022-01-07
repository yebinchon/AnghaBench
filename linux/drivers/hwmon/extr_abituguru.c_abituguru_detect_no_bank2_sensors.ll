; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_detect_no_bank2_sensors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_detect_no_bank2_sensors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i32, i32** }

@fan_sensors = common dso_local global i64 0, align 8
@ABIT_UGURU_MAX_BANK2_SENSORS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"assuming %d fan sensors because of \22fan_sensors\22 module param\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"detecting number of fan sensors\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"  bank2 sensor %d does not seem to be a fan sensor: settings[0] = %02X\0A\00", align 1
@abituguru_bank2_min_threshold = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [98 x i8] c"  bank2 sensor %d does not seem to be a fan sensor: the threshold (%d) is below the minimum (%d)\0A\00", align 1
@abituguru_bank2_max_threshold = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [98 x i8] c"  bank2 sensor %d does not seem to be a fan sensor: the threshold (%d) is above the maximum (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c" found: %d fan sensors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abituguru_data*)* @abituguru_detect_no_bank2_sensors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abituguru_detect_no_bank2_sensors(%struct.abituguru_data* %0) #0 {
  %2 = alloca %struct.abituguru_data*, align 8
  %3 = alloca i32, align 4
  store %struct.abituguru_data* %0, %struct.abituguru_data** %2, align 8
  %4 = load i64, i64* @fan_sensors, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i64, i64* @fan_sensors, align 8
  %8 = load i64, i64* @ABIT_UGURU_MAX_BANK2_SENSORS, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load i64, i64* @fan_sensors, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %14 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %16 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %112

19:                                               ; preds = %6, %1
  %20 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %101, %19
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @ABIT_UGURU_MAX_BANK2_SENSORS, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %21
  %27 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %28 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, -202
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %26
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %41 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %48)
  br label %104

50:                                               ; preds = %26
  %51 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %52 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %51, i32 0, i32 1
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @abituguru_bank2_min_threshold, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %50
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %65 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @abituguru_bank2_min_threshold, align 4
  %74 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %72, i32 %73)
  br label %104

75:                                               ; preds = %50
  %76 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %77 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %76, i32 0, i32 1
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @abituguru_bank2_max_threshold, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %90 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @abituguru_bank2_max_threshold, align 4
  %99 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), i32 %88, i32 %97, i32 %98)
  br label %104

100:                                              ; preds = %75
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %21

104:                                              ; preds = %87, %62, %38, %21
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %107 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  %109 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %104, %10
  ret void
}

declare dso_local i32 @ABIT_UGURU_DEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
