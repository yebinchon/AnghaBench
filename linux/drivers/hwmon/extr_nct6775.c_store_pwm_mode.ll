; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_pwm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i64*, i64*, i32, i32* }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_pwm_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_pwm_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %16)
  store %struct.nct6775_data* %17, %struct.nct6775_data** %10, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %19 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %18)
  store %struct.sensor_device_attribute* %19, %struct.sensor_device_attribute** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %11, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtoul(i8* %23, i32 10, i64* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %5, align 4
  br label %111

29:                                               ; preds = %4
  %30 = load i64, i64* %13, align 8
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %111

35:                                               ; preds = %29
  %36 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %37 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %111

50:                                               ; preds = %44
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %111

53:                                               ; preds = %35
  %54 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %55 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %54, i32 0, i32 2
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %59 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %57, i64* %63, align 8
  %64 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %65 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %66 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @nct6775_read_value(%struct.nct6775_data* %64, i64 %71)
  store i32 %72, i32* %15, align 4
  %73 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %74 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %15, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = load i64, i64* %13, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %53
  %86 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %87 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  br label %95

95:                                               ; preds = %85, %53
  %96 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %97 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %98 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @nct6775_write_value(%struct.nct6775_data* %96, i64 %103, i32 %104)
  %106 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %107 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %106, i32 0, i32 2
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i64, i64* %9, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %95, %50, %47, %32, %27
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i64) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
