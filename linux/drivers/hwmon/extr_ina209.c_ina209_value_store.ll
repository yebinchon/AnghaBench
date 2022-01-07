; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_value_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_value_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ina209_data = type { i32*, i32, i32 }
%struct.sensor_device_attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ina209_value_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina209_value_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ina209_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.ina209_data* @ina209_update_device(%struct.device* %15)
  store %struct.ina209_data* %16, %struct.ina209_data** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %23 = call i64 @IS_ERR(%struct.ina209_data* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %27 = call i32 @PTR_ERR(%struct.ina209_data* %26)
  store i32 %27, i32* %5, align 4
  br label %74

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtol(i8* %29, i32 10, i64* %13)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %74

35:                                               ; preds = %28
  %36 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %37 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %41 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @ina209_to_reg(i32 %39, i32 %46, i64 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %9, align 8
  br label %68

54:                                               ; preds = %35
  %55 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %56 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @i2c_smbus_write_word_swapped(i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %63 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %54, %51
  %69 = load %struct.ina209_data*, %struct.ina209_data** %10, align 8
  %70 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %9, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %33, %25
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.ina209_data* @ina209_update_device(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @IS_ERR(%struct.ina209_data*) #1

declare dso_local i32 @PTR_ERR(%struct.ina209_data*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ina209_to_reg(i32, i32, i64) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
