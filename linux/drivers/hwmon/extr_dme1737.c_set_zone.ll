; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_set_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dme1737.c_set_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.dme1737_data = type { i32, i8**, i8**, i8**, i8** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown function %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_zone(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.dme1737_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.dme1737_data* %19, %struct.dme1737_data** %10, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %21 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %20)
  store %struct.sensor_device_attribute_2* %21, %struct.sensor_device_attribute_2** %11, align 8
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %26 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @kstrtol(i8* %28, i32 10, i64* %14)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %5, align 4
  br label %193

34:                                               ; preds = %4
  %35 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %36 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %13, align 4
  switch i32 %38, label %183 [
    i32 130, label %39
    i32 131, label %92
    i32 129, label %112
    i32 128, label %163
  ]

39:                                               ; preds = %34
  %40 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @DME1737_REG_ZONE_LOW(i32 %41)
  %43 = call i8* @dme1737_read(%struct.dme1737_data* %40, i32 %42)
  %44 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %45 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %44, i32 0, i32 3
  %46 = load i8**, i8*** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %43, i8** %49, align 8
  %50 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %51 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @TEMP_FROM_REG(i8* %56, i32 8)
  store i32 %57, i32* %15, align 4
  %58 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 2
  %61 = zext i1 %60 to i32
  %62 = call i32 @DME1737_REG_ZONE_HYST(i32 %61)
  %63 = call i8* @dme1737_read(%struct.dme1737_data* %58, i32 %62)
  store i8* %63, i8** %17, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i64, i64* %14, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %17, align 8
  %68 = call i8* @TEMP_HYST_TO_REG(i32 %64, i64 %65, i32 %66, i8* %67)
  %69 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %70 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %71, i64 %75
  store i8* %68, i8** %76, align 8
  %77 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 2
  %80 = zext i1 %79 to i32
  %81 = call i32 @DME1737_REG_ZONE_HYST(i32 %80)
  %82 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %83 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %82, i32 0, i32 4
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %84, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @dme1737_write(%struct.dme1737_data* %77, i32 %81, i8* %90)
  br label %187

92:                                               ; preds = %34
  %93 = load i64, i64* %14, align 8
  %94 = call i8* @TEMP_TO_REG(i64 %93)
  %95 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %96 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %95, i32 0, i32 3
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %94, i8** %100, align 8
  %101 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @DME1737_REG_ZONE_LOW(i32 %102)
  %104 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %105 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %104, i32 0, i32 3
  %106 = load i8**, i8*** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @dme1737_write(%struct.dme1737_data* %101, i32 %103, i8* %110)
  br label %187

112:                                              ; preds = %34
  %113 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @DME1737_REG_ZONE_LOW(i32 %114)
  %116 = call i8* @dme1737_read(%struct.dme1737_data* %113, i32 %115)
  %117 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %118 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %117, i32 0, i32 3
  %119 = load i8**, i8*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  store i8* %116, i8** %122, align 8
  %123 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %124 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %123, i32 0, i32 3
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @TEMP_FROM_REG(i8* %129, i32 8)
  store i32 %130, i32* %15, align 4
  %131 = load i64, i64* %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 80000
  %135 = call i64 @clamp_val(i64 %131, i32 %132, i32 %134)
  store i64 %135, i64* %14, align 8
  %136 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @DME1737_REG_PWM_FREQ(i32 %137)
  %139 = call i8* @dme1737_read(%struct.dme1737_data* %136, i32 %138)
  store i8* %139, i8** %17, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = sub nsw i64 %140, %142
  %144 = load i8*, i8** %17, align 8
  %145 = call i8* @TEMP_RANGE_TO_REG(i64 %143, i8* %144)
  %146 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %147 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %146, i32 0, i32 2
  %148 = load i8**, i8*** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8* %145, i8** %151, align 8
  %152 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @DME1737_REG_PWM_FREQ(i32 %153)
  %155 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %156 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %155, i32 0, i32 2
  %157 = load i8**, i8*** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @dme1737_write(%struct.dme1737_data* %152, i32 %154, i8* %161)
  br label %187

163:                                              ; preds = %34
  %164 = load i64, i64* %14, align 8
  %165 = call i8* @TEMP_TO_REG(i64 %164)
  %166 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %167 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %166, i32 0, i32 1
  %168 = load i8**, i8*** %167, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8*, i8** %168, i64 %170
  store i8* %165, i8** %171, align 8
  %172 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @DME1737_REG_ZONE_ABS(i32 %173)
  %175 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %176 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %175, i32 0, i32 1
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @dme1737_write(%struct.dme1737_data* %172, i32 %174, i8* %181)
  br label %187

183:                                              ; preds = %34
  %184 = load %struct.device*, %struct.device** %6, align 8
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @dev_dbg(%struct.device* %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %183, %163, %112, %92, %39
  %188 = load %struct.dme1737_data*, %struct.dme1737_data** %10, align 8
  %189 = getelementptr inbounds %struct.dme1737_data, %struct.dme1737_data* %188, i32 0, i32 0
  %190 = call i32 @mutex_unlock(i32* %189)
  %191 = load i64, i64* %9, align 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %187, %32
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local %struct.dme1737_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @dme1737_read(%struct.dme1737_data*, i32) #1

declare dso_local i32 @DME1737_REG_ZONE_LOW(i32) #1

declare dso_local i32 @TEMP_FROM_REG(i8*, i32) #1

declare dso_local i32 @DME1737_REG_ZONE_HYST(i32) #1

declare dso_local i8* @TEMP_HYST_TO_REG(i32, i64, i32, i8*) #1

declare dso_local i32 @dme1737_write(%struct.dme1737_data*, i32, i8*) #1

declare dso_local i8* @TEMP_TO_REG(i64) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @DME1737_REG_PWM_FREQ(i32) #1

declare dso_local i8* @TEMP_RANGE_TO_REG(i64, i8*) #1

declare dso_local i32 @DME1737_REG_ZONE_ABS(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
