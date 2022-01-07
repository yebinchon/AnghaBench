; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_write_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_write_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.kone_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.kone_settings = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @kone_sysfs_write_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_sysfs_write_settings(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.kone_device*, align 8
  %16 = alloca %struct.usb_device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.kobject*, %struct.kobject** %9, align 8
  %21 = call %struct.TYPE_7__* @kobj_to_dev(%struct.kobject* %20)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %14, align 8
  %26 = load %struct.device*, %struct.device** %14, align 8
  %27 = call i32 @dev_get_drvdata(%struct.device* %26)
  %28 = call %struct.kone_device* @hid_get_drvdata(i32 %27)
  store %struct.kone_device* %28, %struct.kone_device** %15, align 8
  %29 = load %struct.device*, %struct.device** %14, align 8
  %30 = call i32 @to_usb_interface(%struct.device* %29)
  %31 = call %struct.usb_device* @interface_to_usbdev(i32 %30)
  store %struct.usb_device* %31, %struct.usb_device** %16, align 8
  store i32 0, i32* %17, align 4
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %95

40:                                               ; preds = %34
  %41 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %42 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %46 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %45, i32 0, i32 1
  %47 = call i32 @memcmp(i8* %44, %struct.TYPE_6__* %46, i32 4)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %40
  %51 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = bitcast i8* %52 to %struct.kone_settings*
  %54 = call i32 @kone_set_settings(%struct.usb_device* %51, %struct.kone_settings* %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %59 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %7, align 4
  br label %95

62:                                               ; preds = %50
  %63 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %64 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %19, align 4
  %67 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %68 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %67, i32 0, i32 1
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @memcpy(%struct.TYPE_6__* %68, i8* %69, i32 4)
  %71 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %72 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %73 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @kone_profile_activated(%struct.kone_device* %71, i32 %75)
  %77 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %78 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %62
  %84 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %85 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %86 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @kone_profile_report(%struct.kone_device* %84, i32 %88)
  br label %90

90:                                               ; preds = %83, %62
  br label %91

91:                                               ; preds = %90, %40
  %92 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %93 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  store i32 4, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %57, %37
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_7__* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.kone_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcmp(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @kone_set_settings(%struct.usb_device*, %struct.kone_settings*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @kone_profile_activated(%struct.kone_device*, i32) #1

declare dso_local i32 @kone_profile_report(%struct.kone_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
