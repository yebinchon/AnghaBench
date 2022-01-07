; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_sysfs_read_profilex_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_sysfs_read_profilex_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }

@KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS = common dso_local global i32 0, align 4
@KOVAPLUS_SIZE_PROFILE_SETTINGS = common dso_local global i32 0, align 4
@KOVAPLUS_COMMAND_PROFILE_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @kovaplus_sysfs_read_profilex_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kovaplus_sysfs_read_profilex_settings(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.kobject*, %struct.kobject** %9, align 8
  %18 = call %struct.TYPE_4__* @kobj_to_dev(%struct.kobject* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %14, align 8
  %23 = load %struct.device*, %struct.device** %14, align 8
  %24 = call i32 @to_usb_interface(%struct.device* %23)
  %25 = call %struct.usb_device* @interface_to_usbdev(i32 %24)
  store %struct.usb_device* %25, %struct.usb_device** %15, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %27 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %28 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS, align 4
  %33 = call i64 @kovaplus_select_profile(%struct.usb_device* %26, i32 %31, i32 %32)
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %16, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i64, i64* %16, align 8
  store i64 %37, i64* %7, align 8
  br label %47

38:                                               ; preds = %6
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = load %struct.kobject*, %struct.kobject** %9, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* @KOVAPLUS_SIZE_PROFILE_SETTINGS, align 4
  %45 = load i32, i32* @KOVAPLUS_COMMAND_PROFILE_SETTINGS, align 4
  %46 = call i64 @kovaplus_sysfs_read(%struct.file* %39, %struct.kobject* %40, i8* %41, i32 %42, i64 %43, i32 %44, i32 %45)
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %38, %36
  %48 = load i64, i64* %7, align 8
  ret i64 %48
}

declare dso_local %struct.TYPE_4__* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i64 @kovaplus_select_profile(%struct.usb_device*, i32, i32) #1

declare dso_local i64 @kovaplus_sysfs_read(%struct.file*, %struct.kobject*, i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
