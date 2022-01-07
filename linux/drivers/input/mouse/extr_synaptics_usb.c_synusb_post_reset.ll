; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_post_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_post_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.synusb = type { i32, i32, i32, i64 }

@SYNUSB_IO_ALWAYS = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @synusb_post_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @synusb_post_reset(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.synusb*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.synusb* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.synusb* %6, %struct.synusb** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.synusb*, %struct.synusb** %3, align 8
  %8 = getelementptr inbounds %struct.synusb, %struct.synusb* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.synusb*, %struct.synusb** %3, align 8
  %13 = getelementptr inbounds %struct.synusb, %struct.synusb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SYNUSB_IO_ALWAYS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11, %1
  %19 = load %struct.synusb*, %struct.synusb** %3, align 8
  %20 = getelementptr inbounds %struct.synusb, %struct.synusb* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @GFP_NOIO, align 4
  %23 = call i64 @usb_submit_urb(i32 %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %18, %11
  %29 = load %struct.synusb*, %struct.synusb** %3, align 8
  %30 = getelementptr inbounds %struct.synusb, %struct.synusb* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.synusb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
