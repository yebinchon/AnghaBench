; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_hammer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-google-hammer.c_hammer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i32 }
%struct.hid_device_id = type { i32 }

@USB_DEVICE_ID_GOOGLE_WHISKERS = common dso_local global i64 0, align 8
@HID_QUIRK_ALWAYS_POLL = common dso_local global i32 0, align 4
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to register keyboard backlight: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @hammer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hammer_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_DEVICE_ID_GOOGLE_WHISKERS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = call i64 @hammer_is_keyboard_interface(%struct.hid_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* @HID_QUIRK_ALWAYS_POLL, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %16, %12, %2
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = call i32 @hid_parse(%struct.hid_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %22
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %32 = call i32 @hid_hw_start(%struct.hid_device* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %29
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = call i64 @hammer_has_backlight_control(%struct.hid_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %43 = call i32 @hammer_register_leds(%struct.hid_device* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @hid_warn(%struct.hid_device* %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %35, %27
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @hammer_is_keyboard_interface(%struct.hid_device*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i64 @hammer_has_backlight_control(%struct.hid_device*) #1

declare dso_local i32 @hammer_register_leds(%struct.hid_device*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
