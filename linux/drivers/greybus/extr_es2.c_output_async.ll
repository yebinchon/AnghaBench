; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_output_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_output_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.urb = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i64, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@ap_urb_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es2_ap_dev*, i8*, i64, i32)* @output_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_async(%struct.es2_ap_dev* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.es2_ap_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca %struct.urb*, align 8
  %12 = alloca %struct.usb_ctrlrequest*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %6, align 8
  %16 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %10, align 8
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %18)
  store %struct.urb* %19, %struct.urb** %11, align 8
  %20 = load %struct.urb*, %struct.urb** %11, align 8
  %21 = icmp ne %struct.urb* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %86

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = add i64 32, %26
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.usb_ctrlrequest* @kmalloc(i64 %27, i32 %28)
  store %struct.usb_ctrlrequest* %29, %struct.usb_ctrlrequest** %12, align 8
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %31 = icmp ne %struct.usb_ctrlrequest* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.urb*, %struct.urb** %11, align 8
  %34 = call i32 @usb_free_urb(%struct.urb* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %25
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %39 = bitcast %struct.usb_ctrlrequest* %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 32
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @memcpy(i32* %41, i8* %42, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %47 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @USB_DIR_OUT, align 4
  %49 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %54 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %56 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @cpu_to_le16(i64 %59)
  %61 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %62 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.urb*, %struct.urb** %11, align 8
  %64 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %65 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %66 = call i32 @usb_sndctrlpipe(%struct.usb_device* %65, i32 0)
  %67 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %68 = bitcast %struct.usb_ctrlrequest* %67 to i8*
  %69 = load i32*, i32** %13, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @ap_urb_complete, align 4
  %72 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %73 = call i32 @usb_fill_control_urb(%struct.urb* %63, %struct.usb_device* %64, i32 %66, i8* %68, i32* %69, i64 %70, i32 %71, %struct.usb_ctrlrequest* %72)
  %74 = load %struct.urb*, %struct.urb** %11, align 8
  %75 = load i32, i32* @GFP_ATOMIC, align 4
  %76 = call i32 @usb_submit_urb(%struct.urb* %74, i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %37
  %80 = load %struct.urb*, %struct.urb** %11, align 8
  %81 = call i32 @usb_free_urb(%struct.urb* %80)
  %82 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %12, align 8
  %83 = call i32 @kfree(%struct.usb_ctrlrequest* %82)
  br label %84

84:                                               ; preds = %79, %37
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %32, %22
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @usb_fill_control_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i32*, i64, i32, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
