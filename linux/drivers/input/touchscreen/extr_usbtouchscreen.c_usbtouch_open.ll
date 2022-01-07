; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usbtouch_usb = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @usbtouch_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbtouch_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.usbtouch_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.usbtouch_usb* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.usbtouch_usb* %6, %struct.usbtouch_usb** %3, align 8
  %7 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %8 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = call i32 @interface_to_usbdev(%struct.TYPE_8__* %9)
  %11 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %12 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %11, i32 0, i32 3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %16 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call i64 @usb_autopm_get_interface(%struct.TYPE_8__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 0, %23 ]
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %65

29:                                               ; preds = %24
  %30 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %31 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %34 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %29
  %40 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %41 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %40, i32 0, i32 3
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i64 @usb_submit_urb(%struct.TYPE_7__* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %57

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %52 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %56 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %46
  %58 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %59 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %58, i32 0, i32 2
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %62 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @usb_autopm_put_interface(%struct.TYPE_8__* %63)
  br label %65

65:                                               ; preds = %57, %28
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.usbtouch_usb* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @interface_to_usbdev(%struct.TYPE_8__*) #1

declare dso_local i64 @usb_autopm_get_interface(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
