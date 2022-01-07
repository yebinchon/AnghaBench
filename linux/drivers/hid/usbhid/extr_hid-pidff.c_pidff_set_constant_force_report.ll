; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_constant_force_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_set_constant_force_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pidff_device = type { i32*, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.ff_effect = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PID_EFFECT_BLOCK_INDEX = common dso_local global i64 0, align 8
@PID_MAGNITUDE = common dso_local global i64 0, align 8
@PID_SET_CONSTANT = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pidff_device*, %struct.ff_effect*)* @pidff_set_constant_force_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pidff_set_constant_force_report(%struct.pidff_device* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca %struct.pidff_device*, align 8
  %4 = alloca %struct.ff_effect*, align 8
  store %struct.pidff_device* %0, %struct.pidff_device** %3, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %4, align 8
  %5 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %6 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %5, i32 0, i32 3
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %15 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load i64, i64* @PID_EFFECT_BLOCK_INDEX, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %13, i32* %21, align 4
  %22 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %23 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i64, i64* @PID_MAGNITUDE, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  %27 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %28 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pidff_set_signed(%struct.TYPE_8__* %26, i32 %31)
  %33 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %34 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.pidff_device*, %struct.pidff_device** %3, align 8
  %37 = getelementptr inbounds %struct.pidff_device, %struct.pidff_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @PID_SET_CONSTANT, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %43 = call i32 @hid_hw_request(i32 %35, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @pidff_set_signed(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @hid_hw_request(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
