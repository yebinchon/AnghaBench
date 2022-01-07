; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_auto_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_auto_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.it87_data = type { i32**, i32 }
%struct.sensor_device_attribute_2 = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_auto_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_auto_temp(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.it87_data*, align 8
  %11 = alloca %struct.sensor_device_attribute_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
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
  %27 = call i64 @kstrtol(i8* %26, i32 10, i64* %14)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load i64, i64* %14, align 8
  %31 = icmp slt i64 %30, -128000
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  %34 = icmp sgt i64 %33, 127000
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29, %4
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %5, align 8
  br label %120

38:                                               ; preds = %32
  %39 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %40 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %43 = call i64 @has_newer_autopwm(%struct.it87_data* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %88

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %88, label %48

48:                                               ; preds = %45
  %49 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %50 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @TEMP_TO_REG(i64 %58)
  %60 = sub nsw i32 %57, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @clamp_val(i32 %61, i32 0, i32 31)
  %63 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %64 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 224
  %73 = or i32 %62, %72
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %76 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %74, i32* %82, align 4
  %83 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @IT87_REG_AUTO_TEMP(i32 %84, i32 5)
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @it87_write_value(%struct.it87_data* %83, i32 %85, i32 %86)
  br label %115

88:                                               ; preds = %45, %38
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @TEMP_TO_REG(i64 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %93 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %91, i32* %101, align 4
  %102 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %103 = call i64 @has_newer_autopwm(%struct.it87_data* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %88
  %109 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @IT87_REG_AUTO_TEMP(i32 %110, i32 %111)
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @it87_write_value(%struct.it87_data* %109, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %48
  %116 = load %struct.it87_data*, %struct.it87_data** %10, align 8
  %117 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i64, i64* %9, align 8
  store i64 %119, i64* %5, align 8
  br label %120

120:                                              ; preds = %115, %35
  %121 = load i64, i64* %5, align 8
  ret i64 %121
}

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @has_newer_autopwm(%struct.it87_data*) #1

declare dso_local i32 @TEMP_TO_REG(i64) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @IT87_REG_AUTO_TEMP(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
