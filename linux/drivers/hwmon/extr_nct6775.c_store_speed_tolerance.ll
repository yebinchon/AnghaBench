; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_speed_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_speed_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i64*, i32, i32, i32*, i32* }
%struct.sensor_device_attribute = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_speed_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_speed_tolerance(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nct6775_data*, align 8
  %11 = alloca %struct.sensor_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.nct6775_data* %18, %struct.nct6775_data** %10, align 8
  %19 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %20 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %19)
  store %struct.sensor_device_attribute* %20, %struct.sensor_device_attribute** %11, align 8
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @kstrtoul(i8* %24, i32 10, i64* %13)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %121

30:                                               ; preds = %4
  %31 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %32 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %39 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @fan_from_reg16(i32 %37, i32 %44)
  %46 = load i64, i64* %13, align 8
  %47 = add i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  %49 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %50 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %57 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @fan_from_reg16(i32 %55, i32 %62)
  %64 = load i64, i64* %13, align 8
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %30
  store i32 1, i32* %15, align 4
  br label %70

70:                                               ; preds = %69, %30
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %79 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fan_to_reg(i32 %77, i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %88 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fan_to_reg(i32 %86, i32 %93)
  %95 = sub nsw i32 %85, %94
  %96 = sdiv i32 %95, 2
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %100 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @clamp_val(i64 %98, i32 0, i32 %101)
  store i64 %102, i64* %13, align 8
  %103 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %104 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %103, i32 0, i32 1
  %105 = call i32 @mutex_lock(i32* %104)
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %108 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %106, i64* %112, align 8
  %113 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @pwm_update_registers(%struct.nct6775_data* %113, i32 %114)
  %116 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %117 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i64, i64* %9, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %76, %28
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @fan_from_reg16(i32, i32) #1

declare dso_local i32 @fan_to_reg(i32, i32) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwm_update_registers(%struct.nct6775_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
