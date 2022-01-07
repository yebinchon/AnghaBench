; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_show_mode_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_show_mode_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_attribute = type { i32 }
%struct.arvo_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.arvo_mode_key = type { i32 }

@ARVO_COMMAND_MODE_KEY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @arvo_sysfs_show_mode_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arvo_sysfs_show_mode_key(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.arvo_device*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.arvo_mode_key, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_get_drvdata(i32 %16)
  %18 = call %struct.arvo_device* @hid_get_drvdata(i32 %17)
  store %struct.arvo_device* %18, %struct.arvo_device** %8, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @to_usb_interface(i32 %23)
  %25 = call %struct.usb_device* @interface_to_usbdev(i32 %24)
  store %struct.usb_device* %25, %struct.usb_device** %9, align 8
  %26 = load %struct.arvo_device*, %struct.arvo_device** %8, align 8
  %27 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %30 = load i32, i32* @ARVO_COMMAND_MODE_KEY, align 4
  %31 = call i32 @roccat_common2_receive(%struct.usb_device* %29, i32 %30, %struct.arvo_mode_key* %10, i32 4)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.arvo_device*, %struct.arvo_device** %8, align 8
  %33 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %3
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = getelementptr inbounds %struct.arvo_mode_key, %struct.arvo_mode_key* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.arvo_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roccat_common2_receive(%struct.usb_device*, i32, %struct.arvo_mode_key*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
