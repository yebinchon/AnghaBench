; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_handle_received_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_hyperv-keyboard.c_hv_kbd_handle_received_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32 }
%struct.vmpacket_descriptor = type { i32, i32 }
%struct.synth_kbd_msg = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Illegal packet (type: %d, tid: %llx, size: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unhandled packet type %d, tid %llx len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_device*, %struct.vmpacket_descriptor*, i32, i32)* @hv_kbd_handle_received_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hv_kbd_handle_received_packet(%struct.hv_device* %0, %struct.vmpacket_descriptor* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hv_device*, align 8
  %6 = alloca %struct.vmpacket_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.synth_kbd_msg*, align 8
  %10 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %5, align 8
  store %struct.vmpacket_descriptor* %1, %struct.vmpacket_descriptor** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %6, align 8
  %12 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %48 [
    i32 129, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %4
  br label %57

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %6, align 8
  %18 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 3
  %21 = sub nsw i32 %16, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ule i64 %23, 4
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %27 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %26, i32 0, i32 0
  %28 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %6, align 8
  %29 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  br label %57

34:                                               ; preds = %15
  %35 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %6, align 8
  %36 = bitcast %struct.vmpacket_descriptor* %35 to i8*
  %37 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %6, align 8
  %38 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %36, i64 %41
  %43 = bitcast i8* %42 to %struct.synth_kbd_msg*
  store %struct.synth_kbd_msg* %43, %struct.synth_kbd_msg** %9, align 8
  %44 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %45 = load %struct.synth_kbd_msg*, %struct.synth_kbd_msg** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @hv_kbd_on_receive(%struct.hv_device* %44, %struct.synth_kbd_msg* %45, i32 %46)
  br label %57

48:                                               ; preds = %4
  %49 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %50 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %49, i32 0, i32 0
  %51 = load %struct.vmpacket_descriptor*, %struct.vmpacket_descriptor** %6, align 8
  %52 = getelementptr inbounds %struct.vmpacket_descriptor, %struct.vmpacket_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %34, %25, %14
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @hv_kbd_on_receive(%struct.hv_device*, %struct.synth_kbd_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
