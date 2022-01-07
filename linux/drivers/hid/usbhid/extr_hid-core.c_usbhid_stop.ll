; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i64, %struct.usbhid_device* }
%struct.usbhid_device = type { i32*, i32*, i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HID_QUIRK_ALWAYS_POLL = common dso_local global i32 0, align 4
@HID_IN_POLLING = common dso_local global i32 0, align 4
@HID_STARTED = common dso_local global i32 0, align 4
@HID_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @usbhid_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhid_stop(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %4 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %5 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %4, i32 0, i32 2
  %6 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  store %struct.usbhid_device* %6, %struct.usbhid_device** %3, align 8
  %7 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %8 = icmp ne %struct.usbhid_device* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %16 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HID_QUIRK_ALWAYS_POLL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i32, i32* @HID_IN_POLLING, align 4
  %23 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %24 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %23, i32 0, i32 4
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %21, %14
  %31 = load i32, i32* @HID_STARTED, align 4
  %32 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %33 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %32, i32 0, i32 4
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %36 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %35, i32 0, i32 3
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load i32, i32* @HID_DISCONNECTED, align 4
  %39 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %40 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %39, i32 0, i32 4
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %43 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %42, i32 0, i32 3
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %46 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @usb_kill_urb(i32* %47)
  %49 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %50 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @usb_kill_urb(i32* %51)
  %53 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %54 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @usb_kill_urb(i32* %55)
  %57 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %58 = call i32 @hid_cancel_delayed_stuff(%struct.usbhid_device* %57)
  %59 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %60 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %62 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @usb_free_urb(i32* %63)
  %65 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %66 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @usb_free_urb(i32* %67)
  %69 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %70 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @usb_free_urb(i32* %71)
  %73 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %74 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %76 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %78 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %80 = call i32 @hid_to_usb_dev(%struct.hid_device* %79)
  %81 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %82 = call i32 @hid_free_buffers(i32 %80, %struct.hid_device* %81)
  br label %83

83:                                               ; preds = %30, %13
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @hid_cancel_delayed_stuff(%struct.usbhid_device*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @hid_free_buffers(i32, %struct.hid_device*) #1

declare dso_local i32 @hid_to_usb_dev(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
