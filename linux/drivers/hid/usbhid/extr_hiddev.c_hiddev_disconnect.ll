; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device*, %struct.hiddev* }
%struct.usbhid_device = type { i32 }
%struct.hiddev = type { i32, i32, i32, i64, i64 }

@hiddev_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hiddev_disconnect(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hiddev*, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 1
  %7 = load %struct.hiddev*, %struct.hiddev** %6, align 8
  store %struct.hiddev* %7, %struct.hiddev** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  store %struct.usbhid_device* %10, %struct.usbhid_device** %4, align 8
  %11 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %12 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @usb_deregister_dev(i32 %13, i32* @hiddev_class)
  %15 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %16 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %19 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %21 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %26 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %29 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @hid_hw_close(i32 %30)
  %32 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %33 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %32, i32 0, i32 1
  %34 = call i32 @wake_up_interruptible(i32* %33)
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %37 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.hiddev*, %struct.hiddev** %3, align 8
  %40 = call i32 @kfree(%struct.hiddev* %39)
  br label %41

41:                                               ; preds = %35, %24
  ret void
}

declare dso_local i32 @usb_deregister_dev(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hid_hw_close(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.hiddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
