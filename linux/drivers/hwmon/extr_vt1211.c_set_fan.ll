; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32*, i32, i32*, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@VT1211_REG_FAN_DIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"fan div value %ld not supported. Choose one of 1, 2, 4, or 8.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown attr fetch (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fan(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt1211_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.vt1211_data* %18, %struct.vt1211_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute_2* %20, %struct.sensor_device_attribute_2** %11, align 8
  %21 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtoul(i8* %27, i32 10, i64* %15)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %5, align 4
  br label %154

33:                                               ; preds = %4
  %34 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %35 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %34, i32 0, i32 3
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %38 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %39 = call i32 @vt1211_read8(%struct.vt1211_data* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = ashr i32 %40, 4
  %42 = and i32 %41, 3
  %43 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %44 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %42, i32* %46, align 4
  %47 = load i32, i32* %14, align 4
  %48 = ashr i32 %47, 6
  %49 = and i32 %48, 3
  %50 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %51 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %14, align 4
  %55 = and i32 %54, 15
  %56 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %57 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %13, align 4
  switch i32 %58, label %143 [
    i32 128, label %59
    i32 129, label %86
  ]

59:                                               ; preds = %33
  %60 = load i64, i64* %15, align 8
  %61 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %62 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @RPM_TO_REG(i64 %60, i32 %67)
  %69 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %70 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  %75 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @VT1211_REG_FAN_MIN(i32 %76)
  %78 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %79 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @vt1211_write8(%struct.vt1211_data* %75, i32 %77, i32 %84)
  br label %147

86:                                               ; preds = %33
  %87 = load i64, i64* %15, align 8
  switch i64 %87, label %116 [
    i64 1, label %88
    i64 2, label %95
    i64 4, label %102
    i64 8, label %109
  ]

88:                                               ; preds = %86
  %89 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %90 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 0, i32* %94, align 4
  br label %122

95:                                               ; preds = %86
  %96 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %97 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 1, i32* %101, align 4
  br label %122

102:                                              ; preds = %86
  %103 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %104 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 2, i32* %108, align 4
  br label %122

109:                                              ; preds = %86
  %110 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %111 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 3, i32* %115, align 4
  br label %122

116:                                              ; preds = %86
  %117 = load i64, i64* @EINVAL, align 8
  %118 = sub i64 0, %117
  store i64 %118, i64* %9, align 8
  %119 = load %struct.device*, %struct.device** %6, align 8
  %120 = load i64, i64* %15, align 8
  %121 = call i32 @dev_warn(%struct.device* %119, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %120)
  br label %148

122:                                              ; preds = %109, %102, %95, %88
  %123 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %124 = load i32, i32* @VT1211_REG_FAN_DIV, align 4
  %125 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %126 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 6
  %131 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %132 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 4
  %137 = or i32 %130, %136
  %138 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %139 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %137, %140
  %142 = call i32 @vt1211_write8(%struct.vt1211_data* %123, i32 %124, i32 %141)
  br label %147

143:                                              ; preds = %33
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @dev_dbg(%struct.device* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %122, %59
  br label %148

148:                                              ; preds = %147, %116
  %149 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %150 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %149, i32 0, i32 3
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load i64, i64* %9, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %148, %31
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vt1211_read8(%struct.vt1211_data*, i32) #1

declare dso_local i32 @RPM_TO_REG(i64, i32) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i32) #1

declare dso_local i32 @VT1211_REG_FAN_MIN(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
