; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_retry_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_retry_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhid_device = type { %struct.TYPE_2__*, %struct.hid_device* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_device = type { i32 }
%struct.timer_list = type { i32 }

@io_retry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"retrying intr urb\0A\00", align 1
@usbhid = common dso_local global %struct.usbhid_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @hid_retry_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_retry_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.usbhid_device*, align 8
  %4 = alloca %struct.hid_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %6 = ptrtoint %struct.usbhid_device* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @io_retry, align 4
  %9 = call %struct.usbhid_device* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.usbhid_device* %9, %struct.usbhid_device** %3, align 8
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %11 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %10, i32 0, i32 1
  %12 = load %struct.hid_device*, %struct.hid_device** %11, align 8
  store %struct.hid_device* %12, %struct.hid_device** %4, align 8
  %13 = load %struct.usbhid_device*, %struct.usbhid_device** %3, align 8
  %14 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = call i64 @hid_start_in(%struct.hid_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = call i32 @hid_io_error(%struct.hid_device* %22)
  br label %24

24:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.usbhid_device* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @hid_start_in(%struct.hid_device*) #1

declare dso_local i32 @hid_io_error(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
