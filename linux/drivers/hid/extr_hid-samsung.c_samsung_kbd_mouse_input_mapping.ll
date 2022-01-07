; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-samsung.c_samsung_kbd_mouse_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-samsung.c_samsung_kbd_mouse_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16 }

@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"samsung wireless keyboard/mouse input mapping event [0x%x]\0A\00", align 1
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_MEDIA = common dso_local global i32 0, align 4
@KEY_EMAIL = common dso_local global i32 0, align 4
@KEY_CALC = common dso_local global i32 0, align 4
@KEY_COMPUTER = common dso_local global i32 0, align 4
@KEY_SEARCH = common dso_local global i32 0, align 4
@KEY_WWW = common dso_local global i32 0, align 4
@KEY_BACK = common dso_local global i32 0, align 4
@KEY_FORWARD = common dso_local global i32 0, align 4
@KEY_FAVORITES = common dso_local global i32 0, align 4
@KEY_REFRESH = common dso_local global i32 0, align 4
@KEY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @samsung_kbd_mouse_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_kbd_mouse_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.usb_interface*, align 8
  %15 = alloca i16, align 2
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.usb_interface* @to_usb_interface(i32 %19)
  store %struct.usb_interface* %20, %struct.usb_interface** %14, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %14, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 2
  store i16 %26, i16* %15, align 2
  %27 = load i16, i16* %15, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp ne i32 1, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* @HID_UP_CONSUMER, align 4
  %32 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %33 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HID_USAGE_PAGE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %31, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %6
  store i32 0, i32* %7, align 4
  br label %86

39:                                               ; preds = %30
  %40 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %41 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HID_USAGE, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @dbg_hid(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HID_USAGE, align 4
  %50 = and i32 %48, %49
  switch i32 %50, label %84 [
    i32 387, label %51
    i32 405, label %54
    i32 406, label %57
    i32 407, label %60
    i32 555, label %63
    i32 556, label %66
    i32 557, label %69
    i32 558, label %72
    i32 559, label %75
    i32 560, label %78
    i32 561, label %81
  ]

51:                                               ; preds = %39
  %52 = load i32, i32* @KEY_MEDIA, align 4
  %53 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %52)
  br label %85

54:                                               ; preds = %39
  %55 = load i32, i32* @KEY_EMAIL, align 4
  %56 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %55)
  br label %85

57:                                               ; preds = %39
  %58 = load i32, i32* @KEY_CALC, align 4
  %59 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %58)
  br label %85

60:                                               ; preds = %39
  %61 = load i32, i32* @KEY_COMPUTER, align 4
  %62 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %61)
  br label %85

63:                                               ; preds = %39
  %64 = load i32, i32* @KEY_SEARCH, align 4
  %65 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %64)
  br label %85

66:                                               ; preds = %39
  %67 = load i32, i32* @KEY_WWW, align 4
  %68 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %67)
  br label %85

69:                                               ; preds = %39
  %70 = load i32, i32* @KEY_BACK, align 4
  %71 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %70)
  br label %85

72:                                               ; preds = %39
  %73 = load i32, i32* @KEY_FORWARD, align 4
  %74 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %73)
  br label %85

75:                                               ; preds = %39
  %76 = load i32, i32* @KEY_FAVORITES, align 4
  %77 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %76)
  br label %85

78:                                               ; preds = %39
  %79 = load i32, i32* @KEY_REFRESH, align 4
  %80 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %79)
  br label %85

81:                                               ; preds = %39
  %82 = load i32, i32* @KEY_STOP, align 4
  %83 = call i32 @samsung_kbd_mouse_map_key_clear(i32 %82)
  br label %85

84:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %86

85:                                               ; preds = %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51
  store i32 1, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %84, %38
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @samsung_kbd_mouse_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
