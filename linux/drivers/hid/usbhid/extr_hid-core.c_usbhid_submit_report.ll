; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_submit_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_usbhid_submit_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i32 }
%struct.hid_report = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*, i8)* @usbhid_submit_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhid_submit_report(%struct.hid_device* %0, %struct.hid_report* %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.usbhid_device*, align 8
  %8 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %9, i32 0, i32 0
  %11 = load %struct.usbhid_device*, %struct.usbhid_device** %10, align 8
  store %struct.usbhid_device* %11, %struct.usbhid_device** %7, align 8
  %12 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %13 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %18 = load i8, i8* %6, align 1
  %19 = call i32 @__usbhid_submit_report(%struct.hid_device* %16, %struct.hid_report* %17, i8 zeroext %18)
  %20 = load %struct.usbhid_device*, %struct.usbhid_device** %7, align 8
  %21 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %20, i32 0, i32 0
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__usbhid_submit_report(%struct.hid_device*, %struct.hid_report*, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
