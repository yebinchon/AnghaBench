; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_tcrit1_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm95234.c_tcrit1_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm95234_data = type { i64, i32, i32, i64* }
%struct.TYPE_2__ = type { i32 }

@LM95234_REG_TCRIT_HYST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @tcrit1_hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcrit1_hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %66

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
  br label %66

33:                                               ; preds = %26
  %34 = load i64, i64* %13, align 8
  %35 = call i64 @DIV_ROUND_CLOSEST(i64 %34, i32 1000)
  store i64 %35, i64* %13, align 8
  %36 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %37 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %36, i32 0, i32 3
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %13, align 8
  %46 = sub nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @clamp_val(i32 %47, i32 0, i32 31)
  store i64 %48, i64* %13, align 8
  %49 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %50 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %54 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %56 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LM95234_REG_TCRIT_HYST, align 4
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @i2c_smbus_write_byte_data(i32 %57, i32 %58, i64 %59)
  %61 = load %struct.lm95234_data*, %struct.lm95234_data** %10, align 8
  %62 = getelementptr inbounds %struct.lm95234_data, %struct.lm95234_data* %61, i32 0, i32 1
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i64, i64* %9, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %33, %31, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.lm95234_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @lm95234_update_device(%struct.lm95234_data*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
