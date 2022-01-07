; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sht15_data = type { i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@sht15_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sht15_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sht15_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.sht15_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sht15_data* %6, %struct.sht15_data** %4, align 8
  %7 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %8 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %11 = call i64 @sht15_soft_reset(%struct.sht15_data* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %15 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %21 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hwmon_device_unregister(i32 %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @sysfs_remove_group(i32* %26, i32* @sht15_attr_group)
  %28 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %29 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_ERR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %19
  %34 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %35 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %38 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %37, i32 0, i32 2
  %39 = call i32 @regulator_unregister_notifier(i32 %36, i32* %38)
  %40 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %41 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_disable(i32 %42)
  br label %44

44:                                               ; preds = %33, %19
  %45 = load %struct.sht15_data*, %struct.sht15_data** %4, align 8
  %46 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.sht15_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @sht15_soft_reset(%struct.sht15_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_unregister_notifier(i32, i32*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
