; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_alarm_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7462.c_alarm_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adt7462_data = type { i32* }

@ADT7462_ALARM_REG_SHIFT = common dso_local global i32 0, align 4
@ADT7462_ALARM_FLAG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @alarm_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alarm_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute*, align 8
  %9 = alloca %struct.adt7462_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %13 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %12)
  store %struct.sensor_device_attribute* %13, %struct.sensor_device_attribute** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.adt7462_data* @adt7462_update_device(%struct.device* %14)
  store %struct.adt7462_data* %15, %struct.adt7462_data** %9, align 8
  %16 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %17 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADT7462_ALARM_REG_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %8, align 8
  %22 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ADT7462_ALARM_FLAG_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load %struct.adt7462_data*, %struct.adt7462_data** %9, align 8
  %27 = getelementptr inbounds %struct.adt7462_data, %struct.adt7462_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7462_data* @adt7462_update_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
