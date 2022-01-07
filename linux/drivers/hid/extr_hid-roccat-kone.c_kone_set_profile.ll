; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_set_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_set_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.kone_profile = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@kone_command_profile = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.kone_profile*, i32)* @kone_set_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_set_profile(%struct.usb_device* %0, %struct.kone_profile* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.kone_profile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.kone_profile* %1, %struct.kone_profile** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 5
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %20 = call i32 @usb_sndctrlpipe(%struct.usb_device* %19, i32 0)
  %21 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %22 = load i32, i32* @USB_TYPE_CLASS, align 4
  %23 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USB_DIR_OUT, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @kone_command_profile, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.kone_profile*, %struct.kone_profile** %6, align 8
  %30 = bitcast %struct.kone_profile* %29 to i8*
  %31 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %32 = call i32 @usb_control_msg(%struct.usb_device* %18, i32 %20, i32 %21, i32 %26, i32 %27, i32 %28, i8* %30, i32 4, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %46

38:                                               ; preds = %17
  %39 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %40 = call i64 @kone_check_write(%struct.usb_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %46

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %42, %36, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i64 @kone_check_write(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
