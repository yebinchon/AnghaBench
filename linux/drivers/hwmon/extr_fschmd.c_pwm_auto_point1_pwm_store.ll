; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_pwm_auto_point1_pwm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_pwm_auto_point1_pwm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fschmd_data = type { i64, i64*, i32 }
%struct.TYPE_2__ = type { i32 }

@fscsyl = common dso_local global i64 0, align 8
@FSCHMD_REG_FAN_MIN = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_auto_point1_pwm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_auto_point1_pwm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fschmd_data*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %15 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.fschmd_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.fschmd_data* %19, %struct.fschmd_data** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtoul(i8* %20, i32 10, i64* %12)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %5, align 4
  br label %72

26:                                               ; preds = %4
  %27 = load i64, i64* %12, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %31 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @fscsyl, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29, %26
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @clamp_val(i64 %36, i32 128, i32 255)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = sub i64 %38, 128
  %40 = mul i64 %39, 2
  %41 = add i64 %40, 1
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %35, %29
  %43 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %44 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @to_i2c_client(%struct.device* %46)
  %48 = load i32**, i32*** @FSCHMD_REG_FAN_MIN, align 8
  %49 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %50 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32*, i32** %48, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @i2c_smbus_write_byte_data(i32 %47, i32 %57, i64 %58)
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %62 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  %67 = load %struct.fschmd_data*, %struct.fschmd_data** %11, align 8
  %68 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %67, i32 0, i32 2
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %42, %24
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.fschmd_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
