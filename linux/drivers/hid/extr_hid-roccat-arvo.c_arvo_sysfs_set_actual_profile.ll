; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_set_actual_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_set_actual_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_attribute = type { i32 }
%struct.arvo_device = type { i64, i32 }
%struct.usb_device = type { i32 }
%struct.arvo_actual_profile = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ARVO_COMMAND_ACTUAL_PROFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @arvo_sysfs_set_actual_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arvo_sysfs_set_actual_profile(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.arvo_device*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.arvo_actual_profile, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_get_drvdata(i32 %19)
  %21 = call %struct.arvo_device* @hid_get_drvdata(i32 %20)
  store %struct.arvo_device* %21, %struct.arvo_device** %10, align 8
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @to_usb_interface(i32 %26)
  %28 = call %struct.usb_device* @interface_to_usbdev(i32 %27)
  store %struct.usb_device* %28, %struct.usb_device** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 10, i64* %13)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %5, align 4
  br label %68

35:                                               ; preds = %4
  %36 = load i64, i64* %13, align 8
  %37 = icmp ult i64 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %13, align 8
  %40 = icmp ugt i64 %39, 5
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %68

44:                                               ; preds = %38
  %45 = load i32, i32* @ARVO_COMMAND_ACTUAL_PROFILE, align 4
  %46 = getelementptr inbounds %struct.arvo_actual_profile, %struct.arvo_actual_profile* %12, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds %struct.arvo_actual_profile, %struct.arvo_actual_profile* %12, i32 0, i32 0
  store i64 %47, i64* %48, align 8
  %49 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %50 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %49, i32 0, i32 1
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %53 = load i32, i32* @ARVO_COMMAND_ACTUAL_PROFILE, align 4
  %54 = call i32 @roccat_common2_send(%struct.usb_device* %52, i32 %53, %struct.arvo_actual_profile* %12, i32 16)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %44
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %60 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %65 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %41, %33
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local %struct.arvo_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roccat_common2_send(%struct.usb_device*, i32, %struct.arvo_actual_profile*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
