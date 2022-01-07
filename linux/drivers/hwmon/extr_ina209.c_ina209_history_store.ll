; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_history_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_history_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.ina209_data = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ina209_reset_history_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ina209_history_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina209_history_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.ina209_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.ina209_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.ina209_data* %20, %struct.ina209_data** %11, align 8
  %21 = load %struct.ina209_data*, %struct.ina209_data** %11, align 8
  %22 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %21, i32 0, i32 2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %22, align 8
  store %struct.i2c_client* %23, %struct.i2c_client** %12, align 8
  %24 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %25 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @kstrtol(i8* %27, i32 10, i64* %14)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %5, align 4
  br label %68

33:                                               ; preds = %4
  %34 = load %struct.ina209_data*, %struct.ina209_data** %11, align 8
  %35 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %57, %33
  %38 = load i32, i32* %15, align 4
  %39 = load i32*, i32** @ina209_reset_history_regs, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %15, align 4
  %45 = shl i32 1, %44
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %50 = load i32*, i32** @ina209_reset_history_regs, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @i2c_smbus_write_word_swapped(%struct.i2c_client* %49, i32 %54, i32 1)
  br label %56

56:                                               ; preds = %48, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  br label %37

60:                                               ; preds = %37
  %61 = load %struct.ina209_data*, %struct.ina209_data** %11, align 8
  %62 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.ina209_data*, %struct.ina209_data** %11, align 8
  %64 = getelementptr inbounds %struct.ina209_data, %struct.ina209_data* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %31
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.ina209_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @i2c_smbus_write_word_swapped(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
