; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_getkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_getkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32, i32, i32, i32 }
%struct.hid_device = type { i32 }
%struct.hid_usage = type { i64, i32, i32 }

@EV_KEY = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*)* @hidinput_getkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidinput_getkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %11 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.hid_device* %11, %struct.hid_device** %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %14 = call %struct.hid_usage* @hidinput_locate_usage(%struct.hid_device* %12, %struct.input_keymap_entry* %13, i32* %9)
  store %struct.hid_usage* %14, %struct.hid_usage** %7, align 8
  %15 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %16 = icmp ne %struct.hid_usage* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %19 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EV_KEY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %25 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @KEY_RESERVED, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  %31 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %32 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %35 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %37 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HID_USAGE_PAGE, align 4
  %40 = load i32, i32* @HID_USAGE, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %44 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %43, i32 0, i32 1
  store i32 4, i32* %44, align 4
  %45 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %46 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %47, i32* %8, i32 4)
  store i32 0, i32* %3, align 4
  br label %52

49:                                               ; preds = %2
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %29
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.hid_usage* @hidinput_locate_usage(%struct.hid_device*, %struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
