; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_fill_in_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_fill_in_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u2fzero_device = type { i32, i32, %struct.hid_device* }
%struct.hid_device = type { i64, %struct.usbhid_device* }
%struct.usbhid_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BUS_USB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIPE_INTERRUPT = common dso_local global i32 0, align 4
@HID_REPORT_SIZE = common dso_local global i32 0, align 4
@u2fzero_read_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u2fzero_device*)* @u2fzero_fill_in_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u2fzero_fill_in_urb(%struct.u2fzero_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.u2fzero_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usbhid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.u2fzero_device* %0, %struct.u2fzero_device** %3, align 8
  %9 = load %struct.u2fzero_device*, %struct.u2fzero_device** %3, align 8
  %10 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %9, i32 0, i32 2
  %11 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  store %struct.hid_device* %11, %struct.hid_device** %4, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 1
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %13, align 8
  store %struct.usbhid_device* %14, %struct.usbhid_device** %6, align 8
  %15 = load %struct.u2fzero_device*, %struct.u2fzero_device** %3, align 8
  %16 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %15, i32 0, i32 2
  %17 = load %struct.hid_device*, %struct.hid_device** %16, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BUS_USB, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %90

25:                                               ; preds = %1
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %26)
  store %struct.usb_device* %27, %struct.usb_device** %5, align 8
  %28 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %29 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %34 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32, %25
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %90

40:                                               ; preds = %32
  %41 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %42 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %43 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device* %41, i32 %46)
  store %struct.usb_host_endpoint* %47, %struct.usb_host_endpoint** %8, align 8
  %48 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %49 = icmp ne %struct.usb_host_endpoint* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %90

53:                                               ; preds = %40
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @usb_alloc_urb(i32 0, i32 %54)
  %56 = load %struct.u2fzero_device*, %struct.u2fzero_device** %3, align 8
  %57 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.u2fzero_device*, %struct.u2fzero_device** %3, align 8
  %59 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %90

65:                                               ; preds = %53
  %66 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %67 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1073741823
  %72 = load i32, i32* @PIPE_INTERRUPT, align 4
  %73 = shl i32 %72, 30
  %74 = or i32 %71, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.u2fzero_device*, %struct.u2fzero_device** %3, align 8
  %76 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.u2fzero_device*, %struct.u2fzero_device** %3, align 8
  %81 = getelementptr inbounds %struct.u2fzero_device, %struct.u2fzero_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @HID_REPORT_SIZE, align 4
  %84 = load i32, i32* @u2fzero_read_callback, align 4
  %85 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %8, align 8
  %86 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_fill_int_urb(i32 %77, %struct.usb_device* %78, i32 %79, i32 %82, i32 %83, i32 %84, i32* null, i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %65, %62, %50, %37, %22
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local %struct.usb_host_endpoint* @usb_pipe_endpoint(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(i32, %struct.usb_device*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
