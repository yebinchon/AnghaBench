; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpadone_ack_mode_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpadone_ack_mode_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i32, i32, %struct.xpad_output_packet* }
%struct.xpad_output_packet = type { i32, i32*, i32 }

@XPAD_OUT_CMD_IDX = common dso_local global i64 0, align 8
@xpadone_ack_mode_report.mode_report_ack = internal constant [13 x i32] [i32 1, i32 32, i32 0, i32 9, i32 0, i32 7, i32 32, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*, i32)* @xpadone_ack_mode_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpadone_ack_mode_report(%struct.usb_xpad* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_xpad*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.xpad_output_packet*, align 8
  store %struct.usb_xpad* %0, %struct.usb_xpad** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %8 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %7, i32 0, i32 2
  %9 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %8, align 8
  %10 = load i64, i64* @XPAD_OUT_CMD_IDX, align 8
  %11 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %9, i64 %10
  store %struct.xpad_output_packet* %11, %struct.xpad_output_packet** %6, align 8
  %12 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %13 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %12, i32 0, i32 1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %6, align 8
  %17 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %16, i32 0, i32 0
  store i32 52, i32* %17, align 8
  %18 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %6, align 8
  %19 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %6, align 8
  %22 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @memcpy(i32* %20, i32* getelementptr inbounds ([13 x i32], [13 x i32]* @xpadone_ack_mode_report.mode_report_ack, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %6, align 8
  %27 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = load %struct.xpad_output_packet*, %struct.xpad_output_packet** %6, align 8
  %31 = getelementptr inbounds %struct.xpad_output_packet, %struct.xpad_output_packet* %30, i32 0, i32 2
  store i32 1, i32* %31, align 8
  %32 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %33 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %35 = call i32 @xpad_try_sending_next_out_packet(%struct.usb_xpad* %34)
  %36 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %37 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %36, i32 0, i32 1
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @xpad_try_sending_next_out_packet(%struct.usb_xpad*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
