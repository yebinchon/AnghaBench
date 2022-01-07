; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_fan_pulses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_store_fan_pulses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.nct6775_data = type { i64*, i32*, i32, i32* }
%struct.sensor_device_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_pulses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_fan_pulses(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  br label %97

29:                                               ; preds = %4
  %30 = load i64, i64* %13, align 8
  %31 = icmp ugt i64 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %97

35:                                               ; preds = %29
  %36 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %37 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load i64, i64* %13, align 8
  %40 = and i64 %39, 3
  %41 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %42 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %40, i64* %46, align 8
  %47 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %48 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %49 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nct6775_read_value(%struct.nct6775_data* %47, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %57 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 3, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load i64, i64* %13, align 8
  %68 = and i64 %67, 3
  %69 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %70 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 %68, %76
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = or i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %15, align 4
  %82 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %83 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %84 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @nct6775_write_value(%struct.nct6775_data* %82, i32 %89, i32 %90)
  %92 = load %struct.nct6775_data*, %struct.nct6775_data** %10, align 8
  %93 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %92, i32 0, i32 2
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i64, i64* %9, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %35, %32, %27
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
