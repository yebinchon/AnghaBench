; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_appletouch.c_atp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.atp = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"input: appletouch disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @atp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atp_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.atp*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.atp* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.atp* %5, %struct.atp** %3, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call i32 @usb_set_intfdata(%struct.usb_interface* %6, i32* null)
  %8 = load %struct.atp*, %struct.atp** %3, align 8
  %9 = icmp ne %struct.atp* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %1
  %11 = load %struct.atp*, %struct.atp** %3, align 8
  %12 = getelementptr inbounds %struct.atp, %struct.atp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = call i32 @usb_kill_urb(%struct.TYPE_5__* %13)
  %15 = load %struct.atp*, %struct.atp** %3, align 8
  %16 = getelementptr inbounds %struct.atp, %struct.atp* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @input_unregister_device(i32 %17)
  %19 = load %struct.atp*, %struct.atp** %3, align 8
  %20 = getelementptr inbounds %struct.atp, %struct.atp* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.atp*, %struct.atp** %3, align 8
  %23 = getelementptr inbounds %struct.atp, %struct.atp* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.atp*, %struct.atp** %3, align 8
  %28 = getelementptr inbounds %struct.atp, %struct.atp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.atp*, %struct.atp** %3, align 8
  %31 = getelementptr inbounds %struct.atp, %struct.atp* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_free_coherent(i32 %21, i32 %26, i32 %29, i32 %34)
  %36 = load %struct.atp*, %struct.atp** %3, align 8
  %37 = getelementptr inbounds %struct.atp, %struct.atp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @usb_free_urb(%struct.TYPE_5__* %38)
  %40 = load %struct.atp*, %struct.atp** %3, align 8
  %41 = call i32 @kfree(%struct.atp* %40)
  br label %42

42:                                               ; preds = %10, %1
  %43 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %44 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %43, i32 0, i32 0
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.atp* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_5__*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.atp*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
