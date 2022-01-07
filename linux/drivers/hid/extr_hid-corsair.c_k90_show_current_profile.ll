; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_k90_show_current_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_k90_show_current_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@K90_REQUEST_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to get K90 initial state (error %d).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Read invalid current profile: %02hhx.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @k90_show_current_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k90_show_current_profile(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.usb_interface* @to_usb_interface(i32 %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %9, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %10, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmalloc(i32 8, i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %75

26:                                               ; preds = %3
  %27 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %29 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %28, i32 0)
  %30 = load i32, i32* @K90_REQUEST_STATUS, align 4
  %31 = load i32, i32* @USB_DIR_IN, align 4
  %32 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %35 = or i32 %33, %34
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %38 = call i32 @usb_control_msg(%struct.usb_device* %27, i32 %29, i32 %30, i32 %35, i32 0, i32 0, i8* %36, i32 8, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = trunc i32 %43 to i8
  %45 = call i32 @dev_warn(%struct.device* %42, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8 signext %44)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %71

48:                                               ; preds = %26
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 3
  br i1 %57, label %58, label %66

58:                                               ; preds = %55, %48
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 7
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @dev_warn(%struct.device* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8 signext %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %71

66:                                               ; preds = %55
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @snprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %66, %58, %41
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %23
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
