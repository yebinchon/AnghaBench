; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_pwm_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_set_pwm_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.it87_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@pwm_freq = common dso_local global i32* null, align 8
@IT87_REG_FAN_CTL = common dso_local global i32 0, align 4
@IT87_REG_TEMP_EXTRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_pwm_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_pwm_freq(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.it87_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.it87_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.it87_data* %18, %struct.it87_data** %11, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @kstrtoul(i8* %22, i32 10, i64* %13)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* @EINVAL, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %5, align 8
  br label %113

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  %30 = call i64 @clamp_val(i64 %29, i32 0, i32 1000000)
  store i64 %30, i64* %13, align 8
  %31 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %32 = call i64 @has_newer_autopwm(%struct.it87_data* %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 256, i32 128
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %13, align 8
  %38 = mul i64 %37, %36
  store i64 %38, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %61, %28
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 7
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load i64, i64* %13, align 8
  %44 = load i32*, i32** @pwm_freq, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** @pwm_freq, align 8
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %48, %54
  %56 = sdiv i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %43, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  br label %64

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %39

64:                                               ; preds = %59, %39
  %65 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %66 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %65, i32 0, i32 2
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %72 = load i32, i32* @IT87_REG_FAN_CTL, align 4
  %73 = call i32 @it87_read_value(%struct.it87_data* %71, i32 %72)
  %74 = and i32 %73, 143
  %75 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %76 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %14, align 4
  %78 = shl i32 %77, 4
  %79 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %80 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %84 = load i32, i32* @IT87_REG_FAN_CTL, align 4
  %85 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %86 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @it87_write_value(%struct.it87_data* %83, i32 %84, i32 %87)
  br label %108

89:                                               ; preds = %64
  %90 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %91 = load i32, i32* @IT87_REG_TEMP_EXTRA, align 4
  %92 = call i32 @it87_read_value(%struct.it87_data* %90, i32 %91)
  %93 = and i32 %92, 143
  %94 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %95 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %14, align 4
  %97 = shl i32 %96, 4
  %98 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %99 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %103 = load i32, i32* @IT87_REG_TEMP_EXTRA, align 4
  %104 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %105 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @it87_write_value(%struct.it87_data* %102, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %89, %70
  %109 = load %struct.it87_data*, %struct.it87_data** %11, align 8
  %110 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %109, i32 0, i32 2
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %108, %25
  %114 = load i64, i64* %5, align 8
  ret i64 %114
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.it87_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @has_newer_autopwm(%struct.it87_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @it87_read_value(%struct.it87_data*, i32) #1

declare dso_local i32 @it87_write_value(%struct.it87_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
