; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i64, i32*, i32 }

@HID_STAT_ADDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @hid_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_remove_device(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %3 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %4 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @HID_STAT_ADDED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 3
  %12 = call i32 @device_del(i32* %11)
  %13 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %14 = call i32 @hid_debug_unregister(%struct.hid_device* %13)
  %15 = load i32, i32* @HID_STAT_ADDED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %9, %1
  %22 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %27 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %29 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  ret void
}

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @hid_debug_unregister(%struct.hid_device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
