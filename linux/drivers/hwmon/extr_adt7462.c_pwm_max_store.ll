; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_pwm_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_pwm_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7462_data = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7462_REG_PWM_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pwm_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adt7462_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.adt7462_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.adt7462_data* %14, %struct.adt7462_data** %10, align 8
  %15 = load %struct.adt7462_data*, %struct.adt7462_data** %10, align 8
  %16 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %15, i32 0, i32 2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @kstrtol(i8* %18, i32 10, i64* %12)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %41

24:                                               ; preds = %4
  %25 = load i64, i64* %12, align 8
  %26 = call i64 @clamp_val(i64 %25, i32 0, i32 255)
  store i64 %26, i64* %12, align 8
  %27 = load %struct.adt7462_data*, %struct.adt7462_data** %10, align 8
  %28 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %27, i32 0, i32 1
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.adt7462_data*, %struct.adt7462_data** %10, align 8
  %32 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %34 = load i32, i32* @ADT7462_REG_PWM_MAX, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %33, i32 %34, i64 %35)
  %37 = load %struct.adt7462_data*, %struct.adt7462_data** %10, align 8
  %38 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %24, %21
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local %struct.adt7462_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
