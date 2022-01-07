; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_xpad = type { i64, i64, %struct.input_dev* }
%struct.input_dev = type { i32, i64 }

@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@auto_poweroff = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @xpad_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_xpad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %8 = call %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.usb_xpad* %8, %struct.usb_xpad** %5, align 8
  %9 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %10 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %9, i32 0, i32 2
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %6, align 8
  %12 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %13 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XTYPE_XBOX360W, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %19 = call i32 @xpad360w_stop_input(%struct.usb_xpad* %18)
  %20 = load i64, i64* @auto_poweroff, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %24 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %29 = call i32 @xpad360w_poweroff_controller(%struct.usb_xpad* %28)
  br label %30

30:                                               ; preds = %27, %22, %17
  br label %46

31:                                               ; preds = %2
  %32 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %41 = call i32 @xpad_stop_input(%struct.usb_xpad* %40)
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %30
  %47 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %48 = call i32 @xpad_stop_output(%struct.usb_xpad* %47)
  ret i32 0
}

declare dso_local %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @xpad360w_stop_input(%struct.usb_xpad*) #1

declare dso_local i32 @xpad360w_poweroff_controller(%struct.usb_xpad*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xpad_stop_input(%struct.usb_xpad*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @xpad_stop_output(%struct.usb_xpad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
