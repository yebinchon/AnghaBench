; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_report_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-ntrig.c_ntrig_report_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Firmware version: %s (%02x%02x %02x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @ntrig_report_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntrig_report_version(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [20 x i8], align 16
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i8*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %8 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %7)
  store %struct.usb_device* %8, %struct.usb_device** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i8* @kmalloc(i32 8, i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %16, i32 0)
  %18 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %19 = load i32, i32* @USB_TYPE_CLASS, align 4
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @USB_DIR_IN, align 4
  %23 = or i32 %21, %22
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %26 = call i32 @usb_control_msg(%struct.usb_device* %15, i32 %17, i32 %18, i32 %23, i32 780, i32 1, i8* %24, i32 8, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %49

29:                                               ; preds = %14
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %33 = call i32 @ntrig_version_string(i8* %31, i8* %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %35 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 3
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 5
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @hid_info(%struct.hid_device* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %35, i8 zeroext %38, i8 zeroext %41, i8 zeroext %44, i8 zeroext %47)
  br label %49

49:                                               ; preds = %29, %14
  br label %50

50:                                               ; preds = %49, %13
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @kfree(i8* %51)
  ret void
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @ntrig_version_string(i8*, i8*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
