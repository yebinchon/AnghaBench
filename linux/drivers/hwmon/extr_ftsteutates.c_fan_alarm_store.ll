; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fan_alarm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ftsteutates.c_fan_alarm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fts_data = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_alarm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fan_alarm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fts_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.fts_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.fts_data* %14, %struct.fts_data** %10, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %16 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.fts_data*, %struct.fts_data** %10, align 8
  %20 = call i64 @fts_update_device(%struct.fts_data* %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %5, align 8
  br label %69

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @kstrtoul(i8* %26, i32 10, i64* %12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %25
  %33 = load i64, i64* @EINVAL, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %69

35:                                               ; preds = %29
  %36 = load %struct.fts_data*, %struct.fts_data** %10, align 8
  %37 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.fts_data*, %struct.fts_data** %10, align 8
  %40 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @FTS_REG_FAN_CONTROL(i32 %42)
  %44 = call i64 @fts_read_byte(i32 %41, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %64

48:                                               ; preds = %35
  %49 = load %struct.fts_data*, %struct.fts_data** %10, align 8
  %50 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @FTS_REG_FAN_CONTROL(i32 %52)
  %54 = load i64, i64* %12, align 8
  %55 = or i64 %54, 1
  %56 = call i64 @fts_write_byte(i32 %51, i32 %53, i64 %55)
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %64

60:                                               ; preds = %48
  %61 = load %struct.fts_data*, %struct.fts_data** %10, align 8
  %62 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %60, %59, %47
  %65 = load %struct.fts_data*, %struct.fts_data** %10, align 8
  %66 = getelementptr inbounds %struct.fts_data, %struct.fts_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %64, %32, %23
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local %struct.fts_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @fts_update_device(%struct.fts_data*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @fts_read_byte(i32, i32) #1

declare dso_local i32 @FTS_REG_FAN_CONTROL(i32) #1

declare dso_local i64 @fts_write_byte(i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
