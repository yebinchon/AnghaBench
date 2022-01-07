; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_fan_div_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_fan_div_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt8231_data = type { i32*, i32*, i32 }
%struct.sensor_device_attribute = type { i32 }

@VT8231_REG_FANDIV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_div_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_div_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt8231_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.vt8231_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.vt8231_data* %18, %struct.vt8231_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %25 = load i32, i32* @VT8231_REG_FANDIV, align 4
  %26 = call i32 @vt8231_read_value(%struct.vt8231_data* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %28 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %35 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DIV_FROM_REG(i32 %40)
  %42 = call i64 @FAN_FROM_REG(i32 %33, i32 %41)
  store i64 %42, i64* %15, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @kstrtoul(i8* %43, i32 10, i64* %12)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %5, align 4
  br label %144

49:                                               ; preds = %4
  %50 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %51 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %50, i32 0, i32 2
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load i64, i64* %12, align 8
  switch i64 %53, label %82 [
    i64 1, label %54
    i64 2, label %61
    i64 4, label %68
    i64 8, label %75
  ]

54:                                               ; preds = %49
  %55 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %56 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 0, i32* %60, align 4
  br label %91

61:                                               ; preds = %49
  %62 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %63 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 1, i32* %67, align 4
  br label %91

68:                                               ; preds = %49
  %69 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %70 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 2, i32* %74, align 4
  br label %91

75:                                               ; preds = %49
  %76 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %77 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 3, i32* %81, align 4
  br label %91

82:                                               ; preds = %49
  %83 = load %struct.device*, %struct.device** %6, align 8
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @dev_err(%struct.device* %83, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %84)
  %86 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %87 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %144

91:                                               ; preds = %75, %68, %61, %54
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %94 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @DIV_FROM_REG(i32 %99)
  %101 = call i32 @FAN_TO_REG(i64 %92, i32 %100)
  %102 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %103 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @VT8231_REG_FAN_MIN(i32 %109)
  %111 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %112 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @vt8231_write_value(%struct.vt8231_data* %108, i32 %110, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = and i32 %119, 15
  %121 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %122 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 6
  %127 = or i32 %120, %126
  %128 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %129 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 4
  %134 = or i32 %127, %133
  store i32 %134, i32* %14, align 4
  %135 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %136 = load i32, i32* @VT8231_REG_FANDIV, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @vt8231_write_value(%struct.vt8231_data* %135, i32 %136, i32 %137)
  %139 = load %struct.vt8231_data*, %struct.vt8231_data** %10, align 8
  %140 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %139, i32 0, i32 2
  %141 = call i32 @mutex_unlock(i32* %140)
  %142 = load i64, i64* %9, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %91, %82, %47
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local %struct.vt8231_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @vt8231_read_value(%struct.vt8231_data*, i32) #1

declare dso_local i64 @FAN_FROM_REG(i32, i32) #1

declare dso_local i32 @DIV_FROM_REG(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @FAN_TO_REG(i64, i32) #1

declare dso_local i32 @vt8231_write_value(%struct.vt8231_data*, i32, i32) #1

declare dso_local i32 @VT8231_REG_FAN_MIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
