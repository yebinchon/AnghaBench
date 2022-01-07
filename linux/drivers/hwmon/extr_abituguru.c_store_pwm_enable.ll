; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru.c_store_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i64 }
%struct.abituguru_data = type { i64**, i32 }

@ABIT_UGURU_FAN_PWM_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ABIT_UGURU_FAN_PWM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm_enable(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.abituguru_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.abituguru_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.abituguru_data* %18, %struct.abituguru_data** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtoul(i8* %19, i32 10, i64* %14)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %5, align 8
  br label %119

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %28 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %31 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %30, i32 0, i32 0
  %32 = load i64**, i64*** %31, align 8
  %33 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %34 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64*, i64** %32, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %14, align 8
  switch i64 %40, label %68 [
    i64 0, label %41
    i64 2, label %55
  ]

41:                                               ; preds = %25
  %42 = load i64, i64* @ABIT_UGURU_FAN_PWM_ENABLE, align 8
  %43 = xor i64 %42, -1
  %44 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %45 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %44, i32 0, i32 0
  %46 = load i64**, i64*** %45, align 8
  %47 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %48 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64*, i64** %46, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = and i64 %53, %43
  store i64 %54, i64* %52, align 8
  br label %71

55:                                               ; preds = %25
  %56 = load i64, i64* @ABIT_UGURU_FAN_PWM_ENABLE, align 8
  %57 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %58 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %57, i32 0, i32 0
  %59 = load i64**, i64*** %58, align 8
  %60 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %61 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i64*, i64** %59, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %56
  store i64 %67, i64* %65, align 8
  br label %71

68:                                               ; preds = %25
  %69 = load i64, i64* @EINVAL, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %68, %55, %41
  %72 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %73 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %72, i32 0, i32 0
  %74 = load i64**, i64*** %73, align 8
  %75 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %76 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64*, i64** %74, i64 %77
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %71
  %85 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %86 = load i64, i64* @ABIT_UGURU_FAN_PWM, align 8
  %87 = add nsw i64 %86, 1
  %88 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %89 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %92 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %91, i32 0, i32 0
  %93 = load i64**, i64*** %92, align 8
  %94 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %95 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64*, i64** %93, i64 %96
  %98 = load i64*, i64** %97, align 8
  %99 = call i32 @abituguru_write(%struct.abituguru_data* %85, i64 %87, i64 %90, i64* %98, i32 5)
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %114

101:                                              ; preds = %84
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %104 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %103, i32 0, i32 0
  %105 = load i64**, i64*** %104, align 8
  %106 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %107 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64*, i64** %105, i64 %108
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  store i64 %102, i64* %111, align 8
  %112 = load i64, i64* @EIO, align 8
  %113 = sub i64 0, %112
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %101, %84, %71
  %115 = load %struct.abituguru_data*, %struct.abituguru_data** %11, align 8
  %116 = getelementptr inbounds %struct.abituguru_data, %struct.abituguru_data* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i64, i64* %13, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %114, %23
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.abituguru_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @abituguru_write(%struct.abituguru_data*, i64, i64, i64*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
