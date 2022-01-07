; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_hyst_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_emc1403.c_hyst_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.thermal_data = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hyst_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hyst_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.thermal_data*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.thermal_data* @dev_get_drvdata(%struct.device* %19)
  store %struct.thermal_data* %20, %struct.thermal_data** %11, align 8
  %21 = load %struct.thermal_data*, %struct.thermal_data** %11, align 8
  %22 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %21, i32 0, i32 1
  %23 = load %struct.regmap*, %struct.regmap** %22, align 8
  store %struct.regmap* %23, %struct.regmap** %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @kstrtoul(i8* %24, i32 10, i64* %16)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %66

30:                                               ; preds = %4
  %31 = load %struct.thermal_data*, %struct.thermal_data** %11, align 8
  %32 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.regmap*, %struct.regmap** %12, align 8
  %35 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %36 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @regmap_read(%struct.regmap* %34, i32 %37, i32* %13)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %61

42:                                               ; preds = %30
  %43 = load i32, i32* %13, align 4
  %44 = mul i32 %43, 1000
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* %16, align 8
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @DIV_ROUND_CLOSEST(i32 %49, i32 1000)
  %51 = call i32 @clamp_val(i32 %50, i32 0, i32 255)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.regmap*, %struct.regmap** %12, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @regmap_write(%struct.regmap* %52, i32 33, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %57, %42
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.thermal_data*, %struct.thermal_data** %11, align 8
  %63 = getelementptr inbounds %struct.thermal_data, %struct.thermal_data* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %27
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.thermal_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
