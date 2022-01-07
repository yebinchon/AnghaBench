; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_pwm_auto_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_pwm_auto_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adt7462_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_auto_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_auto_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.adt7462_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %14)
  store %struct.sensor_device_attribute* %15, %struct.sensor_device_attribute** %10, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.adt7462_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.adt7462_data* %17, %struct.adt7462_data** %11, align 8
  %18 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %19 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %18, i32 0, i32 0
  %20 = load %struct.i2c_client*, %struct.i2c_client** %19, align 8
  store %struct.i2c_client* %20, %struct.i2c_client** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @kstrtol(i8* %21, i32 10, i64* %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %48

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  switch i64 %28, label %45 [
    i64 0, label %29
    i64 1, label %37
  ]

29:                                               ; preds = %27
  %30 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %31 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %32 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %33 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @set_pwm_channel(%struct.i2c_client* %30, %struct.adt7462_data* %31, i32 %34, i32 4)
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %5, align 8
  br label %48

37:                                               ; preds = %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %39 = load %struct.adt7462_data*, %struct.adt7462_data** %11, align 8
  %40 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %41 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @set_pwm_channel(%struct.i2c_client* %38, %struct.adt7462_data* %39, i32 %42, i32 7)
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %5, align 8
  br label %48

45:                                               ; preds = %27
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %45, %37, %29, %24
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7462_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @set_pwm_channel(%struct.i2c_client*, %struct.adt7462_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
