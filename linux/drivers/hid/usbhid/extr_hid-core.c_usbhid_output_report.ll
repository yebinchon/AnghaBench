; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_output_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32*, i64)* @usbhid_output_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_output_report(%struct.hid_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.usbhid_device*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = load %struct.usbhid_device*, %struct.usbhid_device** %14, align 8
  store %struct.usbhid_device* %15, %struct.usbhid_device** %8, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %17 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %16)
  store %struct.usb_device* %17, %struct.usb_device** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %19 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %58

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %7, align 8
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %37 = load %struct.usbhid_device*, %struct.usbhid_device** %8, align 8
  %38 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %45 = call i32 @usb_interrupt_msg(%struct.usb_device* %36, i32 %41, i32* %42, i64 %43, i32* %10, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %35
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
