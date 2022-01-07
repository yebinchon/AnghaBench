; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.aspeed_pwm_tacho_data = type { i64* }

@PWM_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.aspeed_pwm_tacho_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.aspeed_pwm_tacho_data* %21, %struct.aspeed_pwm_tacho_data** %13, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %14)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %65

28:                                               ; preds = %4
  %29 = load i64, i64* %14, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @PWM_MAX, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %65

38:                                               ; preds = %31
  %39 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %13, align 8
  %40 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %65

51:                                               ; preds = %38
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %13, align 8
  %54 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  %59 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %13, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @aspeed_set_pwm_port_fan_ctrl(%struct.aspeed_pwm_tacho_data* %59, i32 %60, i64 %61)
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %51, %48, %35, %26
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.aspeed_pwm_tacho_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @aspeed_set_pwm_port_fan_ctrl(%struct.aspeed_pwm_tacho_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
