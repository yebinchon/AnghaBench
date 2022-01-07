; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abituguru3_data = type { i32, i32, i64, i32*, i32*, i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ABIT_UGURU3_SETTINGS_BANK = common dso_local global i32 0, align 4
@ABIT_UGURU3_ALARMS_START = common dso_local global i64 0, align 8
@ABIT_UGURU3_SENSORS_BANK = common dso_local global i32 0, align 4
@ABIT_UGURU3_VALUES_START = common dso_local global i64 0, align 8
@ABIT_UGURU3_SETTINGS_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.abituguru3_data* (%struct.device*)* @abituguru3_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.abituguru3_data* @abituguru3_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.abituguru3_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.abituguru3_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.abituguru3_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.abituguru3_data* %7, %struct.abituguru3_data** %5, align 8
  %8 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %9 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %12 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %18 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HZ, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @time_after(i64 %16, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %130

24:                                               ; preds = %15, %1
  %25 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %26 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %28 = load i32, i32* @ABIT_UGURU3_SETTINGS_BANK, align 4
  %29 = load i64, i64* @ABIT_UGURU3_ALARMS_START, align 8
  %30 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %31 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @abituguru3_read_increment_offset(%struct.abituguru3_data* %27, i32 %28, i64 %29, i32 1, i32 %32, i32 6)
  %34 = icmp ne i32 %33, 6
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %131

36:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 32
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %42 = load i32, i32* @ABIT_UGURU3_SENSORS_BANK, align 4
  %43 = load i64, i64* @ABIT_UGURU3_VALUES_START, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %48 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @abituguru3_read(%struct.abituguru3_data* %41, i32 %42, i64 %46, i32 1, i32* %52)
  %54 = icmp ne i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  br label %131

56:                                               ; preds = %40
  %57 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %58 = load i32, i32* @ABIT_UGURU3_SETTINGS_BANK, align 4
  %59 = load i64, i64* @ABIT_UGURU3_SETTINGS_START, align 8
  %60 = load i32, i32* %4, align 4
  %61 = mul nsw i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %65 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @abituguru3_read_increment_offset(%struct.abituguru3_data* %57, i32 %58, i64 %63, i32 1, i32 %70, i32 3)
  %72 = icmp ne i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %131

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %37

78:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %121, %78
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 16
  br i1 %81, label %82, label %124

82:                                               ; preds = %79
  %83 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %84 = load i32, i32* @ABIT_UGURU3_SENSORS_BANK, align 4
  %85 = load i64, i64* @ABIT_UGURU3_VALUES_START, align 8
  %86 = add nsw i64 %85, 32
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %91 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 32, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = call i32 @abituguru3_read(%struct.abituguru3_data* %83, i32 %84, i64 %89, i32 1, i32* %96)
  %98 = icmp ne i32 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %82
  br label %131

100:                                              ; preds = %82
  %101 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %102 = load i32, i32* @ABIT_UGURU3_SETTINGS_BANK, align 4
  %103 = load i64, i64* @ABIT_UGURU3_SETTINGS_START, align 8
  %104 = add nsw i64 %103, 96
  %105 = load i32, i32* %4, align 4
  %106 = mul nsw i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %110 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 32, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @abituguru3_read_increment_offset(%struct.abituguru3_data* %101, i32 %102, i64 %108, i32 1, i32 %116, i32 2)
  %118 = icmp ne i32 %117, 2
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  br label %131

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %79

124:                                              ; preds = %79
  %125 = load i64, i64* @jiffies, align 8
  %126 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %127 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %129 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %124, %15
  br label %131

131:                                              ; preds = %130, %119, %99, %73, %55, %35
  %132 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %133 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %132, i32 0, i32 1
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  %136 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load %struct.abituguru3_data*, %struct.abituguru3_data** %5, align 8
  store %struct.abituguru3_data* %140, %struct.abituguru3_data** %2, align 8
  br label %142

141:                                              ; preds = %131
  store %struct.abituguru3_data* null, %struct.abituguru3_data** %2, align 8
  br label %142

142:                                              ; preds = %141, %139
  %143 = load %struct.abituguru3_data*, %struct.abituguru3_data** %2, align 8
  ret %struct.abituguru3_data* %143
}

declare dso_local %struct.abituguru3_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @abituguru3_read_increment_offset(%struct.abituguru3_data*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @abituguru3_read(%struct.abituguru3_data*, i32, i64, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
