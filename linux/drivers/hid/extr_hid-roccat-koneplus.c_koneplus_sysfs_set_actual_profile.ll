; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_sysfs_set_actual_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-koneplus.c_koneplus_sysfs_set_actual_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device_attribute = type { i32 }
%struct.koneplus_device = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.koneplus_roccat_report = type { i64, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @koneplus_sysfs_set_actual_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @koneplus_sysfs_set_actual_profile(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.koneplus_device*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.koneplus_roccat_report, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %6, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call i32 @dev_get_drvdata(%struct.device* %20)
  %22 = call %struct.koneplus_device* @hid_get_drvdata(i32 %21)
  store %struct.koneplus_device* %22, %struct.koneplus_device** %10, align 8
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @to_usb_interface(%struct.device* %23)
  %25 = call %struct.usb_device* @interface_to_usbdev(i32 %24)
  store %struct.usb_device* %25, %struct.usb_device** %11, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 10, i64* %12)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  br label %75

32:                                               ; preds = %4
  %33 = load i64, i64* %12, align 8
  %34 = icmp ugt i64 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %75

38:                                               ; preds = %32
  %39 = load %struct.koneplus_device*, %struct.koneplus_device** %10, align 8
  %40 = getelementptr inbounds %struct.koneplus_device, %struct.koneplus_device* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @koneplus_set_actual_profile(%struct.usb_device* %42, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.koneplus_device*, %struct.koneplus_device** %10, align 8
  %49 = getelementptr inbounds %struct.koneplus_device, %struct.koneplus_device* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %5, align 4
  br label %75

52:                                               ; preds = %38
  %53 = load %struct.koneplus_device*, %struct.koneplus_device** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @koneplus_profile_activated(%struct.koneplus_device* %53, i64 %54)
  %56 = load i32, i32* @KONEPLUS_MOUSE_REPORT_BUTTON_TYPE_PROFILE, align 4
  %57 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %14, i32 0, i32 3
  store i32 %56, i32* %57, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %14, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %14, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds %struct.koneplus_roccat_report, %struct.koneplus_roccat_report* %14, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = load %struct.koneplus_device*, %struct.koneplus_device** %10, align 8
  %66 = getelementptr inbounds %struct.koneplus_device, %struct.koneplus_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = bitcast %struct.koneplus_roccat_report* %14 to i32*
  %69 = call i32 @roccat_report_event(i32 %67, i32* %68)
  %70 = load %struct.koneplus_device*, %struct.koneplus_device** %10, align 8
  %71 = getelementptr inbounds %struct.koneplus_device, %struct.koneplus_device* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %52, %47, %35, %30
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.koneplus_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @koneplus_set_actual_profile(%struct.usb_device*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @koneplus_profile_activated(%struct.koneplus_device*, i64) #1

declare dso_local i32 @roccat_report_event(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
