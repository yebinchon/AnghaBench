; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via-cputemp.c_via_cputemp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via-cputemp.c_via_cputemp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.via_cputemp_data = type { i64, i32 }

@dev_attr_cpu0_vid = common dso_local global i32 0, align 4
@via_cputemp_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @via_cputemp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_cputemp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.via_cputemp_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.via_cputemp_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.via_cputemp_data* %5, %struct.via_cputemp_data** %3, align 8
  %6 = load %struct.via_cputemp_data*, %struct.via_cputemp_data** %3, align 8
  %7 = getelementptr inbounds %struct.via_cputemp_data, %struct.via_cputemp_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @hwmon_device_unregister(i32 %8)
  %10 = load %struct.via_cputemp_data*, %struct.via_cputemp_data** %3, align 8
  %11 = getelementptr inbounds %struct.via_cputemp_data, %struct.via_cputemp_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @device_remove_file(%struct.TYPE_2__* %16, i32* @dev_attr_cpu0_vid)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @sysfs_remove_group(i32* %21, i32* @via_cputemp_group)
  ret i32 0
}

declare dso_local %struct.via_cputemp_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hwmon_device_unregister(i32) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
