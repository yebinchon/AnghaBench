; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_fan_pulses_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tc654.c_fan_pulses_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.tc654_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TC654_FAN_PULSE_SHIFT = common dso_local global i32* null, align 8
@TC654_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_pulses_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_pulses_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tc654_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.tc654_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.tc654_data* %21, %struct.tc654_data** %11, align 8
  %22 = load %struct.tc654_data*, %struct.tc654_data** %11, align 8
  %23 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %22, i32 0, i32 2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @kstrtoul(i8* %25, i32 10, i64* %14)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %85

31:                                               ; preds = %4
  %32 = load i64, i64* %14, align 8
  switch i64 %32, label %37 [
    i64 1, label %33
    i64 2, label %34
    i64 4, label %35
    i64 8, label %36
  ]

33:                                               ; preds = %31
  store i32 0, i32* %13, align 4
  br label %40

34:                                               ; preds = %31
  store i32 1, i32* %13, align 4
  br label %40

35:                                               ; preds = %31
  store i32 2, i32* %13, align 4
  br label %40

36:                                               ; preds = %31
  store i32 3, i32* %13, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %85

40:                                               ; preds = %36, %35, %34, %33
  %41 = load %struct.tc654_data*, %struct.tc654_data** %11, align 8
  %42 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32*, i32** @TC654_FAN_PULSE_SHIFT, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 3, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.tc654_data*, %struct.tc654_data** %11, align 8
  %52 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** @TC654_FAN_PULSE_SHIFT, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %55, %60
  %62 = load %struct.tc654_data*, %struct.tc654_data** %11, align 8
  %63 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %67 = load i32, i32* @TC654_REG_CONFIG, align 4
  %68 = load %struct.tc654_data*, %struct.tc654_data** %11, align 8
  %69 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %66, i32 %67, i32 %70)
  store i32 %71, i32* %15, align 4
  %72 = load %struct.tc654_data*, %struct.tc654_data** %11, align 8
  %73 = getelementptr inbounds %struct.tc654_data, %struct.tc654_data* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %40
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  br label %82

80:                                               ; preds = %40
  %81 = load i64, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i64 [ %79, %77 ], [ %81, %80 ]
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %37, %28
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.tc654_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
