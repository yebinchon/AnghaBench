; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_show_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ibmaem.c_aem_show_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i64 }
%struct.aem_data = type { i32*, i32, i32* }

@UJ_PER_MJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aem_show_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aem_show_power(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.aem_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %8, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.aem_data* @dev_get_drvdata(%struct.device* %17)
  store %struct.aem_data* %18, %struct.aem_data** %9, align 8
  %19 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %20 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %23 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %24 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @update_aem_energy_one(%struct.aem_data* %22, i64 %25)
  %27 = call i32 (...) @ktime_get_ns()
  store i32 %27, i32* %13, align 4
  %28 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %29 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %32 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %37 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %40 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @msecs_to_jiffies(i32 %43)
  %45 = call i64 @schedule_timeout_interruptible(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %3
  %49 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %50 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  store i32 0, i32* %4, align 4
  br label %84

52:                                               ; preds = %3
  %53 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %54 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %55 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @update_aem_energy_one(%struct.aem_data* %53, i64 %56)
  %58 = call i32 (...) @ktime_get_ns()
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %62 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %65 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load %struct.aem_data*, %struct.aem_data** %9, align 8
  %70 = getelementptr inbounds %struct.aem_data, %struct.aem_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sub nsw i32 %72, %73
  %75 = load i32, i32* @UJ_PER_MJ, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %12, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @NSEC_PER_SEC, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @div64_u64(i32 %80, i32 %81)
  %83 = call i32 @sprintf(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %52, %48
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.aem_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @update_aem_energy_one(%struct.aem_data*, i64) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i64 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
