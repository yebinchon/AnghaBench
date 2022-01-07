; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_smartset_send_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_smartset_send_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@ELO_SEND_SMARTSET_COMMAND = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@ELO_GET_SMARTSET_RESPONSE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@ELO_SMARTSET_PACKET_SIZE = common dso_local global i32 0, align 4
@ELO_SMARTSET_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i8*)* @elo_smartset_send_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elo_smartset_send_get(%struct.usb_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ELO_SEND_SMARTSET_COMMAND, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %15 = call i32 @usb_sndctrlpipe(%struct.usb_device* %14, i32 0)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @USB_DIR_OUT, align 4
  store i32 %16, i32* %9, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ELO_GET_SMARTSET_RESPONSE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %22, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @USB_DIR_IN, align 4
  store i32 %24, i32* %9, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %37 = or i32 %35, %36
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @ELO_SMARTSET_PACKET_SIZE, align 4
  %40 = load i32, i32* @ELO_SMARTSET_CMD_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(%struct.usb_device* %30, i32 %31, i32 %32, i32 %37, i32 0, i32 0, i8* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %29, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
