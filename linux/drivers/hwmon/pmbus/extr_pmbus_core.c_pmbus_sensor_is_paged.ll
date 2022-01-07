; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_sensor_is_paged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_sensor_is_paged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_driver_info = type { i32, i32* }
%struct.pmbus_sensor_attr = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmbus_driver_info*, %struct.pmbus_sensor_attr*)* @pmbus_sensor_is_paged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_sensor_is_paged(%struct.pmbus_driver_info* %0, %struct.pmbus_sensor_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmbus_driver_info*, align 8
  %5 = alloca %struct.pmbus_sensor_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.pmbus_driver_info* %0, %struct.pmbus_driver_info** %4, align 8
  store %struct.pmbus_sensor_attr* %1, %struct.pmbus_sensor_attr** %5, align 8
  %7 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %5, align 8
  %8 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %16 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.pmbus_driver_info*, %struct.pmbus_driver_info** %4, align 8
  %21 = getelementptr inbounds %struct.pmbus_driver_info, %struct.pmbus_driver_info* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pmbus_sensor_attr*, %struct.pmbus_sensor_attr** %5, align 8
  %28 = getelementptr inbounds %struct.pmbus_sensor_attr, %struct.pmbus_sensor_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %38

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %13

37:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
