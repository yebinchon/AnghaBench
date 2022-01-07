; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_amc6821.c_temp_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.amc6821_data = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AMC6821_STAT1_LTL = common dso_local global i32 0, align 4
@AMC6821_STAT1_LTH = common dso_local global i32 0, align 4
@AMC6821_STAT2_LTC = common dso_local global i32 0, align 4
@AMC6821_STAT1_RTL = common dso_local global i32 0, align 4
@AMC6821_STAT1_RTH = common dso_local global i32 0, align 4
@AMC6821_STAT2_RTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown attr->index (%d).\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @temp_alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp_alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amc6821_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.amc6821_data* @amc6821_update_device(%struct.device* %11)
  store %struct.amc6821_data* %12, %struct.amc6821_data** %8, align 8
  %13 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %14 = call %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  switch i32 %17, label %54 [
    i32 131, label %18
    i32 132, label %24
    i32 133, label %30
    i32 128, label %36
    i32 129, label %42
    i32 130, label %48
  ]

18:                                               ; preds = %3
  %19 = load %struct.amc6821_data*, %struct.amc6821_data** %8, align 8
  %20 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AMC6821_STAT1_LTL, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.amc6821_data*, %struct.amc6821_data** %8, align 8
  %26 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AMC6821_STAT1_LTH, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %10, align 4
  br label %60

30:                                               ; preds = %3
  %31 = load %struct.amc6821_data*, %struct.amc6821_data** %8, align 8
  %32 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AMC6821_STAT2_LTC, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %10, align 4
  br label %60

36:                                               ; preds = %3
  %37 = load %struct.amc6821_data*, %struct.amc6821_data** %8, align 8
  %38 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AMC6821_STAT1_RTL, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %60

42:                                               ; preds = %3
  %43 = load %struct.amc6821_data*, %struct.amc6821_data** %8, align 8
  %44 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AMC6821_STAT1_RTH, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %60

48:                                               ; preds = %3
  %49 = load %struct.amc6821_data*, %struct.amc6821_data** %8, align 8
  %50 = getelementptr inbounds %struct.amc6821_data, %struct.amc6821_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AMC6821_STAT2_RTC, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %10, align 4
  br label %60

54:                                               ; preds = %3
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %69

60:                                               ; preds = %48, %42, %36, %30, %24, %18
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %63, %54
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.amc6821_data* @amc6821_update_device(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
