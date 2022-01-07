; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_start_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_start_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32, i32 }

@HID_IN_POLLING = common dso_local global i32 0, align 4
@HID_DISCONNECTED = common dso_local global i32 0, align 4
@HID_SUSPENDED = common dso_local global i32 0, align 4
@HID_IN_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@HID_NO_BANDWIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hid_start_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_start_in(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  store %struct.usbhid_device* %8, %struct.usbhid_device** %5, align 8
  %9 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %10 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %9, i32 0, i32 0
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @HID_IN_POLLING, align 4
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %15 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %1
  %19 = load i32, i32* @HID_DISCONNECTED, align 4
  %20 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %21 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @HID_SUSPENDED, align 4
  %26 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %27 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @HID_IN_RUNNING, align 4
  %32 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %33 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %32, i32 0, i32 1
  %34 = call i32 @test_and_set_bit(i32 %31, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %30
  %37 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %38 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @GFP_ATOMIC, align 4
  %41 = call i32 @usb_submit_urb(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load i32, i32* @HID_IN_RUNNING, align 4
  %46 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %47 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %46, i32 0, i32 1
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @ENOSPC, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i32, i32* @HID_NO_BANDWIDTH, align 4
  %55 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %56 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %55, i32 0, i32 1
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %53, %44
  br label %64

59:                                               ; preds = %36
  %60 = load i32, i32* @HID_NO_BANDWIDTH, align 4
  %61 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %62 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %61, i32 0, i32 1
  %63 = call i32 @clear_bit(i32 %60, i32* %62)
  br label %64

64:                                               ; preds = %59, %58
  br label %65

65:                                               ; preds = %64, %30, %24, %18, %1
  %66 = load %struct.usbhid_device*, %struct.usbhid_device** %5, align 8
  %67 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %66, i32 0, i32 0
  %68 = load i64, i64* %3, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
