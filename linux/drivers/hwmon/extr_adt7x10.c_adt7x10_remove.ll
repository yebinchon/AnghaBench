; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7x10.c_adt7x10_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adt7x10_data = type { i64, i64, i64, i32 }

@dev_attr_name = common dso_local global i32 0, align 4
@adt7x10_group = common dso_local global i32 0, align 4
@ADT7X10_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adt7x10_remove(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adt7x10_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.adt7x10_data* @dev_get_drvdata(%struct.device* %6)
  store %struct.adt7x10_data* %7, %struct.adt7x10_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.device* %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load %struct.adt7x10_data*, %struct.adt7x10_data** %5, align 8
  %16 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @hwmon_device_unregister(i32 %17)
  %19 = load %struct.adt7x10_data*, %struct.adt7x10_data** %5, align 8
  %20 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = call i32 @device_remove_file(%struct.device* %24, i32* @dev_attr_name)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = call i32 @sysfs_remove_group(i32* %28, i32* @adt7x10_group)
  %30 = load %struct.adt7x10_data*, %struct.adt7x10_data** %5, align 8
  %31 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.adt7x10_data*, %struct.adt7x10_data** %5, align 8
  %34 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* @ADT7X10_CONFIG, align 4
  %40 = load %struct.adt7x10_data*, %struct.adt7x10_data** %5, align 8
  %41 = getelementptr inbounds %struct.adt7x10_data, %struct.adt7x10_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @adt7x10_write_byte(%struct.device* %38, i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %37, %26
  ret i32 0
}

declare dso_local %struct.adt7x10_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @free_irq(i32, %struct.device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @adt7x10_write_byte(%struct.device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
