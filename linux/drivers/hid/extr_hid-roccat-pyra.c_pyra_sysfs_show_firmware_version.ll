; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_sysfs_show_firmware_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_sysfs_show_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device_attribute = type { i32 }
%struct.pyra_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.pyra_info = type { i32 }

@PYRA_COMMAND_INFO = common dso_local global i32 0, align 4
@PYRA_SIZE_INFO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @pyra_sysfs_show_firmware_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyra_sysfs_show_firmware_version(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pyra_device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.pyra_info, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_get_drvdata(%struct.device* %15)
  %17 = call %struct.pyra_device* @hid_get_drvdata(i32 %16)
  store %struct.pyra_device* %17, %struct.pyra_device** %7, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @to_usb_interface(%struct.device* %18)
  %20 = call %struct.usb_device* @interface_to_usbdev(i32 %19)
  store %struct.usb_device* %20, %struct.usb_device** %8, align 8
  %21 = load %struct.pyra_device*, %struct.pyra_device** %7, align 8
  %22 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %25 = load i32, i32* @PYRA_COMMAND_INFO, align 4
  %26 = load i32, i32* @PYRA_SIZE_INFO, align 4
  %27 = call i32 @roccat_common2_receive(%struct.usb_device* %24, i32 %25, %struct.pyra_info* %9, i32 %26)
  %28 = load %struct.pyra_device*, %struct.pyra_device** %7, align 8
  %29 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = getelementptr inbounds %struct.pyra_info, %struct.pyra_info* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snprintf(i8* %31, i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  ret i32 %35
}

declare dso_local %struct.pyra_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roccat_common2_receive(%struct.usb_device*, i32, %struct.pyra_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
