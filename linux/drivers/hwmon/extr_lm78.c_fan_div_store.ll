; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm78.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm78.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.lm78_data = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LM78_REG_VID_FANDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.lm78_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.lm78_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.lm78_data* %20, %struct.lm78_data** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %15)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %5, align 4
  br label %154

30:                                               ; preds = %4
  %31 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %32 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %35 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %42 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DIV_FROM_REG(i32 %47)
  %49 = call i64 @FAN_FROM_REG(i32 %40, i32 %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %15, align 8
  switch i64 %50, label %79 [
    i64 1, label %51
    i64 2, label %58
    i64 4, label %65
    i64 8, label %72
  ]

51:                                               ; preds = %30
  %52 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %53 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 0, i32* %57, align 4
  br label %88

58:                                               ; preds = %30
  %59 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %60 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 1, i32* %64, align 4
  br label %88

65:                                               ; preds = %30
  %66 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %67 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 2, i32* %71, align 4
  br label %88

72:                                               ; preds = %30
  %73 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %74 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 3, i32* %78, align 4
  br label %88

79:                                               ; preds = %30
  %80 = load %struct.device*, %struct.device** %6, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i32 @dev_err(%struct.device* %80, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %81)
  %83 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %84 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %154

88:                                               ; preds = %72, %65, %58, %51
  %89 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %90 = load i32, i32* @LM78_REG_VID_FANDIV, align 4
  %91 = call i32 @lm78_read_value(%struct.lm78_data* %89, i32 %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %12, align 4
  switch i32 %92, label %117 [
    i32 0, label %93
    i32 1, label %105
  ]

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %94, 207
  %96 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %97 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 4
  %104 = or i32 %95, %103
  store i32 %104, i32* %14, align 4
  br label %117

105:                                              ; preds = %88
  %106 = load i32, i32* %14, align 4
  %107 = and i32 %106, 63
  %108 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %109 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 6
  %116 = or i32 %107, %115
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %88, %105, %93
  %118 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %119 = load i32, i32* @LM78_REG_VID_FANDIV, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @lm78_write_value(%struct.lm78_data* %118, i32 %119, i32 %120)
  %122 = load i64, i64* %13, align 8
  %123 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %124 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @DIV_FROM_REG(i32 %129)
  %131 = call i32 @FAN_TO_REG(i64 %122, i32 %130)
  %132 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %133 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @LM78_REG_FAN_MIN(i32 %139)
  %141 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %142 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @lm78_write_value(%struct.lm78_data* %138, i32 %140, i32 %147)
  %149 = load %struct.lm78_data*, %struct.lm78_data** %11, align 8
  %150 = getelementptr inbounds %struct.lm78_data, %struct.lm78_data* %149, i32 0, i32 2
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i64, i64* %9, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %117, %79, %28
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm78_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lm78_read_value(%struct.lm78_data*, i32) #1

declare dso_local i32 @lm78_write_value(%struct.lm78_data*, i32, i32) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @LM78_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
