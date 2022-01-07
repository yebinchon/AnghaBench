; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kovaplus.c_kovaplus_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hid_report = type { i32 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.kovaplus_device = type { i64 }

@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @kovaplus_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kovaplus_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.kovaplus_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.usb_interface* @to_usb_interface(i32 %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %10, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %18 = call %struct.kovaplus_device* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.kovaplus_device* %18, %struct.kovaplus_device** %11, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_INTERFACE_PROTOCOL_MOUSE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

28:                                               ; preds = %4
  %29 = load %struct.kovaplus_device*, %struct.kovaplus_device** %11, align 8
  %30 = icmp eq %struct.kovaplus_device* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %45

32:                                               ; preds = %28
  %33 = load %struct.kovaplus_device*, %struct.kovaplus_device** %11, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @kovaplus_keep_values_up_to_date(%struct.kovaplus_device* %33, i32* %34)
  %36 = load %struct.kovaplus_device*, %struct.kovaplus_device** %11, align 8
  %37 = getelementptr inbounds %struct.kovaplus_device, %struct.kovaplus_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.kovaplus_device*, %struct.kovaplus_device** %11, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @kovaplus_report_to_chrdev(%struct.kovaplus_device* %41, i32* %42)
  br label %44

44:                                               ; preds = %40, %32
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %31, %27
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.kovaplus_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @kovaplus_keep_values_up_to_date(%struct.kovaplus_device*, i32*) #1

declare dso_local i32 @kovaplus_report_to_chrdev(%struct.kovaplus_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
