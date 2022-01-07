; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_set_startup_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_set_startup_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device_attribute = type { i32 }
%struct.kone_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @kone_sysfs_set_startup_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_sysfs_set_startup_profile(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kone_device*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_get_drvdata(%struct.device* %19)
  %21 = call %struct.kone_device* @hid_get_drvdata(i32 %20)
  store %struct.kone_device* %21, %struct.kone_device** %10, align 8
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @to_usb_interface(%struct.device* %22)
  %24 = call %struct.usb_device* @interface_to_usbdev(i32 %23)
  store %struct.usb_device* %24, %struct.usb_device** %11, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @kstrtoul(i8* %25, i32 10, i64* %13)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %74

31:                                               ; preds = %4
  %32 = load i64, i64* %13, align 8
  %33 = icmp ult i64 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %13, align 8
  %36 = icmp ugt i64 %35, 5
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %34
  %41 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %42 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %46 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %49 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %48, i32 0, i32 1
  %50 = call i32 @kone_set_settings_checksum(%struct.TYPE_5__* %49)
  %51 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %52 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %53 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %52, i32 0, i32 1
  %54 = call i32 @kone_set_settings(%struct.usb_device* %51, %struct.TYPE_5__* %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %59 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %74

62:                                               ; preds = %40
  %63 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @kone_profile_activated(%struct.kone_device* %63, i64 %64)
  %66 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @kone_profile_report(%struct.kone_device* %66, i64 %67)
  %69 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %70 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i64, i64* %9, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %62, %57, %37, %29
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.kone_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kone_set_settings_checksum(%struct.TYPE_5__*) #1

declare dso_local i32 @kone_set_settings(%struct.usb_device*, %struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kone_profile_activated(%struct.kone_device*, i64) #1

declare dso_local i32 @kone_profile_report(%struct.kone_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
