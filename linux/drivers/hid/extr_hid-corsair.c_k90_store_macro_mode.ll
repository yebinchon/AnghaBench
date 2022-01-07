; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_k90_store_macro_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_k90_store_macro_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"SW\00", align 1
@K90_MACRO_MODE_SW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"HW\00", align 1
@K90_MACRO_MODE_HW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@K90_REQUEST_MACRO_MODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to set macro mode.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @k90_store_macro_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k90_store_macro_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_interface*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.usb_interface* @to_usb_interface(i32 %16)
  store %struct.usb_interface* %17, %struct.usb_interface** %11, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %11, align 8
  %19 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %18)
  store %struct.usb_device* %19, %struct.usb_device** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strncmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @K90_MACRO_MODE_SW, align 4
  store i32 %24, i32* %13, align 4
  br label %35

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @K90_MACRO_MODE_HW, align 4
  store i32 %30, i32* %13, align 4
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %57

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %23
  %36 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %37 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %38 = call i32 @usb_sndctrlpipe(%struct.usb_device* %37, i32 0)
  %39 = load i32, i32* @K90_REQUEST_MACRO_MODE, align 4
  %40 = load i32, i32* @USB_DIR_OUT, align 4
  %41 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %47 = call i32 @usb_control_msg(%struct.usb_device* %36, i32 %38, i32 %39, i32 %44, i32 %45, i32 0, i32* null, i32 0, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %57

54:                                               ; preds = %35
  %55 = load i64, i64* %9, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %54, %50, %31
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
