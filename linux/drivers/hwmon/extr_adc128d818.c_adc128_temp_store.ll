; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_temp_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adc128d818.c_adc128_temp_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.adc128_data = type { i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ADC128_REG_TEMP_MAX = common dso_local global i32 0, align 4
@ADC128_REG_TEMP_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @adc128_temp_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc128_temp_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adc128_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.adc128_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.adc128_data* %16, %struct.adc128_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @kstrtol(i8* %21, i32 10, i64* %12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %60

27:                                               ; preds = %4
  %28 = load %struct.adc128_data*, %struct.adc128_data** %10, align 8
  %29 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @DIV_ROUND_CLOSEST(i64 %31, i32 1000)
  %33 = call i32 @clamp_val(i32 %32, i32 -128, i32 127)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, 1
  %36 = load %struct.adc128_data*, %struct.adc128_data** %10, align 8
  %37 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.adc128_data*, %struct.adc128_data** %10, align 8
  %43 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = load i32, i32* @ADC128_REG_TEMP_MAX, align 4
  br label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @ADC128_REG_TEMP_HYST, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @i2c_smbus_write_byte_data(i32 %44, i32 %52, i32 %53)
  %55 = load %struct.adc128_data*, %struct.adc128_data** %10, align 8
  %56 = getelementptr inbounds %struct.adc128_data, %struct.adc128_data* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %25
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.adc128_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
