; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_remove_specials.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-pyra.c_pyra_remove_specials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.pyra_device = type { i32, i64 }

@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @pyra_remove_specials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pyra_remove_specials(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.pyra_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.usb_interface* @to_usb_interface(i32 %8)
  store %struct.usb_interface* %9, %struct.usb_interface** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @USB_INTERFACE_PROTOCOL_MOUSE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %1
  %19 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %20 = call %struct.pyra_device* @hid_get_drvdata(%struct.hid_device* %19)
  store %struct.pyra_device* %20, %struct.pyra_device** %4, align 8
  %21 = load %struct.pyra_device*, %struct.pyra_device** %4, align 8
  %22 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.pyra_device*, %struct.pyra_device** %4, align 8
  %27 = getelementptr inbounds %struct.pyra_device, %struct.pyra_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @roccat_disconnect(i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %32 = call %struct.pyra_device* @hid_get_drvdata(%struct.hid_device* %31)
  %33 = call i32 @kfree(%struct.pyra_device* %32)
  br label %34

34:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.pyra_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @roccat_disconnect(i32) #1

declare dso_local i32 @kfree(%struct.pyra_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
