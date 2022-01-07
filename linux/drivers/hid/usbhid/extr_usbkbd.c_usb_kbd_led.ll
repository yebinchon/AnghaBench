; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, %struct.usb_kbd* }
%struct.usb_kbd = type { i64*, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"led urb status %d received\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"usb_submit_urb(leds) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @usb_kbd_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_kbd_led(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.usb_kbd*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %5 = load %struct.urb*, %struct.urb** %2, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 2
  %7 = load %struct.usb_kbd*, %struct.usb_kbd** %6, align 8
  store %struct.usb_kbd* %7, %struct.usb_kbd** %4, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @hid_warn(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %22 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %21, i32 0, i32 3
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %26 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %30 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %20
  %34 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %35 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %37 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %36, i32 0, i32 3
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %72

40:                                               ; preds = %20
  %41 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %42 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %45 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  store i64 %43, i64* %46, align 8
  %47 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %48 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %51 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %55 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %54, i32 0, i32 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call i64 @usb_submit_urb(%struct.TYPE_2__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %40
  %61 = load %struct.urb*, %struct.urb** %2, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @hid_err(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %66 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %40
  %68 = load %struct.usb_kbd*, %struct.usb_kbd** %4, align 8
  %69 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %68, i32 0, i32 3
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %33
  ret void
}

declare dso_local i32 @hid_warn(i32, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @hid_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
