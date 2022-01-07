; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_wait_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_wait_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32, i32 }

@HID_CTRL_RUNNING = common dso_local global i32 0, align 4
@HID_OUT_RUNNING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"timeout waiting for ctrl or out queue to clear\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @usbhid_wait_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_wait_io(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usbhid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %6 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %5, i32 0, i32 0
  %7 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  store %struct.usbhid_device* %7, %struct.usbhid_device** %4, align 8
  %8 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %9 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HID_CTRL_RUNNING, align 4
  %12 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %13 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @HID_OUT_RUNNING, align 4
  %18 = load %struct.usbhid_device*, %struct.usbhid_device** %4, align 8
  %19 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %18, i32 0, i32 0
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i1 [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 10, %26
  %28 = call i32 @wait_event_timeout(i32 %10, i32 %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = call i32 @dbg_hid(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %33

32:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dbg_hid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
