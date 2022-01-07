; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_offset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_offset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm95234_data = type { i64*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @offset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @offset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm95234_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.lm95234_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.lm95234_data* %15, %struct.lm95234_data** %10, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %21 = call i32 @lm95234_update_device(%struct.lm95234_data* %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %59

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtol(i8* %27, i32 10, i64* %13)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %5, align 4
  br label %59

33:                                               ; preds = %26
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @DIV_ROUND_CLOSEST(i64 %34, i32 500)
  %36 = call i64 @clamp_val(i32 %35, i32 -128, i32 127)
  store i64 %36, i64* %13, align 8
  %37 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %38 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %42 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %40, i64* %46, align 8
  %47 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %48 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @LM95234_REG_OFFSET(i32 %50)
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @i2c_smbus_write_byte_data(i32 %49, i32 %51, i64 %52)
  %54 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %55 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i64, i64* %9, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %33, %31, %24
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.lm95234_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @lm95234_update_device(%struct.lm95234_data*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @LM95234_REG_OFFSET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
