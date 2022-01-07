; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_set_key_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_set_key_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device_attribute = type { i32 }
%struct.arvo_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.arvo_key_mask = type { i64, i32 }

@ARVO_COMMAND_KEY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @arvo_sysfs_set_key_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arvo_sysfs_set_key_mask(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.arvo_device*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.arvo_key_mask, align 8
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
  br label %56

35:                                               ; preds = %4
  %36 = load i32, i32* @ARVO_COMMAND_KEY_MASK, align 4
  %37 = getelementptr inbounds %struct.arvo_key_mask, %struct.arvo_key_mask* %12, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds %struct.arvo_key_mask, %struct.arvo_key_mask* %12, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %41 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %44 = load i32, i32* @ARVO_COMMAND_KEY_MASK, align 4
  %45 = call i32 @roccat_common2_send(%struct.usb_device* %43, i32 %44, %struct.arvo_key_mask* %12, i32 16)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %47 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %5, align 4
  br label %56

53:                                               ; preds = %35
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %51, %33
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.arvo_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(i32) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roccat_common2_send(%struct.usb_device*, i32, %struct.arvo_key_mask*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
