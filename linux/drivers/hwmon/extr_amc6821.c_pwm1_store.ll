; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_pwm1_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_pwm1_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@AMC6821_REG_DCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm1_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm1_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amc6821_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.amc6821_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.amc6821_data* %15, %struct.amc6821_data** %10, align 8
  %16 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %17 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtol(i8* %19, i32 10, i64* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %44

25:                                               ; preds = %4
  %26 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %27 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @clamp_val(i64 %29, i32 0, i32 255)
  %31 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %32 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %34 = load i32, i32* @AMC6821_REG_DCY, align 4
  %35 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %36 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %33, i32 %34, i32 %37)
  %39 = load %struct.amc6821_data*, %struct.amc6821_data** %10, align 8
  %40 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %25, %23
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.amc6821_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
