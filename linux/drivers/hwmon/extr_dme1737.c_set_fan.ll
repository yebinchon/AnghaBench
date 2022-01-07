; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_set_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_set_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32*, i32*, i32*, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Fan type value %ld not supported. Choose one of 1, 2, or 4.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %176

32:                                               ; preds = %4
  %33 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %34 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %33, i32 0, i32 3
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %13, align 4
  switch i32 %36, label %165 [
    i32 129, label %37
    i32 130, label %104
    i32 128, label %126
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i64, i64* %14, align 8
  %42 = call i8* @FAN_TO_REG(i64 %41, i32 0)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %45 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %78

50:                                               ; preds = %37
  %51 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @DME1737_REG_FAN_OPT(i32 %52)
  %54 = call i32 @dme1737_read(%struct.dme1737_data* %51, i32 %53)
  %55 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %56 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %63 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @FAN_TPC_FROM_REG(i32 %68)
  %70 = call i8* @FAN_TO_REG(i64 %61, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %73 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %50, %40
  %79 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @DME1737_REG_FAN_MIN(i32 %80)
  %82 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %83 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = call i32 @dme1737_write(%struct.dme1737_data* %79, i32 %81, i32 %89)
  %91 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @DME1737_REG_FAN_MIN(i32 %92)
  %94 = add nsw i32 %93, 1
  %95 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %96 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 8
  %103 = call i32 @dme1737_write(%struct.dme1737_data* %91, i32 %94, i32 %102)
  br label %169

104:                                              ; preds = %32
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @FAN_MAX_TO_REG(i64 %105)
  %107 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %108 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %106, i32* %113, align 4
  %114 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @DME1737_REG_FAN_MAX(i32 %115)
  %117 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %118 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sub nsw i32 %120, 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dme1737_write(%struct.dme1737_data* %114, i32 %116, i32 %124)
  br label %169

126:                                              ; preds = %32
  %127 = load i64, i64* %14, align 8
  %128 = icmp eq i64 %127, 1
  br i1 %128, label %141, label %129

129:                                              ; preds = %126
  %130 = load i64, i64* %14, align 8
  %131 = icmp eq i64 %130, 2
  br i1 %131, label %141, label %132

132:                                              ; preds = %129
  %133 = load i64, i64* %14, align 8
  %134 = icmp eq i64 %133, 4
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* @EINVAL, align 8
  %137 = sub i64 0, %136
  store i64 %137, i64* %9, align 8
  %138 = load %struct.device*, %struct.device** %6, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i32 @dev_warn(%struct.device* %138, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %139)
  br label %170

141:                                              ; preds = %132, %129, %126
  %142 = load i64, i64* %14, align 8
  %143 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @DME1737_REG_FAN_OPT(i32 %144)
  %146 = call i32 @dme1737_read(%struct.dme1737_data* %143, i32 %145)
  %147 = call i32 @FAN_TYPE_TO_REG(i64 %142, i32 %146)
  %148 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %149 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @DME1737_REG_FAN_OPT(i32 %155)
  %157 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %158 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @dme1737_write(%struct.dme1737_data* %154, i32 %156, i32 %163)
  br label %169

165:                                              ; preds = %32
  %166 = load %struct.device*, %struct.device** %6, align 8
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @dev_dbg(%struct.device* %166, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %165, %141, %104, %78
  br label %170

170:                                              ; preds = %169, %135
  %171 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %172 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %171, i32 0, i32 3
  %173 = call i32 @mutex_unlock(i32* %172)
  %174 = load i64, i64* %9, align 8
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %170, %30
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @dme1737_read(%struct.dme1737_data*, i32) #1

declare dso_local i32 @DME1737_REG_FAN_OPT(i32) #1

declare dso_local i32 @FAN_TPC_FROM_REG(i32) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i32) #1

declare dso_local i32 @DME1737_REG_FAN_MIN(i32) #1

declare dso_local i32 @FAN_MAX_TO_REG(i64) #1

declare dso_local i32 @DME1737_REG_FAN_MAX(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @FAN_TYPE_TO_REG(i64, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
