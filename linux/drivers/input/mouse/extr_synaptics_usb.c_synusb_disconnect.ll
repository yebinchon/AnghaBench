; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_synaptics_usb.c_synusb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.synusb = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@SYNUSB_IO_ALWAYS = common dso_local global i32 0, align 4
@SYNUSB_RECV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @synusb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synusb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.synusb*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %6 = call %struct.synusb* @usb_get_intfdata(%struct.usb_interface* %5)
  store %struct.synusb* %6, %struct.synusb** %3, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %8 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %7)
  store %struct.usb_device* %8, %struct.usb_device** %4, align 8
  %9 = load %struct.synusb*, %struct.synusb** %3, align 8
  %10 = getelementptr inbounds %struct.synusb, %struct.synusb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SYNUSB_IO_ALWAYS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.synusb*, %struct.synusb** %3, align 8
  %17 = getelementptr inbounds %struct.synusb, %struct.synusb* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @synusb_close(i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.synusb*, %struct.synusb** %3, align 8
  %22 = getelementptr inbounds %struct.synusb, %struct.synusb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @input_unregister_device(i32 %23)
  %25 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %26 = load i32, i32* @SYNUSB_RECV_SIZE, align 4
  %27 = load %struct.synusb*, %struct.synusb** %3, align 8
  %28 = getelementptr inbounds %struct.synusb, %struct.synusb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.synusb*, %struct.synusb** %3, align 8
  %31 = getelementptr inbounds %struct.synusb, %struct.synusb* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_free_coherent(%struct.usb_device* %25, i32 %26, i32 %29, i32 %34)
  %36 = load %struct.synusb*, %struct.synusb** %3, align 8
  %37 = getelementptr inbounds %struct.synusb, %struct.synusb* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @usb_free_urb(%struct.TYPE_2__* %38)
  %40 = load %struct.synusb*, %struct.synusb** %3, align 8
  %41 = call i32 @kfree(%struct.synusb* %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %43 = call i32 @usb_set_intfdata(%struct.usb_interface* %42, i32* null)
  ret void
}

declare dso_local %struct.synusb* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @synusb_close(i32) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.synusb*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
