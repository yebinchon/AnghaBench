; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_temp_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm85.c_temp_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm85_data = type { i32, i32*, %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @temp_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lm85_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.lm85_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.lm85_data* %20, %struct.lm85_data** %11, align 8
  %21 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %22 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %21, i32 0, i32 2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtol(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %65

30:                                               ; preds = %4
  %31 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %32 = call i64 @IS_ADT7468_OFF64(%struct.lm85_data* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i64, i64* %13, align 8
  %36 = add nsw i64 %35, 64
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %39 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @TEMP_TO_REG(i64 %41)
  %43 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %44 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @LM85_REG_TEMP_MAX(i32 %50)
  %52 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %53 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lm85_write_value(%struct.i2c_client* %49, i32 %51, i32 %58)
  %60 = load %struct.lm85_data*, %struct.lm85_data** %11, align 8
  %61 = getelementptr inbounds %struct.lm85_data, %struct.lm85_data* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %37, %28
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.lm85_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i64 @IS_ADT7468_OFF64(%struct.lm85_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @lm85_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @LM85_REG_TEMP_MAX(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
