; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_xpad = type { i64, i32, i32, i32, i32 }

@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@XPAD_PKT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @xpad_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_xpad*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.usb_xpad* %5, %struct.usb_xpad** %3, align 8
  %6 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %7 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @XTYPE_XBOX360W, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %13 = call i32 @xpad360w_stop_input(%struct.usb_xpad* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %16 = call i32 @xpad_deinit_input(%struct.usb_xpad* %15)
  %17 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %18 = call i32 @xpad_stop_output(%struct.usb_xpad* %17)
  %19 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %20 = call i32 @xpad_deinit_output(%struct.usb_xpad* %19)
  %21 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %22 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_free_urb(i32 %23)
  %25 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %26 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XPAD_PKT_LEN, align 4
  %29 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %30 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %33 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @usb_free_coherent(i32 %27, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %37 = call i32 @kfree(%struct.usb_xpad* %36)
  %38 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %39 = call i32 @usb_set_intfdata(%struct.usb_interface* %38, i32* null)
  ret void
}

declare dso_local %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @xpad360w_stop_input(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_deinit_input(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_stop_output(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_deinit_output(%struct.usb_xpad*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_xpad*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
