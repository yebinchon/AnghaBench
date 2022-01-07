; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_humidity1_limit_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht3x.c_humidity1_limit_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sht3x_data = type { i32, i32* }
%struct.TYPE_2__ = type { i64 }

@SHT3X_MIN_HUMIDITY = common dso_local global i32 0, align 4
@SHT3X_MAX_HUMIDITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @humidity1_limit_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @humidity1_limit_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sht3x_data*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.sht3x_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.sht3x_data* %15, %struct.sht3x_data** %12, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @kstrtou32(i8* %20, i32 0, i32* %10)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %49

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @SHT3X_MIN_HUMIDITY, align 4
  %29 = load i32, i32* @SHT3X_MAX_HUMIDITY, align 4
  %30 = call i32 @clamp_val(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.sht3x_data*, %struct.sht3x_data** %12, align 8
  %32 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.sht3x_data*, %struct.sht3x_data** %12, align 8
  %38 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @limit_store(%struct.device* %34, i64 %35, i64 %36, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.sht3x_data*, %struct.sht3x_data** %12, align 8
  %46 = getelementptr inbounds %struct.sht3x_data, %struct.sht3x_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %26, %24
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.sht3x_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @kstrtou32(i8*, i32, i32*) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @limit_store(%struct.device*, i64, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
