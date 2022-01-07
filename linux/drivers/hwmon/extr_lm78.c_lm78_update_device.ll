; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm78.c_lm78_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm78.c_lm78_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm78_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i64, i32*, i32, i64, i32 }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Starting lm78 update\0A\00", align 1
@LM78_REG_TEMP = common dso_local global i32 0, align 4
@LM78_REG_TEMP_OVER = common dso_local global i32 0, align 4
@LM78_REG_TEMP_HYST = common dso_local global i32 0, align 4
@LM78_REG_VID_FANDIV = common dso_local global i32 0, align 4
@lm79 = common dso_local global i64 0, align 8
@LM78_REG_CHIPID = common dso_local global i32 0, align 4
@LM78_REG_ALARM1 = common dso_local global i32 0, align 4
@LM78_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lm78_data* (%struct.device*)* @lm78_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lm78_data* @lm78_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.lm78_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.lm78_data* @dev_get_drvdata(%struct.device* %5)
  store %struct.lm78_data* %6, %struct.lm78_data** %3, align 8
  %7 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %8 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %7, i32 0, i32 12
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %12 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %11, i32 0, i32 13
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @HZ, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = load i32, i32* @HZ, align 4
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i64 @time_after(i64 %10, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %25 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %172, label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %65, %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp sle i32 %32, 6
  br i1 %33, label %34, label %68

34:                                               ; preds = %31
  %35 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @LM78_REG_IN(i32 %36)
  %38 = call i32 @lm78_read_value(%struct.lm78_data* %35, i32 %37)
  %39 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %40 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @LM78_REG_IN_MIN(i32 %46)
  %48 = call i32 @lm78_read_value(%struct.lm78_data* %45, i32 %47)
  %49 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %50 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @LM78_REG_IN_MAX(i32 %56)
  %58 = call i32 @lm78_read_value(%struct.lm78_data* %55, i32 %57)
  %59 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %60 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  br label %65

65:                                               ; preds = %34
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %31

68:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %93, %68
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 3
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @LM78_REG_FAN(i32 %74)
  %76 = call i32 @lm78_read_value(%struct.lm78_data* %73, i32 %75)
  %77 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %78 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %76, i32* %82, align 4
  %83 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @LM78_REG_FAN_MIN(i32 %84)
  %86 = call i32 @lm78_read_value(%struct.lm78_data* %83, i32 %85)
  %87 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %88 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %72
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %69

96:                                               ; preds = %69
  %97 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %98 = load i32, i32* @LM78_REG_TEMP, align 4
  %99 = call i32 @lm78_read_value(%struct.lm78_data* %97, i32 %98)
  %100 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %101 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %103 = load i32, i32* @LM78_REG_TEMP_OVER, align 4
  %104 = call i32 @lm78_read_value(%struct.lm78_data* %102, i32 %103)
  %105 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %106 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %108 = load i32, i32* @LM78_REG_TEMP_HYST, align 4
  %109 = call i32 @lm78_read_value(%struct.lm78_data* %107, i32 %108)
  %110 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %111 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  %112 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %113 = load i32, i32* @LM78_REG_VID_FANDIV, align 4
  %114 = call i32 @lm78_read_value(%struct.lm78_data* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = and i32 %115, 15
  %117 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %118 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %117, i32 0, i32 9
  store i32 %116, i32* %118, align 4
  %119 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %120 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %119, i32 0, i32 10
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @lm79, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %96
  %125 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %126 = load i32, i32* @LM78_REG_CHIPID, align 4
  %127 = call i32 @lm78_read_value(%struct.lm78_data* %125, i32 %126)
  %128 = and i32 %127, 1
  %129 = shl i32 %128, 4
  %130 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %131 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %139

134:                                              ; preds = %96
  %135 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %136 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, 16
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %134, %124
  %140 = load i32, i32* %4, align 4
  %141 = ashr i32 %140, 4
  %142 = and i32 %141, 3
  %143 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %144 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %143, i32 0, i32 11
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %142, i32* %146, align 4
  %147 = load i32, i32* %4, align 4
  %148 = ashr i32 %147, 6
  %149 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %150 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %149, i32 0, i32 11
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  store i32 %148, i32* %152, align 4
  %153 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %154 = load i32, i32* @LM78_REG_ALARM1, align 4
  %155 = call i32 @lm78_read_value(%struct.lm78_data* %153, i32 %154)
  %156 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %157 = load i32, i32* @LM78_REG_ALARM2, align 4
  %158 = call i32 @lm78_read_value(%struct.lm78_data* %156, i32 %157)
  %159 = shl i32 %158, 8
  %160 = add nsw i32 %155, %159
  %161 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %162 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %161, i32 0, i32 14
  store i32 %160, i32* %162, align 8
  %163 = load i64, i64* @jiffies, align 8
  %164 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %165 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %164, i32 0, i32 13
  store i64 %163, i64* %165, align 8
  %166 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %167 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %169 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %168, i32 0, i32 11
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %139, %23
  %173 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  %174 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %173, i32 0, i32 12
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load %struct.lm78_data*, %struct.lm78_data** %3, align 8
  ret %struct.lm78_data* %176
}

declare dso_local %struct.lm78_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @lm78_read_value(%struct.lm78_data*, i32) #1

declare dso_local i32 @LM78_REG_IN(i32) #1

declare dso_local i32 @LM78_REG_IN_MIN(i32) #1

declare dso_local i32 @LM78_REG_IN_MAX(i32) #1

declare dso_local i32 @LM78_REG_FAN(i32) #1

declare dso_local i32 @LM78_REG_FAN_MIN(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
