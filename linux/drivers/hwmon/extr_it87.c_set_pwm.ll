; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i32*, i32*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@IT87_REG_PWM_DUTY = common dso_local global i32* null, align 8
@IT87_REG_PWM = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.it87_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.it87_data* %17, %struct.it87_data** %11, align 8
  %18 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtol(i8* %21, i32 10, i64* %13)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %13, align 8
  %29 = icmp sgt i64 %28, 255
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %24, %4
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %138

33:                                               ; preds = %27
  %34 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %35 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %34, i32 0, i32 2
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @it87_update_pwm_ctrl(%struct.it87_data* %37, i32 %38)
  %40 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %41 = call i64 @has_newer_autopwm(%struct.it87_data* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %33
  %44 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %45 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %55 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* @EBUSY, align 8
  %58 = sub i64 0, %57
  store i64 %58, i64* %5, align 8
  br label %138

59:                                               ; preds = %43
  %60 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i8* @pwm_to_reg(%struct.it87_data* %60, i64 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %65 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %71 = load i32*, i32** @IT87_REG_PWM_DUTY, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %77 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @it87_write_value(%struct.it87_data* %70, i32 %75, i32 %82)
  br label %133

84:                                               ; preds = %33
  %85 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i8* @pwm_to_reg(%struct.it87_data* %85, i64 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %90 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  %95 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %96 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 128
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %132, label %104

104:                                              ; preds = %84
  %105 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %106 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %113 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %119 = load i32*, i32** @IT87_REG_PWM, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %125 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @it87_write_value(%struct.it87_data* %118, i32 %123, i32 %130)
  br label %132

132:                                              ; preds = %104, %84
  br label %133

133:                                              ; preds = %132, %59
  %134 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %135 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %5, align 8
  br label %138

138:                                              ; preds = %133, %53, %30
  %139 = load i64, i64* %5, align 8
  ret i64 %139
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_update_pwm_ctrl(%struct.it87_data*, i32) #1

declare dso_local i64 @has_newer_autopwm(%struct.it87_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @pwm_to_reg(%struct.it87_data*, i64) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
