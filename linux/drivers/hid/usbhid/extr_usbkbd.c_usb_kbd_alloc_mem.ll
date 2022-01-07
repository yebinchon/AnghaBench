; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_alloc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_usbkbd.c_usb_kbd_alloc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_kbd = type { i32, i8*, i32, i32, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_kbd*)* @usb_kbd_alloc_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_kbd_alloc_mem(%struct.usb_device* %0, %struct.usb_kbd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_kbd*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_kbd* %1, %struct.usb_kbd** %5, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @usb_alloc_urb(i32 0, i32 %6)
  %8 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  %9 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %8, i32 0, i32 6
  store i8* %7, i8** %9, align 8
  %10 = icmp ne i8* %7, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @usb_alloc_urb(i32 0, i32 %13)
  %15 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  %16 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %15, i32 0, i32 5
  store i8* %14, i8** %16, align 8
  %17 = icmp ne i8* %14, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %47

19:                                               ; preds = %12
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  %23 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %22, i32 0, i32 3
  %24 = call i8* @usb_alloc_coherent(%struct.usb_device* %20, i32 8, i32 %21, i32* %23)
  %25 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  %26 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = icmp ne i8* %24, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %47

29:                                               ; preds = %19
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kmalloc(i32 4, i32 %30)
  %32 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  %33 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = icmp ne i32 %31, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %47

36:                                               ; preds = %29
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  %40 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %39, i32 0, i32 0
  %41 = call i8* @usb_alloc_coherent(%struct.usb_device* %37, i32 1, i32 %38, i32* %40)
  %42 = load %struct.usb_kbd*, %struct.usb_kbd** %5, align 8
  %43 = getelementptr inbounds %struct.usb_kbd, %struct.usb_kbd* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = icmp ne i8* %41, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %35, %28, %18, %11
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
