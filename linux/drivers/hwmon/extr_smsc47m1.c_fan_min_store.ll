; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_fan_min_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47m1.c_fan_min_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.smsc47m1_data = type { i32*, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@SMSC47M1_REG_FAN_PRELOAD = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_min_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_min_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca %struct.smsc47m1_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %17 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %16)
  store %struct.sensor_device_attribute* %17, %struct.sensor_device_attribute** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.smsc47m1_data* @dev_get_drvdata(%struct.device* %18)
  store %struct.smsc47m1_data* %19, %struct.smsc47m1_data** %11, align 8
  %20 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %21 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @kstrtol(i8* %23, i32 10, i64* %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %5, align 4
  br label %89

29:                                               ; preds = %4
  %30 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %31 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i64, i64* %14, align 8
  %34 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %35 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @DIV_FROM_REG(i32 %40)
  %42 = mul nsw i64 %33, %41
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = mul nsw i64 192, %43
  %45 = icmp sgt i64 983040, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %29
  %47 = load i64, i64* %13, align 8
  %48 = mul nsw i64 2, %47
  %49 = icmp sgt i64 %48, 983040
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %29
  %51 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %52 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %89

56:                                               ; preds = %46
  %57 = load i64, i64* %13, align 8
  %58 = sdiv i64 %57, 2
  %59 = add nsw i64 983040, %58
  %60 = load i64, i64* %13, align 8
  %61 = sdiv i64 %59, %60
  %62 = sub nsw i64 192, %61
  %63 = trunc i64 %62 to i32
  %64 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %65 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  %70 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %71 = load i32*, i32** @SMSC47M1_REG_FAN_PRELOAD, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %77 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @smsc47m1_write_value(%struct.smsc47m1_data* %70, i32 %75, i32 %82)
  %84 = load %struct.smsc47m1_data*, %struct.smsc47m1_data** %11, align 8
  %85 = getelementptr inbounds %struct.smsc47m1_data, %struct.smsc47m1_data* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %56, %50, %27
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.smsc47m1_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @DIV_FROM_REG(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @smsc47m1_write_value(%struct.smsc47m1_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
