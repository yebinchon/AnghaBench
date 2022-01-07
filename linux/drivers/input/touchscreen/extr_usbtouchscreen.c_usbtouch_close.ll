; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_usbtouchscreen.c_usbtouch_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usbtouch_usb = type { i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @usbtouch_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbtouch_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.usbtouch_usb*, align 8
  %4 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %6 = call %struct.usbtouch_usb* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.usbtouch_usb* %6, %struct.usbtouch_usb** %3, align 8
  %7 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %8 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %7, i32 0, i32 2
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %11 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %18 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_kill_urb(i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %23 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %25 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %24, i32 0, i32 2
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %28 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @usb_autopm_get_interface(%struct.TYPE_5__* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %32 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %21
  %38 = load %struct.usbtouch_usb*, %struct.usbtouch_usb** %3, align 8
  %39 = getelementptr inbounds %struct.usbtouch_usb, %struct.usbtouch_usb* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @usb_autopm_put_interface(%struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %37, %21
  ret void
}

declare dso_local %struct.usbtouch_usb* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_5__*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
