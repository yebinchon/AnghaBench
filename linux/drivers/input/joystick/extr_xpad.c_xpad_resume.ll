; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_xpad = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32, i64 }

@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@XTYPE_XBOXONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @xpad_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.usb_xpad*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %6 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %7 = call %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface* %6)
  store %struct.usb_xpad* %7, %struct.usb_xpad** %3, align 8
  %8 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %9 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %12 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @XTYPE_XBOX360W, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %18 = call i32 @xpad360w_start_input(%struct.usb_xpad* %17)
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %29 = call i32 @xpad_start_input(%struct.usb_xpad* %28)
  store i32 %29, i32* %5, align 4
  br label %40

30:                                               ; preds = %19
  %31 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %32 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XTYPE_XBOXONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %38 = call i32 @xpad_start_xbox_one(%struct.usb_xpad* %37)
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  br label %44

44:                                               ; preds = %40, %16
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.usb_xpad* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @xpad360w_start_input(%struct.usb_xpad*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xpad_start_input(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_start_xbox_one(%struct.usb_xpad*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
