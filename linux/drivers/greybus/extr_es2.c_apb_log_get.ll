; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_apb_log_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_apb_log_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32, i32 }

@GB_APB_REQUEST_LOG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@APB1_LOG_MSG_SIZE = common dso_local global i32 0, align 4
@ES2_USB_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es2_ap_dev*, i8*)* @apb_log_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apb_log_get(%struct.es2_ap_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.es2_ap_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %33, %2
  %7 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %8 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %11 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_rcvctrlpipe(i32 %12, i32 0)
  %14 = load i32, i32* @GB_APB_REQUEST_LOG, align 4
  %15 = load i32, i32* @USB_DIR_IN, align 4
  %16 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %19 = or i32 %17, %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @APB1_LOG_MSG_SIZE, align 4
  %22 = load i32, i32* @ES2_USB_CTRL_TIMEOUT, align 4
  %23 = call i32 @usb_control_msg(i32 %9, i32 %13, i32 %14, i32 %19, i32 0, i32 0, i8* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %6
  %27 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %28 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %27, i32 0, i32 0
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @kfifo_in(i32* %28, i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %6
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %6, label %36

36:                                               ; preds = %33
  ret void
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @kfifo_in(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
