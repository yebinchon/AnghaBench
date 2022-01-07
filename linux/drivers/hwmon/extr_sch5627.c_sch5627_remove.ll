; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5627.c_sch5627_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5627.c_sch5627_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sch5627_data = type { i64, i64 }

@sch5627_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sch5627_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch5627_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sch5627_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.sch5627_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.sch5627_data* %5, %struct.sch5627_data** %3, align 8
  %6 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %7 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %12 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @sch56xx_watchdog_unregister(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %17 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.sch5627_data*, %struct.sch5627_data** %3, align 8
  %22 = getelementptr inbounds %struct.sch5627_data, %struct.sch5627_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @hwmon_device_unregister(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @sysfs_remove_group(i32* %28, i32* @sch5627_group)
  ret i32 0
}

declare dso_local %struct.sch5627_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @sch56xx_watchdog_unregister(i64) #1

declare dso_local i32 @hwmon_device_unregister(i64) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
