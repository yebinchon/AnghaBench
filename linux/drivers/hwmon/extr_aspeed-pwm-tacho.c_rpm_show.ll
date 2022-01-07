; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_rpm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_rpm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.aspeed_pwm_tacho_data = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @rpm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %8, align 8
  %14 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %15 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.aspeed_pwm_tacho_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.aspeed_pwm_tacho_data* %18, %struct.aspeed_pwm_tacho_data** %11, align 8
  %19 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @aspeed_get_fan_tach_ch_rpm(%struct.aspeed_pwm_tacho_data* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %30

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.aspeed_pwm_tacho_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @aspeed_get_fan_tach_ch_rpm(%struct.aspeed_pwm_tacho_data*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
