; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.usbhid_device* }
%struct.usbhid_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HID_OPENED = common dso_local global i32 0, align 4
@HID_QUIRK_ALWAYS_POLL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HID_RESUME_RUNNING = common dso_local global i32 0, align 4
@HID_IN_POLLING = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @usbhid_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_open(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 1
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  store %struct.usbhid_device* %8, %struct.usbhid_device** %4, align 8
  %9 = load i32, i32* @HID_OPENED, align 4
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %11 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %10, i32 0, i32 0
  %12 = call i32 @set_bit(i32 %9, i32* %11)
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @HID_QUIRK_ALWAYS_POLL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

20:                                               ; preds = %1
  %21 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %22 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @HID_OPENED, align 4
  %29 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %30 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %29, i32 0, i32 0
  %31 = call i32 @clear_bit(i32 %28, i32* %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %90

34:                                               ; preds = %20
  %35 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %36 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @HID_RESUME_RUNNING, align 4
  %40 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %41 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i32, i32* @HID_IN_POLLING, align 4
  %44 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %45 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  %47 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %48 = call i32 @hid_start_in(%struct.hid_device* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %34
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ENOSPC, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %58 = call i32 @hid_io_error(%struct.hid_device* %57)
  store i32 0, i32* %5, align 4
  br label %74

59:                                               ; preds = %51
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @HID_OPENED, align 4
  %63 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %64 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = load i32, i32* @HID_IN_POLLING, align 4
  %67 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %68 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %67, i32 0, i32 0
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %71 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %59, %56
  br label %75

75:                                               ; preds = %74, %34
  %76 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %77 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 @msleep(i32 50)
  br label %84

84:                                               ; preds = %82, %75
  %85 = load i32, i32* @HID_RESUME_RUNNING, align 4
  %86 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %87 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %86, i32 0, i32 0
  %88 = call i32 @clear_bit(i32 %85, i32* %87)
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %27, %19
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hid_start_in(%struct.hid_device*) #1

declare dso_local i32 @hid_io_error(%struct.hid_device*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
