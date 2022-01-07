; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_t_hyst_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_t_hyst_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.sensor_device_attribute = type { i32 }
%struct.adt7x10_data = type { i32, i32* }

@ADT7X10_T_HYST_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @adt7x10_t_hyst_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7x10_t_hyst_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sensor_device_attribute*, align 8
  %8 = alloca %struct.adt7x10_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %12 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %11)
  store %struct.sensor_device_attribute* %12, %struct.sensor_device_attribute** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.adt7x10_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.adt7x10_data* %14, %struct.adt7x10_data** %8, align 8
  %15 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %7, align 8
  %16 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.adt7x10_data*, %struct.adt7x10_data** %8, align 8
  %19 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ADT7X10_T_HYST_MASK, align 4
  %22 = and i32 %20, %21
  %23 = mul nsw i32 %22, 1000
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.adt7x10_data*, %struct.adt7x10_data** %8, align 8
  %32 = load %struct.adt7x10_data*, %struct.adt7x10_data** %8, align 8
  %33 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ADT7X10_REG_TO_TEMP(%struct.adt7x10_data* %31, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  ret i32 %42
}

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local %struct.adt7x10_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ADT7X10_REG_TO_TEMP(%struct.adt7x10_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
