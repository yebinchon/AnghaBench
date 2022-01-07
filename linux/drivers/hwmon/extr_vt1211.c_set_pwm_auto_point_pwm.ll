; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_pwm_auto_point_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt1211.c_set_pwm_auto_point_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.vt1211_data = type { i32, i32** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_auto_point_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pwm_auto_point_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vt1211_data*, align 8
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
  %17 = call %struct.vt1211_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.vt1211_data* %17, %struct.vt1211_data** %10, align 8
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
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %5, align 4
  br label %69

32:                                               ; preds = %4
  %33 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %34 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @clamp_val(i64 %36, i32 0, i32 255)
  %38 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %39 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %37, i32* %47, align 4
  %48 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @VT1211_REG_PWM_AUTO_PWM(i32 %49, i32 %50)
  %52 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %53 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @vt1211_write8(%struct.vt1211_data* %48, i32 %51, i32 %62)
  %64 = load %struct.vt1211_data*, %struct.vt1211_data** %10, align 8
  %65 = getelementptr inbounds %struct.vt1211_data, %struct.vt1211_data* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %32, %30
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.vt1211_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @vt1211_write8(%struct.vt1211_data*, i32, i32) #1

declare dso_local i32 @VT1211_REG_PWM_AUTO_PWM(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
