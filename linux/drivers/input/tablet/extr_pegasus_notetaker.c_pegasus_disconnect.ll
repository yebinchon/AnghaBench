; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.pegasus = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @pegasus_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pegasus_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.pegasus*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.pegasus* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.pegasus* %5, %struct.pegasus** %3, align 8
  %6 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %7 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @input_unregister_device(i32 %8)
  %10 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %11 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_free_urb(i32 %12)
  %14 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %15 = call i32 @interface_to_usbdev(%struct.usb_interface* %14)
  %16 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %17 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %20 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %23 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @usb_free_coherent(i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.pegasus*, %struct.pegasus** %3, align 8
  %27 = call i32 @kfree(%struct.pegasus* %26)
  %28 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %29 = call i32 @usb_set_intfdata(%struct.usb_interface* %28, i32* null)
  ret void
}

declare dso_local %struct.pegasus* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @kfree(%struct.pegasus*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
