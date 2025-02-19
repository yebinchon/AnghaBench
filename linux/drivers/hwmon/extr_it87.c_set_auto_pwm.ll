; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_auto_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_auto_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.it87_data = type { i32, i32** }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_auto_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_auto_pwm(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.it87_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.it87_data* %17, %struct.it87_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute_2* %19, %struct.sensor_device_attribute_2** %11, align 8
  %20 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %11, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @kstrtol(i8* %26, i32 10, i64* %15)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %15, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %15, align 8
  %34 = icmp sgt i64 %33, 255
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29, %4
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %84

38:                                               ; preds = %32
  %39 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %40 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %43 = load i64, i64* %15, align 8
  %44 = call i32 @pwm_to_reg(%struct.it87_data* %42, i64 %43)
  %45 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %46 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %44, i32* %54, align 4
  %55 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %56 = call i64 @has_newer_autopwm(%struct.it87_data* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %38
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @IT87_REG_AUTO_TEMP(i32 %59, i32 3)
  store i32 %60, i32* %14, align 4
  br label %65

61:                                               ; preds = %38
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @IT87_REG_AUTO_PWM(i32 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %69 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @it87_write_value(%struct.it87_data* %66, i32 %67, i32 %78)
  %80 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %81 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %65, %35
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_to_reg(%struct.it87_data*, i64) #1

declare dso_local i64 @has_newer_autopwm(%struct.it87_data*) #1

declare dso_local i32 @IT87_REG_AUTO_TEMP(i32, i32) #1

declare dso_local i32 @IT87_REG_AUTO_PWM(i32, i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
