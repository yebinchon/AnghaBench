; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_latency_tag_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_latency_tag_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32 }
%struct.es2_ap_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@GB_APB_REQUEST_LATENCY_TAG_EN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ES2_USB_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot enable latency tag for cport %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_host_device*, i32)* @latency_tag_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latency_tag_enable(%struct.gb_host_device* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_host_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.es2_ap_dev*, align 8
  %7 = alloca %struct.usb_device*, align 8
  store %struct.gb_host_device* %0, %struct.gb_host_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %9 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %8)
  store %struct.es2_ap_dev* %9, %struct.es2_ap_dev** %6, align 8
  %10 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %11 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %10, i32 0, i32 0
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %7, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %15 = call i32 @usb_sndctrlpipe(%struct.usb_device* %14, i32 0)
  %16 = load i32, i32* @GB_APB_REQUEST_LATENCY_TAG_EN, align 4
  %17 = load i32, i32* @USB_DIR_OUT, align 4
  %18 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ES2_USB_CTRL_TIMEOUT, align 4
  %24 = call i32 @usb_control_msg(%struct.usb_device* %13, i32 %15, i32 %16, i32 %21, i32 %22, i32 0, i32* null, i32 0, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %27, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
