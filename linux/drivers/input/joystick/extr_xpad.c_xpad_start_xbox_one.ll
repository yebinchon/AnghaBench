; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_start_xbox_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_start_xbox_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xpad*)* @xpad_start_xbox_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_start_xbox_one(%struct.usb_xpad* %0) #0 {
  %2 = alloca %struct.usb_xpad*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.usb_xpad* %0, %struct.usb_xpad** %2, align 8
  %5 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %10 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %12 = call i32 @xpad_try_sending_next_out_packet(%struct.usb_xpad* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %14 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %13, i32 0, i32 0
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_unlock_irqrestore(i32* %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xpad_try_sending_next_out_packet(%struct.usb_xpad*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
