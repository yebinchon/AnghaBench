; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.usbhid_device* }
%struct.usbhid_device = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@HID_OPENED = common dso_local global i32 0, align 4
@HID_QUIRK_ALWAYS_POLL = common dso_local global i32 0, align 4
@HID_IN_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @usbhid_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhid_close(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 1
  %6 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  store %struct.usbhid_device* %6, %struct.usbhid_device** %3, align 8
  %7 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %8 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load i32, i32* @HID_OPENED, align 4
  %11 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %12 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %11, i32 0, i32 3
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HID_QUIRK_ALWAYS_POLL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @HID_IN_POLLING, align 4
  %22 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %23 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %22, i32 0, i32 3
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock_irq(i32* %27)
  %29 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @HID_QUIRK_ALWAYS_POLL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %47

36:                                               ; preds = %25
  %37 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %38 = call i32 @hid_cancel_delayed_stuff(%struct.usbhid_device* %37)
  %39 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %40 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_kill_urb(i32 %41)
  %43 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %44 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hid_cancel_delayed_stuff(%struct.usbhid_device*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
