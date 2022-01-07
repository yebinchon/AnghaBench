; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_sysfs_write_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_sysfs_write_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.pyra_device = type { i32, i32, i32 }
%struct.usb_device = type { i32 }
%struct.pyra_roccat_report = type { i64, i64, i32 }
%struct.pyra_settings = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }

@PYRA_SIZE_SETTINGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PYRA_MOUSE_EVENT_BUTTON_TYPE_PROFILE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @pyra_sysfs_write_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pyra_sysfs_write_settings(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.pyra_device*, align 8
  %16 = alloca %struct.usb_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pyra_roccat_report, align 8
  %19 = alloca %struct.pyra_settings*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.kobject*, %struct.kobject** %9, align 8
  %21 = call %struct.TYPE_4__* @kobj_to_dev(%struct.kobject* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %14, align 8
  %26 = load %struct.device*, %struct.device** %14, align 8
  %27 = call i32 @dev_get_drvdata(%struct.device* %26)
  %28 = call %struct.pyra_device* @hid_get_drvdata(i32 %27)
  store %struct.pyra_device* %28, %struct.pyra_device** %15, align 8
  %29 = load %struct.device*, %struct.device** %14, align 8
  %30 = call i32 @to_usb_interface(%struct.device* %29)
  %31 = call %struct.usb_device* @interface_to_usbdev(i32 %30)
  store %struct.usb_device* %31, %struct.usb_device** %16, align 8
  store i32 0, i32* %17, align 4
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %6
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* @PYRA_SIZE_SETTINGS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %6
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %93

41:                                               ; preds = %34
  %42 = load i8*, i8** %11, align 8
  %43 = bitcast i8* %42 to %struct.pyra_settings*
  store %struct.pyra_settings* %43, %struct.pyra_settings** %19, align 8
  %44 = load %struct.pyra_settings*, %struct.pyra_settings** %19, align 8
  %45 = getelementptr inbounds %struct.pyra_settings, %struct.pyra_settings* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pyra_device*, %struct.pyra_device** %15, align 8
  %48 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ARRAY_SIZE(i32 %49)
  %51 = icmp sge i64 %46, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %93

55:                                               ; preds = %41
  %56 = load %struct.pyra_device*, %struct.pyra_device** %15, align 8
  %57 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %60 = load %struct.pyra_settings*, %struct.pyra_settings** %19, align 8
  %61 = call i32 @pyra_set_settings(%struct.usb_device* %59, %struct.pyra_settings* %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.pyra_device*, %struct.pyra_device** %15, align 8
  %66 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %7, align 4
  br label %93

69:                                               ; preds = %55
  %70 = load %struct.pyra_device*, %struct.pyra_device** %15, align 8
  %71 = load %struct.pyra_settings*, %struct.pyra_settings** %19, align 8
  %72 = getelementptr inbounds %struct.pyra_settings, %struct.pyra_settings* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @profile_activated(%struct.pyra_device* %70, i64 %73)
  %75 = load i32, i32* @PYRA_MOUSE_EVENT_BUTTON_TYPE_PROFILE_2, align 4
  %76 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %18, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load %struct.pyra_settings*, %struct.pyra_settings** %19, align 8
  %78 = getelementptr inbounds %struct.pyra_settings, %struct.pyra_settings* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  %81 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %18, i32 0, i32 0
  store i64 %80, i64* %81, align 8
  %82 = getelementptr inbounds %struct.pyra_roccat_report, %struct.pyra_roccat_report* %18, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.pyra_device*, %struct.pyra_device** %15, align 8
  %84 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = bitcast %struct.pyra_roccat_report* %18 to i32*
  %87 = call i32 @roccat_report_event(i32 %85, i32* %86)
  %88 = load %struct.pyra_device*, %struct.pyra_device** %15, align 8
  %89 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i64, i64* @PYRA_SIZE_SETTINGS, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %69, %64, %52, %38
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_4__* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.pyra_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pyra_set_settings(%struct.usb_device*, %struct.pyra_settings*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @profile_activated(%struct.pyra_device*, i64) #1

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
