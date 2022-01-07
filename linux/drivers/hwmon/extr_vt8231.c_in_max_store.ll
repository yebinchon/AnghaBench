; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_in_max_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_vt8231.c_in_max_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.vt8231_data = type { i32, i32* }

@regvoltmax = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @in_max_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_max_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vt8231_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %10, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.vt8231_data* @dev_get_drvdata(%struct.device* %20)
  store %struct.vt8231_data* %21, %struct.vt8231_data** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @kstrtoul(i8* %22, i32 10, i64* %13)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %4
  %29 = load %struct.vt8231_data*, %struct.vt8231_data** %12, align 8
  %30 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load i64, i64* %13, align 8
  %33 = mul i64 %32, 958
  %34 = udiv i64 %33, 10000
  %35 = add i64 %34, 3
  %36 = call i32 @clamp_val(i64 %35, i32 0, i32 255)
  %37 = load %struct.vt8231_data*, %struct.vt8231_data** %12, align 8
  %38 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load %struct.vt8231_data*, %struct.vt8231_data** %12, align 8
  %44 = load i32*, i32** @regvoltmax, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.vt8231_data*, %struct.vt8231_data** %12, align 8
  %50 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @vt8231_write_value(%struct.vt8231_data* %43, i32 %48, i32 %55)
  %57 = load %struct.vt8231_data*, %struct.vt8231_data** %12, align 8
  %58 = getelementptr inbounds %struct.vt8231_data, %struct.vt8231_data* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %28, %26
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.vt8231_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @vt8231_write_value(%struct.vt8231_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
