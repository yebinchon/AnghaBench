; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_arpc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.arpc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GB_APB_REQUEST_ARPC_RUN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ES2_USB_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to send ARPC request %d: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es2_ap_dev*, %struct.arpc*, i32)* @arpc_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arpc_send(%struct.es2_ap_dev* %0, %struct.arpc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.es2_ap_dev*, align 8
  %6 = alloca %struct.arpc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %5, align 8
  store %struct.arpc* %1, %struct.arpc** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %5, align 8
  %11 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %10, i32 0, i32 0
  %12 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  store %struct.usb_device* %12, %struct.usb_device** %8, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %14 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %15 = call i32 @usb_sndctrlpipe(%struct.usb_device* %14, i32 0)
  %16 = load i32, i32* @GB_APB_REQUEST_ARPC_RUN, align 4
  %17 = load i32, i32* @USB_DIR_OUT, align 4
  %18 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.arpc*, %struct.arpc** %6, align 8
  %23 = getelementptr inbounds %struct.arpc, %struct.arpc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.arpc*, %struct.arpc** %6, align 8
  %26 = getelementptr inbounds %struct.arpc, %struct.arpc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  %31 = load i32, i32* @ES2_USB_CTRL_TIMEOUT, align 4
  %32 = call i32 @usb_control_msg(%struct.usb_device* %13, i32 %15, i32 %16, i32 %21, i32 0, i32 0, %struct.TYPE_2__* %24, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.arpc*, %struct.arpc** %6, align 8
  %35 = getelementptr inbounds %struct.arpc, %struct.arpc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = icmp ne i32 %33, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %3
  %42 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 0
  %44 = load %struct.arpc*, %struct.arpc** %6, align 8
  %45 = getelementptr inbounds %struct.arpc, %struct.arpc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %56
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
