; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_pwm_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_pwm_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.abituguru_data = type { i64*, i32**, i32**, i32 }

@ABIT_UGURU_TEMP_SENSOR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_FAN_PWM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_sensor(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.abituguru_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute_2* %17, %struct.sensor_device_attribute_2** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.abituguru_data* %19, %struct.abituguru_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @kstrtoul(i8* %20, i32 10, i64* %13)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %5, align 8
  br label %138

26:                                               ; preds = %4
  %27 = load i64, i64* %13, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %32 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* @ABIT_UGURU_TEMP_SENSOR, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ugt i64 %30, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29, %26
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %5, align 8
  br label %138

41:                                               ; preds = %29
  %42 = load i64, i64* %13, align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %12, align 8
  %45 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %46 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %45, i32 0, i32 3
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %49 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %52 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32*, i32** %50, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %59 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %58, i32 0, i32 2
  %60 = load i32**, i32*** %59, align 8
  %61 = load i64, i64* @ABIT_UGURU_TEMP_SENSOR, align 8
  %62 = getelementptr inbounds i32*, i32** %60, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  %67 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %68 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %71 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 240
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %80 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %83 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32*, i32** %81, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %78
  store i32 %89, i32* %87, align 4
  %90 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %91 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %94 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32*, i32** %92, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %41
  %103 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %104 = load i64, i64* @ABIT_UGURU_FAN_PWM, align 8
  %105 = add nsw i64 %104, 1
  %106 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %107 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %110 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %113 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32*, i32** %111, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @abituguru_write(%struct.abituguru_data* %103, i64 %105, i64 %108, i32* %116, i32 5)
  %118 = icmp slt i32 %117, 1
  br i1 %118, label %119, label %132

119:                                              ; preds = %102
  %120 = load i32, i32* %14, align 4
  %121 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %122 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %125 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32*, i32** %123, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 %120, i32* %129, align 4
  %130 = load i64, i64* @EIO, align 8
  %131 = sub i64 0, %130
  store i64 %131, i64* %12, align 8
  br label %132

132:                                              ; preds = %119, %102
  br label %133

133:                                              ; preds = %132, %41
  %134 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %135 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %134, i32 0, i32 3
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i64, i64* %12, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %133, %38, %24
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @abituguru_write(%struct.abituguru_data*, i64, i64, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
