; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_store_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_store_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32 }
%struct.nct6683_data = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@NCT6683_REG_FAN_CFG_CTRL = common dso_local global i32 0, align 4
@NCT6683_FAN_CFG_REQ = common dso_local global i64 0, align 8
@NCT6683_FAN_CFG_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca %struct.nct6683_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute_2* %15, %struct.sensor_device_attribute_2** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.nct6683_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.nct6683_data* %17, %struct.nct6683_data** %11, align 8
  %18 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %19 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtoul(i8* %21, i32 10, i64* %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = icmp ugt i64 %25, 255
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %4
  %28 = load i64, i64* @EINVAL, align 8
  %29 = sub i64 0, %28
  store i64 %29, i64* %5, align 8
  br label %52

30:                                               ; preds = %24
  %31 = load %struct.nct6683_data*, %struct.nct6683_data** %11, align 8
  %32 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.nct6683_data*, %struct.nct6683_data** %11, align 8
  %35 = load i32, i32* @NCT6683_REG_FAN_CFG_CTRL, align 4
  %36 = load i64, i64* @NCT6683_FAN_CFG_REQ, align 8
  %37 = call i32 @nct6683_write(%struct.nct6683_data* %34, i32 %35, i64 %36)
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  %39 = load %struct.nct6683_data*, %struct.nct6683_data** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @NCT6683_REG_PWM_WRITE(i32 %40)
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @nct6683_write(%struct.nct6683_data* %39, i32 %41, i64 %42)
  %44 = load %struct.nct6683_data*, %struct.nct6683_data** %11, align 8
  %45 = load i32, i32* @NCT6683_REG_FAN_CFG_CTRL, align 4
  %46 = load i64, i64* @NCT6683_FAN_CFG_DONE, align 8
  %47 = call i32 @nct6683_write(%struct.nct6683_data* %44, i32 %45, i64 %46)
  %48 = load %struct.nct6683_data*, %struct.nct6683_data** %11, align 8
  %49 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %30, %27
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.nct6683_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6683_write(%struct.nct6683_data*, i32, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @NCT6683_REG_PWM_WRITE(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
