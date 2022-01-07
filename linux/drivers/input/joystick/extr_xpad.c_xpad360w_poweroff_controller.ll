; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad360w_poweroff_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad360w_poweroff_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i32, i32, %struct.xpad_output_packet* }
%struct.xpad_output_packet = type { i32*, i32, i32 }

@XPAD_OUT_CMD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*)* @xpad360w_poweroff_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad360w_poweroff_controller(%struct.usb_xpad* %0) #0 {
  %2 = alloca %struct.usb_xpad*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.xpad_output_packet*, align 8
  store %struct.usb_xpad* %0, %struct.usb_xpad** %2, align 8
  %5 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %6 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %5, i32 0, i32 2
  %7 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %6, align 8
  %8 = load i64, i64* @XPAD_OUT_CMD_IDX, align 8
  %9 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %7, i64 %8
  store %struct.xpad_output_packet* %9, %struct.xpad_output_packet** %4, align 8
  %10 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %11 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %10, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %15 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %19 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %23 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 8, i32* %25, align 4
  %26 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %27 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 192, i32* %29, align 4
  %30 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %31 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 0, i32* %33, align 4
  %34 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %35 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 0, i32* %37, align 4
  %38 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %39 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32 0, i32* %41, align 4
  %42 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %43 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 0, i32* %45, align 4
  %46 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %47 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  store i32 0, i32* %49, align 4
  %50 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %51 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 9
  store i32 0, i32* %53, align 4
  %54 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %55 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  store i32 0, i32* %57, align 4
  %58 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %59 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 11
  store i32 0, i32* %61, align 4
  %62 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %63 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %62, i32 0, i32 1
  store i32 12, i32* %63, align 8
  %64 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %4, align 8
  %65 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  %66 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %67 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %66, i32 0, i32 0
  store i32 -1, i32* %67, align 8
  %68 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %69 = call i32 @xpad_try_sending_next_out_packet(%struct.usb_xpad* %68)
  %70 = load %struct.usb_xpad*, %struct.usb_xpad** %2, align 8
  %71 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %70, i32 0, i32 1
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  ret void
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
