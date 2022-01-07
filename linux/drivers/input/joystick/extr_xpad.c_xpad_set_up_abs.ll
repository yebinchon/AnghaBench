; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_set_up_abs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_set_up_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.usb_xpad = type { i32 }

@XTYPE_XBOXONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, i16)* @xpad_set_up_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad_set_up_abs(%struct.input_dev* %0, i16 signext %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.usb_xpad*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.usb_xpad* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.usb_xpad* %7, %struct.usb_xpad** %5, align 8
  %8 = load i16, i16* %4, align 2
  %9 = sext i16 %8 to i32
  switch i32 %9, label %33 [
    i32 130, label %10
    i32 129, label %10
    i32 133, label %10
    i32 132, label %10
    i32 128, label %14
    i32 131, label %14
    i32 135, label %29
    i32 134, label %29
  ]

10:                                               ; preds = %2, %2, %2, %2
  %11 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %12 = load i16, i16* %4, align 2
  %13 = call i32 @input_set_abs_params(%struct.input_dev* %11, i16 signext %12, i32 -32768, i32 32767, i32 16, i32 128)
  br label %37

14:                                               ; preds = %2, %2
  %15 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %16 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XTYPE_XBOXONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i16, i16* %4, align 2
  %23 = call i32 @input_set_abs_params(%struct.input_dev* %21, i16 signext %22, i32 0, i32 1023, i32 0, i32 0)
  br label %28

24:                                               ; preds = %14
  %25 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %26 = load i16, i16* %4, align 2
  %27 = call i32 @input_set_abs_params(%struct.input_dev* %25, i16 signext %26, i32 0, i32 255, i32 0, i32 0)
  br label %28

28:                                               ; preds = %24, %20
  br label %37

29:                                               ; preds = %2, %2
  %30 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %31 = load i16, i16* %4, align 2
  %32 = call i32 @input_set_abs_params(%struct.input_dev* %30, i16 signext %31, i32 -1, i32 1, i32 0, i32 0)
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %35 = load i16, i16* %4, align 2
  %36 = call i32 @input_set_abs_params(%struct.input_dev* %34, i16 signext %35, i32 0, i32 0, i32 0, i32 0)
  br label %37

37:                                               ; preds = %33, %29, %28, %10
  ret void
}

declare dso_local %struct.usb_xpad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i16 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
