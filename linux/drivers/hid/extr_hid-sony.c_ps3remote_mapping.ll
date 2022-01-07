; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_ps3remote_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_ps3remote_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32, i32 }

@HID_USAGE = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@ps3remote_keymap_joypad_buttons = common dso_local global i32* null, align 8
@ps3remote_keymap_remote_buttons = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ps3remote_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3remote_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %16 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HID_USAGE, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %14, align 4
  %20 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %21 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HID_USAGE_PAGE, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @HID_UP_BUTTON, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %73

28:                                               ; preds = %6
  %29 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %30 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %64 [
    i32 1, label %32
    i32 2, label %48
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* %14, align 4
  %34 = load i32*, i32** @ps3remote_keymap_joypad_buttons, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp uge i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -1, i32* %7, align 4
  br label %73

38:                                               ; preds = %32
  %39 = load i32*, i32** @ps3remote_keymap_joypad_buttons, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %73

47:                                               ; preds = %38
  br label %65

48:                                               ; preds = %28
  %49 = load i32, i32* %14, align 4
  %50 = load i32*, i32** @ps3remote_keymap_remote_buttons, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp uge i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %73

54:                                               ; preds = %48
  %55 = load i32*, i32** @ps3remote_keymap_remote_buttons, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 -1, i32* %7, align 4
  br label %73

63:                                               ; preds = %54
  br label %65

64:                                               ; preds = %28
  store i32 -1, i32* %7, align 4
  br label %73

65:                                               ; preds = %63, %47
  %66 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %67 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %68 = load i64**, i64*** %12, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* @EV_KEY, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @hid_map_usage_clear(%struct.hid_input* %66, %struct.hid_usage* %67, i64** %68, i32* %69, i32 %70, i32 %71)
  store i32 1, i32* %7, align 4
  br label %73

73:                                               ; preds = %65, %64, %62, %53, %46, %37, %27
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
