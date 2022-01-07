; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_apb_get_cport_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_apb_get_cport_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GB_APB_REQUEST_CPORT_COUNT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ES2_USB_CTRL_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot retrieve CPort count: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Limiting number of CPorts to U8_MAX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @apb_get_cport_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_get_cport_count(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32* @kzalloc(i32 4, i32 %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %15, i32 0)
  %17 = load i32, i32* @GB_APB_REQUEST_CPORT_COUNT, align 4
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %22 = or i32 %20, %21
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @ES2_USB_CTRL_TIMEOUT, align 4
  %25 = call i32 @usb_control_msg(%struct.usb_device* %14, i32 %16, i32 %17, i32 %22, i32 0, i32 0, i32* %23, i32 4, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 4
  br i1 %28, label %29, label %40

29:                                               ; preds = %13
  %30 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %31 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %29
  br label %53

40:                                               ; preds = %13
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @U8_MAX, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @U8_MAX, align 4
  store i32 %48, i32* %4, align 4
  %49 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 0
  %51 = call i32 @dev_warn(i32* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %47, %40
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
