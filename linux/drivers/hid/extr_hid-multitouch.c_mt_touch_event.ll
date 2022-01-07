; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, {}* }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @mt_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_touch_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %10 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 1
  %18 = bitcast {}** %17 to i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)**
  %19 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 1
  %24 = bitcast {}** %23 to i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)**
  %25 = load i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)*, i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)** %24, align 8
  %26 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %27 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %28 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 %25(%struct.hid_device* %26, %struct.hid_field* %27, %struct.hid_usage* %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %15, %4
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
