; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_abituguru_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru_data = type { i32, i32, i32, i64, i32*, i32**, i32*, i32* }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ABIT_UGURU_ALARM_BANK = common dso_local global i64 0, align 8
@ABIT_UGURU_MAX_BANK1_SENSORS = common dso_local global i32 0, align 4
@ABIT_UGURU_SENSOR_BANK1 = common dso_local global i64 0, align 8
@ABIT_UGURU_SENSOR_BANK2 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ABIT_UGURU_MAX_TIMEOUTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"timeout exceeded, will try again next update\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"timeout exceeded %d times waiting for more input state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.abituguru_data* (%struct.device*)* @abituguru_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.abituguru_data* @abituguru_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.abituguru_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.abituguru_data*, align 8
  %7 = alloca i8, align 1
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %8)
  store %struct.abituguru_data* %9, %struct.abituguru_data** %6, align 8
  store i8 1, i8* %7, align 1
  %10 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %11 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %15 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HZ, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @time_after(i64 %13, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %141

21:                                               ; preds = %1
  store i8 0, i8* %7, align 1
  %22 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %23 = load i64, i64* @ABIT_UGURU_ALARM_BANK, align 8
  %24 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %25 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @abituguru_read(%struct.abituguru_data* %22, i64 %23, i32 0, i32* %26, i32 3, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %98

31:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %67, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ABIT_UGURU_MAX_BANK1_SENSORS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %70

36:                                               ; preds = %32
  %37 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %38 = load i64, i64* @ABIT_UGURU_SENSOR_BANK1, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %41 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @abituguru_read(%struct.abituguru_data* %37, i64 %38, i32 %39, i32* %45, i32 1, i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %98

50:                                               ; preds = %36
  %51 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %52 = load i64, i64* @ABIT_UGURU_SENSOR_BANK1, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %56 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %55, i32 0, i32 5
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @abituguru_read(%struct.abituguru_data* %51, i64 %53, i32 %54, i32* %61, i32 3, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  br label %98

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %32

70:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %74 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %79 = load i64, i64* @ABIT_UGURU_SENSOR_BANK2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %82 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @abituguru_read(%struct.abituguru_data* %78, i64 %79, i32 %80, i32* %86, i32 1, i32 0)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %98

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %71

95:                                               ; preds = %71
  store i8 1, i8* %7, align 1
  %96 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %97 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %90, %65, %49, %30
  %99 = load i8, i8* %7, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %133, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @EBUSY, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %106, %101
  %110 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %111 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ult i32 %112, 255
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %116 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %121 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ABIT_UGURU_MAX_TIMEOUTS, align 4
  %124 = icmp ule i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i8 1, i8* %7, align 1
  br label %132

127:                                              ; preds = %119
  %128 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %129 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @ABIT_UGURU_DEBUG(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %127, %125
  br label %133

133:                                              ; preds = %132, %106, %98
  %134 = load i8, i8* %7, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i64, i64* @jiffies, align 8
  %138 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %139 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %138, i32 0, i32 3
  store i64 %137, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %1
  %142 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  %143 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %142, i32 0, i32 2
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i8, i8* %7, align 1
  %146 = icmp ne i8 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = load %struct.abituguru_data*, %struct.abituguru_data** %6, align 8
  store %struct.abituguru_data* %148, %struct.abituguru_data** %2, align 8
  br label %150

149:                                              ; preds = %141
  store %struct.abituguru_data* null, %struct.abituguru_data** %2, align 8
  br label %150

150:                                              ; preds = %149, %147
  %151 = load %struct.abituguru_data*, %struct.abituguru_data** %2, align 8
  ret %struct.abituguru_data* %151
}

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @abituguru_read(%struct.abituguru_data*, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @ABIT_UGURU_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
