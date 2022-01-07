; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_sysfs_show_actual_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_sysfs_show_actual_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_attribute = type { i32 }
%struct.pyra_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.pyra_settings = type { i32 }

@PYRA_COMMAND_SETTINGS = common dso_local global i32 0, align 4
@PYRA_SIZE_SETTINGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pyra_sysfs_show_actual_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyra_sysfs_show_actual_profile(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pyra_device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.pyra_settings, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_get_drvdata(i32 %14)
  %16 = call %struct.pyra_device* @hid_get_drvdata(i32 %15)
  store %struct.pyra_device* %16, %struct.pyra_device** %7, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @to_usb_interface(%struct.device* %17)
  %19 = call %struct.usb_device* @interface_to_usbdev(i32 %18)
  store %struct.usb_device* %19, %struct.usb_device** %8, align 8
  %20 = load %struct.pyra_device*, %struct.pyra_device** %7, align 8
  %21 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %24 = load i32, i32* @PYRA_COMMAND_SETTINGS, align 4
  %25 = load i32, i32* @PYRA_SIZE_SETTINGS, align 4
  %26 = call i32 @roccat_common2_receive(%struct.usb_device* %23, i32 %24, %struct.pyra_settings* %9, i32 %25)
  %27 = load %struct.pyra_device*, %struct.pyra_device** %7, align 8
  %28 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = getelementptr inbounds %struct.pyra_settings, %struct.pyra_settings* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @snprintf(i8* %30, i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  ret i32 %34
}

declare dso_local %struct.pyra_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roccat_common2_receive(%struct.usb_device*, i32, %struct.pyra_settings*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
