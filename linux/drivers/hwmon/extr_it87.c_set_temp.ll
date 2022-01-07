; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }
%struct.it87_data = type { i32**, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@IT87_REG_BEEP_ENABLE = common dso_local global i32 0, align 4
@IT87_REG_TEMP_OFFSET = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute_2*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.it87_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute_2* %18, %struct.sensor_device_attribute_2** %10, align 8
  %19 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %10, align 8
  %23 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %25)
  store %struct.it87_data* %26, %struct.it87_data** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @kstrtol(i8* %27, i32 10, i64* %14)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  br label %98

33:                                               ; preds = %4
  %34 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %35 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* %12, align 4
  switch i32 %37, label %38 [
    i32 1, label %39
    i32 2, label %42
    i32 3, label %45
  ]

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %33, %38
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @IT87_REG_TEMP_LOW(i32 %40)
  store i32 %41, i32* %15, align 4
  br label %67

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @IT87_REG_TEMP_HIGH(i32 %43)
  store i32 %44, i32* %15, align 4
  br label %67

45:                                               ; preds = %33
  %46 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %47 = load i32, i32* @IT87_REG_BEEP_ENABLE, align 4
  %48 = call i32 @it87_read_value(%struct.it87_data* %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %16, align 4
  %54 = or i32 %53, 128
  store i32 %54, i32* %16, align 4
  %55 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %56 = load i32, i32* @IT87_REG_BEEP_ENABLE, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @it87_write_value(%struct.it87_data* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %61 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %60, i32 0, i32 2
  store i32 0, i32* %61, align 4
  %62 = load i32*, i32** @IT87_REG_TEMP_OFFSET, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %59, %42, %39
  %68 = load i64, i64* %14, align 8
  %69 = call i32 @TEMP_TO_REG(i64 %68)
  %70 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %71 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %69, i32* %79, align 4
  %80 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %83 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @it87_write_value(%struct.it87_data* %80, i32 %81, i32 %92)
  %94 = load %struct.it87_data*, %struct.it87_data** %13, align 8
  %95 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i64, i64* %9, align 8
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %67, %30
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IT87_REG_TEMP_LOW(i32) #1

declare dso_local i32 @IT87_REG_TEMP_HIGH(i32) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
