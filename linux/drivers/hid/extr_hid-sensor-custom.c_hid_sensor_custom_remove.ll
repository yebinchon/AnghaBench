; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hid_sensor_hub_device* }
%struct.hid_sensor_hub_device = type { i32 }
%struct.hid_sensor_custom = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@enable_sensor_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hid_sensor_custom_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sensor_custom_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.hid_sensor_custom*, align 8
  %4 = alloca %struct.hid_sensor_hub_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.hid_sensor_custom* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.hid_sensor_custom* %6, %struct.hid_sensor_custom** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %9, align 8
  store %struct.hid_sensor_hub_device* %10, %struct.hid_sensor_hub_device** %4, align 8
  %11 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %12 = call i32 @hid_sensor_custom_dev_if_remove(%struct.hid_sensor_custom* %11)
  %13 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %14 = call i32 @hid_sensor_custom_remove_attributes(%struct.hid_sensor_custom* %13)
  %15 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %16 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @sysfs_remove_group(i32* %19, i32* @enable_sensor_attr_group)
  %21 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %4, align 8
  %22 = load %struct.hid_sensor_hub_device*, %struct.hid_sensor_hub_device** %4, align 8
  %23 = getelementptr inbounds %struct.hid_sensor_hub_device, %struct.hid_sensor_hub_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device* %21, i32 %24)
  ret i32 0
}

declare dso_local %struct.hid_sensor_custom* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hid_sensor_custom_dev_if_remove(%struct.hid_sensor_custom*) #1

declare dso_local i32 @hid_sensor_custom_remove_attributes(%struct.hid_sensor_custom*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @sensor_hub_remove_callback(%struct.hid_sensor_hub_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
