; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_set_raw_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_set_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.usbhid_device* }
%struct.usbhid_device = type { %struct.usb_interface* }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@HID_OUTPUT_REPORT = common dso_local global i8 0, align 1
@HID_QUIRK_SKIP_OUTPUT_REPORT_ID = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32, i32*, i64, i8)* @usbhid_set_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_set_raw_report(%struct.hid_device* %0, i32 %1, i32* %2, i64 %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.usbhid_device*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca %struct.usb_interface*, align 8
  %14 = alloca %struct.usb_host_interface*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 1
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
  store i32 0, i32* %16, align 4
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @HID_OUTPUT_REPORT, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %5
  %34 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @HID_QUIRK_SKIP_OUTPUT_REPORT_ID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 0, i32* %42, align 4
  br label %47

43:                                               ; preds = %33, %5
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32*, i32** %8, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %9, align 8
  store i32 1, i32* %16, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %59 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %60 = call i32 @usb_sndctrlpipe(%struct.usb_device* %59, i32 0)
  %61 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %62 = load i32, i32* @USB_DIR_OUT, align 4
  %63 = load i32, i32* @USB_TYPE_CLASS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %66 = or i32 %64, %65
  %67 = load i8, i8* %10, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %68, 1
  %70 = shl i32 %69, 8
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %70, %71
  %73 = trunc i32 %72 to i8
  %74 = load %struct.usb_host_interface*, %struct.usb_host_interface** %14, align 8
  %75 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %81 = call i32 @usb_control_msg(%struct.usb_device* %58, i32 %60, i32 %61, i32 %66, i8 zeroext %73, i32 %77, i32* %78, i64 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %57
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %87, %84, %57
  %91 = load i32, i32* %15, align 4
  ret i32 %91
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i8 zeroext, i32, i32*, i64, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
