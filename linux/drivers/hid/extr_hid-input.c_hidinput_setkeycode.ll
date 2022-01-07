; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_setkeycode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_setkeycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.input_keymap_entry = type { i32 }
%struct.hid_device = type { i32 }
%struct.hid_usage = type { i64, i32, i32 }

@EV_KEY = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Assigned keycode %d to HID usage code %x\0A\00", align 1
@match_keycode = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)* @hidinput_setkeycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidinput_setkeycode(%struct.input_dev* %0, %struct.input_keymap_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.input_keymap_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_usage*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.input_keymap_entry* %1, %struct.input_keymap_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = call %struct.hid_device* @input_get_drvdata(%struct.input_dev* %10)
  store %struct.hid_device* %11, %struct.hid_device** %8, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %13 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %14 = call %struct.hid_usage* @hidinput_locate_usage(%struct.hid_device* %12, %struct.input_keymap_entry* %13, i32* null)
  store %struct.hid_usage* %14, %struct.hid_usage** %9, align 8
  %15 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %16 = icmp ne %struct.hid_usage* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %3
  %18 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %19 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EV_KEY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %25 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @KEY_RESERVED, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.input_keymap_entry*, %struct.input_keymap_entry** %6, align 8
  %33 = getelementptr inbounds %struct.input_keymap_entry, %struct.input_keymap_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %36 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clear_bit(i32 %38, i32 %41)
  %43 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %44 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @set_bit(i32 %45, i32 %48)
  %50 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %51 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hid_usage*, %struct.hid_usage** %9, align 8
  %54 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dbg_hid(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %58 = load i32, i32* @match_keycode, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @hidinput_find_key(%struct.hid_device* %57, i32 %58, i32 %60, i32* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %29
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @set_bit(i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %29
  store i32 0, i32* %4, align 4
  br label %74

71:                                               ; preds = %3
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %70
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.hid_device* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.hid_usage* @hidinput_locate_usage(%struct.hid_device*, %struct.input_keymap_entry*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dbg_hid(i8*, i32, i32) #1

declare dso_local i64 @hidinput_find_key(%struct.hid_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
