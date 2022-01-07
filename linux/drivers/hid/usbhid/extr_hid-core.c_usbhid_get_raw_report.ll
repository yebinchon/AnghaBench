; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_get_raw_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_get_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { %struct.usb_interface* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i8*, i64, i8)* @usbhid_get_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_get_raw_report(%struct.hid_device* %0, i8 zeroext %1, i8* %2, i64 %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.usbhid_device*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_interface*, align 8
  %14 = alloca %struct.usb_host_interface*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  %19 = load %struct.usbhid_device*, %struct.usbhid_device** %18, align 8
  store %struct.usbhid_device* %19, %struct.usbhid_device** %11, align 8
  %20 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %21 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %20)
  store %struct.usb_device* %21, %struct.usb_device** %12, align 8
  %22 = load %struct.usbhid_device*, %struct.usbhid_device** %11, align 8
  %23 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %22, i32 0, i32 0
  %24 = load %struct.usb_interface*, %struct.usb_interface** %23, align 8
  store %struct.usb_interface* %24, %struct.usb_interface** %13, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %13, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = load %struct.usb_host_interface*, %struct.usb_host_interface** %26, align 8
  store %struct.usb_host_interface* %27, %struct.usb_host_interface** %14, align 8
  store i32 0, i32* %15, align 4
  %28 = load i8, i8* %7, align 1
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 %28, i8* %30, align 1
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %9, align 8
  store i32 1, i32* %15, align 4
  br label %39

39:                                               ; preds = %34, %5
  %40 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %42 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %41, i32 0)
  %43 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %44 = load i32, i32* @USB_DIR_IN, align 4
  %45 = load i32, i32* @USB_TYPE_CLASS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %48 = or i32 %46, %47
  %49 = load i8, i8* %10, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, 1
  %52 = shl i32 %51, 8
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %52, %54
  %56 = trunc i32 %55 to i8
  %57 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %58 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %64 = call i32 @usb_control_msg(%struct.usb_device* %40, i32 %42, i32 %43, i32 %48, i8 zeroext %56, i32 %60, i8* %61, i64 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %39
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %70, %67, %39
  %74 = load i32, i32* %16, align 4
  ret i32 %74
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i8 zeroext, i32, i8*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
