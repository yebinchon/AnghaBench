; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_post_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_post_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.hid_device = type { i32, i32, %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_DT_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"reading report descriptor failed (post_reset)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"report descriptor changed\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@HID_RESET_PENDING = common dso_local global i32 0, align 4
@HID_CLEAR_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @hid_post_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_post_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.usbhid_device*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %4, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = call %struct.hid_device* @usb_get_intfdata(%struct.usb_interface* %12)
  store %struct.hid_device* %13, %struct.hid_device** %5, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 2
  %16 = load %struct.usbhid_device*, %struct.usbhid_device** %15, align 8
  store %struct.usbhid_device* %16, %struct.usbhid_device** %6, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %18, align 8
  store %struct.usb_host_interface* %19, %struct.usb_host_interface** %7, align 8
  %20 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %91

30:                                               ; preds = %1
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %33 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HID_DT_REPORT, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @hid_get_class_descriptor(%struct.usb_device* %31, i32 %35, i32 %36, i8* %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = call i32 @dbg_hid(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @kfree(i8* %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %91

49:                                               ; preds = %30
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %52 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %55 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcmp(i8* %50, i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %49
  %63 = call i32 @dbg_hid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EPERM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %91

66:                                               ; preds = %49
  %67 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %68 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %67, i32 0, i32 0
  %69 = call i32 @spin_lock_irq(i32* %68)
  %70 = load i32, i32* @HID_RESET_PENDING, align 4
  %71 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %72 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %71, i32 0, i32 1
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  %74 = load i32, i32* @HID_CLEAR_HALT, align 4
  %75 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %76 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %75, i32 0, i32 1
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %79 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_irq(i32* %79)
  %81 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %82 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %83 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %82, i32 0, i32 0
  %84 = load %struct.usb_host_interface*, %struct.usb_host_interface** %83, align 8
  %85 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @hid_set_idle(%struct.usb_device* %81, i32 %87, i32 0, i32 0)
  %89 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %90 = call i32 @hid_restart_io(%struct.hid_device* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %66, %62, %44, %27
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.hid_device* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_get_class_descriptor(%struct.usb_device*, i32, i32, i8*, i32) #1

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hid_set_idle(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @hid_restart_io(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
