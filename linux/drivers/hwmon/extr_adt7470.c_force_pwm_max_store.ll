; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_force_pwm_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_force_pwm_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adt7470_data = type { i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ADT7470_REG_CFG = common dso_local global i32 0, align 4
@ADT7470_FSPD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @force_pwm_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @force_pwm_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adt7470_data*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.adt7470_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.adt7470_data* %15, %struct.adt7470_data** %10, align 8
  %16 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %17 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %16, i32 0, i32 2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @kstrtol(i8* %19, i32 10, i64* %12)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %55

25:                                               ; preds = %4
  %26 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %27 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i64, i64* %12, align 8
  %30 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %31 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %33 = load i32, i32* @ADT7470_REG_CFG, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i64, i64* %12, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @ADT7470_FSPD_MASK, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %46

41:                                               ; preds = %25
  %42 = load i32, i32* @ADT7470_FSPD_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %13, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %48 = load i32, i32* @ADT7470_REG_CFG, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %47, i32 %48, i32 %49)
  %51 = load %struct.adt7470_data*, %struct.adt7470_data** %10, align 8
  %52 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %46, %22
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.adt7470_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
