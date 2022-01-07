; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_get_str_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-uclogic-params.c_uclogic_params_get_str_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_REQ_GET_DESCRIPTOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DT_STRING = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"string descriptor #%hhu not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed retrieving string descriptor #%hhu: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, %struct.hid_device*, i64, i64)* @uclogic_params_get_str_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclogic_params_get_str_desc(i64** %0, %struct.hid_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64**, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i64*, align 8
  store i64** %0, i64*** %5, align 8
  store %struct.hid_device* %1, %struct.hid_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.usb_device* @hid_to_usb_dev(%struct.hid_device* %12)
  store %struct.usb_device* %13, %struct.usb_device** %10, align 8
  store i64* null, i64** %11, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %15 = icmp eq %struct.hid_device* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %9, align 4
  br label %67

19:                                               ; preds = %4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64* @kmalloc(i64 %20, i32 %21)
  store i64* %22, i64** %11, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %67

28:                                               ; preds = %19
  %29 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %31 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %30, i32 0)
  %32 = load i32, i32* @USB_REQ_GET_DESCRIPTOR, align 4
  %33 = load i32, i32* @USB_DIR_IN, align 4
  %34 = load i32, i32* @USB_DT_STRING, align 4
  %35 = shl i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64*, i64** %11, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %42 = call i32 @usb_control_msg(%struct.usb_device* %29, i32 %31, i32 %32, i32 %33, i64 %38, i32 1033, i64* %39, i64 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @EPIPE, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @hid_dbg(%struct.hid_device* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %49)
  br label %67

51:                                               ; preds = %28
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @hid_err(%struct.hid_device* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %57)
  br label %67

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = load i64**, i64*** %5, align 8
  %62 = icmp ne i64** %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i64*, i64** %11, align 8
  %65 = load i64**, i64*** %5, align 8
  store i64* %64, i64** %65, align 8
  store i64* null, i64** %11, align 8
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %54, %47, %25, %16
  %68 = load i64*, i64** %11, align 8
  %69 = call i32 @kfree(i64* %68)
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.usb_device* @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i64, i32, i64*, i64, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i64) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
