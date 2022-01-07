; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_locate_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_locate_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_usage = type { i32 }
%struct.hid_device = type { i32 }
%struct.input_keymap_entry = type { i32, i32 }

@INPUT_KEYMAP_BY_INDEX = common dso_local global i32 0, align 4
@match_index = common dso_local global i32 0, align 4
@match_scancode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_usage* (%struct.hid_device*, %struct.input_keymap_entry*, i32*)* @hidinput_locate_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_usage* @hidinput_locate_usage(%struct.hid_device* %0, %struct.input_keymap_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.input_keymap_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %10 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INPUT_KEYMAP_BY_INDEX, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = load i32, i32* @match_index, align 4
  %18 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %19 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.hid_usage* @hidinput_find_key(%struct.hid_device* %16, i32 %17, i32 %20, i32* %21)
  store %struct.hid_usage* %22, %struct.hid_usage** %7, align 8
  br label %35

23:                                               ; preds = %3
  %24 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %5, align 8
  %25 = call i64 @input_scancode_to_scalar(%struct.input_keymap_entry* %24, i32* %8)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = load i32, i32* @match_scancode, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.hid_usage* @hidinput_find_key(%struct.hid_device* %28, i32 %29, i32 %30, i32* %31)
  store %struct.hid_usage* %32, %struct.hid_usage** %7, align 8
  br label %34

33:                                               ; preds = %23
  store %struct.hid_usage* null, %struct.hid_usage** %7, align 8
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  ret %struct.hid_usage* %36
}

declare dso_local %struct.hid_usage* @hidinput_find_key(%struct.hid_device*, i32, i32, i32*) #1

declare dso_local i64 @input_scancode_to_scalar(%struct.input_keymap_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
