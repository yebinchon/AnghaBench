; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_pwm_tmax_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_pwm_tmax_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.adt7462_data = type { i32*, i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADT7462_PWM_RANGE_SHIFT = common dso_local global i32 0, align 4
@ADT7462_PWM_HYST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pwm_tmax_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_tmax_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca %struct.adt7462_data*, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %11, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.adt7462_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.adt7462_data* %20, %struct.adt7462_data** %12, align 8
  %21 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %22 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %21, i32 0, i32 3
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @kstrtol(i8* %24, i32 10, i64* %16)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %89

30:                                               ; preds = %4
  %31 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %32 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %35 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 64
  %40 = mul nsw i32 %39, 1000
  store i32 %40, i32* %14, align 4
  %41 = load i64, i64* %16, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %41, %43
  %45 = call i32 @find_trange_value(i64 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %30
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %5, align 4
  br label %89

50:                                               ; preds = %30
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @ADT7462_PWM_RANGE_SHIFT, align 4
  %53 = shl i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %55 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %58 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ADT7462_PWM_HYST_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %67 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %66, i32 0, i32 2
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %71 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %74 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %69, i32* %76, align 4
  %77 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %78 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %79 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @ADT7462_REG_PWM_TRANGE(i64 %80)
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %77, i32 %81, i32 %82)
  %84 = load %struct.adt7462_data*, %struct.adt7462_data** %12, align 8
  %85 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %84, i32 0, i32 2
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %50, %48, %27
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7462_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @find_trange_value(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ADT7462_REG_PWM_TRANGE(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
