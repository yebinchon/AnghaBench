; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.smsc47m1_data = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMSC47M1_REG_PWM = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.smsc47m1_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.smsc47m1_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.smsc47m1_data* %18, %struct.smsc47m1_data** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtol(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %78

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %13, align 8
  %33 = icmp sgt i64 %32, 255
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %78

37:                                               ; preds = %31
  %38 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %39 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %42 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 129
  store i32 %48, i32* %46, align 4
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @PWM_TO_REG(i64 %49)
  %51 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %52 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %50
  store i32 %58, i32* %56, align 4
  %59 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %60 = load i32*, i32** @SMSC47M1_REG_PWM, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %66 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %59, i32 %64, i32 %71)
  %73 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %74 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %37, %34, %26
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.smsc47m1_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PWM_TO_REG(i64) #1

declare dso_local i32 @smsc47m1_write_value(%struct.smsc47m1_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
