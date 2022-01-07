; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___hid_bus_reprobe_drivers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___hid_bus_reprobe_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hid_driver = type { i32 (%struct.hid_device*, i32)* }
%struct.hid_device = type opaque
%struct.hid_device.0 = type { i32, %struct.hid_driver* }

@hid_ignore_special_drivers = common dso_local global i32 0, align 4
@HID_STAT_REPROBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__hid_bus_reprobe_drivers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hid_bus_reprobe_drivers(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hid_driver*, align 8
  %7 = alloca %struct.hid_device.0*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.hid_driver*
  store %struct.hid_driver* %9, %struct.hid_driver** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.hid_device.0* @to_hid_device(%struct.device* %10)
  store %struct.hid_device.0* %11, %struct.hid_device.0** %7, align 8
  %12 = load %struct.hid_device.0*, %struct.hid_device.0** %7, align 8
  %13 = getelementptr inbounds %struct.hid_device.0, %struct.hid_device.0* %12, i32 0, i32 1
  %14 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %15 = load %struct.hid_driver*, %struct.hid_driver** %6, align 8
  %16 = icmp eq %struct.hid_driver* %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.hid_driver*, %struct.hid_driver** %6, align 8
  %19 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %18, i32 0, i32 0
  %20 = load i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*, i32)** %19, align 8
  %21 = load %struct.hid_device.0*, %struct.hid_device.0** %7, align 8
  %22 = bitcast %struct.hid_device.0* %21 to %struct.hid_device*
  %23 = load i32, i32* @hid_ignore_special_drivers, align 4
  %24 = call i32 %20(%struct.hid_device* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @HID_STAT_REPROBED, align 4
  %28 = call i32 @ffs(i32 %27)
  %29 = load %struct.hid_device.0*, %struct.hid_device.0** %7, align 8
  %30 = getelementptr inbounds %struct.hid_device.0, %struct.hid_device.0* %29, i32 0, i32 0
  %31 = call i32 @test_and_set_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @device_reprobe(%struct.device* %34)
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %26, %17, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.hid_device.0* @to_hid_device(%struct.device*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @device_reprobe(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
