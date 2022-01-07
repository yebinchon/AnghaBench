; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_keyspan_remote.c_keyspan_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_keyspan_remote.c_keyspan_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_keyspan = type { i32, i32, i32, i32, i32 }

@RECV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @keyspan_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyspan_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_keyspan*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_keyspan* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_keyspan* %5, %struct.usb_keyspan** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %9 = icmp ne %struct.usb_keyspan* %8, null
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %12 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @input_unregister_device(i32 %13)
  %15 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %16 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_kill_urb(i32 %17)
  %19 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %20 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_free_urb(i32 %21)
  %23 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %24 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RECV_SIZE, align 4
  %27 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %28 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %31 = getelementptr inbounds %struct.usb_keyspan, %struct.usb_keyspan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_free_coherent(i32 %25, i32 %26, i32 %29, i32 %32)
  %34 = load %struct.usb_keyspan*, %struct.usb_keyspan** %3, align 8
  %35 = call i32 @kfree(%struct.usb_keyspan* %34)
  br label %36

36:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.usb_keyspan* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_keyspan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
