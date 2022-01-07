; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-twinhan.c_twinhan_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-twinhan.c_twinhan_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_KEYBOARD = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_TEXT = common dso_local global i32 0, align 4
@KEY_RESTART = common dso_local global i32 0, align 4
@KEY_EPG = common dso_local global i32 0, align 4
@KEY_REWIND = common dso_local global i32 0, align 4
@KEY_PROGRAM = common dso_local global i32 0, align 4
@KEY_LIST = common dso_local global i32 0, align 4
@KEY_MUTE = common dso_local global i32 0, align 4
@KEY_FORWARD = common dso_local global i32 0, align 4
@KEY_PRINT = common dso_local global i32 0, align 4
@KEY_PAUSE = common dso_local global i32 0, align 4
@KEY_FAVORITES = common dso_local global i32 0, align 4
@KEY_SCREEN = common dso_local global i32 0, align 4
@KEY_NUMERIC_1 = common dso_local global i32 0, align 4
@KEY_NUMERIC_2 = common dso_local global i32 0, align 4
@KEY_NUMERIC_3 = common dso_local global i32 0, align 4
@KEY_NUMERIC_4 = common dso_local global i32 0, align 4
@KEY_NUMERIC_5 = common dso_local global i32 0, align 4
@KEY_NUMERIC_6 = common dso_local global i32 0, align 4
@KEY_NUMERIC_7 = common dso_local global i32 0, align 4
@KEY_NUMERIC_8 = common dso_local global i32 0, align 4
@KEY_NUMERIC_9 = common dso_local global i32 0, align 4
@KEY_NUMERIC_0 = common dso_local global i32 0, align 4
@KEY_PLAY = common dso_local global i32 0, align 4
@KEY_CANCEL = common dso_local global i32 0, align 4
@KEY_TAB = common dso_local global i32 0, align 4
@KEY_POWER2 = common dso_local global i32 0, align 4
@KEY_RECORD = common dso_local global i32 0, align 4
@KEY_CHANNELUP = common dso_local global i32 0, align 4
@KEY_STOP = common dso_local global i32 0, align 4
@KEY_CHANNELDOWN = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @twinhan_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twinhan_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_USAGE_PAGE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @HID_UP_KEYBOARD, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %127

22:                                               ; preds = %6
  %23 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HID_USAGE, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %125 [
    i32 4, label %28
    i32 6, label %31
    i32 8, label %34
    i32 12, label %37
    i32 14, label %40
    i32 15, label %43
    i32 16, label %46
    i32 17, label %49
    i32 19, label %52
    i32 23, label %55
    i32 25, label %58
    i32 29, label %61
    i32 30, label %64
    i32 31, label %67
    i32 32, label %70
    i32 33, label %73
    i32 34, label %76
    i32 35, label %79
    i32 36, label %82
    i32 37, label %85
    i32 38, label %88
    i32 39, label %91
    i32 40, label %94
    i32 41, label %97
    i32 43, label %100
    i32 63, label %103
    i32 74, label %106
    i32 75, label %109
    i32 77, label %112
    i32 78, label %115
    i32 81, label %118
    i32 82, label %121
    i32 224, label %124
    i32 225, label %124
    i32 226, label %124
    i32 227, label %124
    i32 228, label %124
    i32 229, label %124
    i32 230, label %124
    i32 231, label %124
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @KEY_TEXT, align 4
  %30 = call i32 @th_map_key_clear(i32 %29)
  br label %126

31:                                               ; preds = %22
  %32 = load i32, i32* @KEY_RESTART, align 4
  %33 = call i32 @th_map_key_clear(i32 %32)
  br label %126

34:                                               ; preds = %22
  %35 = load i32, i32* @KEY_EPG, align 4
  %36 = call i32 @th_map_key_clear(i32 %35)
  br label %126

37:                                               ; preds = %22
  %38 = load i32, i32* @KEY_REWIND, align 4
  %39 = call i32 @th_map_key_clear(i32 %38)
  br label %126

40:                                               ; preds = %22
  %41 = load i32, i32* @KEY_PROGRAM, align 4
  %42 = call i32 @th_map_key_clear(i32 %41)
  br label %126

43:                                               ; preds = %22
  %44 = load i32, i32* @KEY_LIST, align 4
  %45 = call i32 @th_map_key_clear(i32 %44)
  br label %126

46:                                               ; preds = %22
  %47 = load i32, i32* @KEY_MUTE, align 4
  %48 = call i32 @th_map_key_clear(i32 %47)
  br label %126

49:                                               ; preds = %22
  %50 = load i32, i32* @KEY_FORWARD, align 4
  %51 = call i32 @th_map_key_clear(i32 %50)
  br label %126

52:                                               ; preds = %22
  %53 = load i32, i32* @KEY_PRINT, align 4
  %54 = call i32 @th_map_key_clear(i32 %53)
  br label %126

55:                                               ; preds = %22
  %56 = load i32, i32* @KEY_PAUSE, align 4
  %57 = call i32 @th_map_key_clear(i32 %56)
  br label %126

58:                                               ; preds = %22
  %59 = load i32, i32* @KEY_FAVORITES, align 4
  %60 = call i32 @th_map_key_clear(i32 %59)
  br label %126

61:                                               ; preds = %22
  %62 = load i32, i32* @KEY_SCREEN, align 4
  %63 = call i32 @th_map_key_clear(i32 %62)
  br label %126

64:                                               ; preds = %22
  %65 = load i32, i32* @KEY_NUMERIC_1, align 4
  %66 = call i32 @th_map_key_clear(i32 %65)
  br label %126

67:                                               ; preds = %22
  %68 = load i32, i32* @KEY_NUMERIC_2, align 4
  %69 = call i32 @th_map_key_clear(i32 %68)
  br label %126

70:                                               ; preds = %22
  %71 = load i32, i32* @KEY_NUMERIC_3, align 4
  %72 = call i32 @th_map_key_clear(i32 %71)
  br label %126

73:                                               ; preds = %22
  %74 = load i32, i32* @KEY_NUMERIC_4, align 4
  %75 = call i32 @th_map_key_clear(i32 %74)
  br label %126

76:                                               ; preds = %22
  %77 = load i32, i32* @KEY_NUMERIC_5, align 4
  %78 = call i32 @th_map_key_clear(i32 %77)
  br label %126

79:                                               ; preds = %22
  %80 = load i32, i32* @KEY_NUMERIC_6, align 4
  %81 = call i32 @th_map_key_clear(i32 %80)
  br label %126

82:                                               ; preds = %22
  %83 = load i32, i32* @KEY_NUMERIC_7, align 4
  %84 = call i32 @th_map_key_clear(i32 %83)
  br label %126

85:                                               ; preds = %22
  %86 = load i32, i32* @KEY_NUMERIC_8, align 4
  %87 = call i32 @th_map_key_clear(i32 %86)
  br label %126

88:                                               ; preds = %22
  %89 = load i32, i32* @KEY_NUMERIC_9, align 4
  %90 = call i32 @th_map_key_clear(i32 %89)
  br label %126

91:                                               ; preds = %22
  %92 = load i32, i32* @KEY_NUMERIC_0, align 4
  %93 = call i32 @th_map_key_clear(i32 %92)
  br label %126

94:                                               ; preds = %22
  %95 = load i32, i32* @KEY_PLAY, align 4
  %96 = call i32 @th_map_key_clear(i32 %95)
  br label %126

97:                                               ; preds = %22
  %98 = load i32, i32* @KEY_CANCEL, align 4
  %99 = call i32 @th_map_key_clear(i32 %98)
  br label %126

100:                                              ; preds = %22
  %101 = load i32, i32* @KEY_TAB, align 4
  %102 = call i32 @th_map_key_clear(i32 %101)
  br label %126

103:                                              ; preds = %22
  %104 = load i32, i32* @KEY_POWER2, align 4
  %105 = call i32 @th_map_key_clear(i32 %104)
  br label %126

106:                                              ; preds = %22
  %107 = load i32, i32* @KEY_RECORD, align 4
  %108 = call i32 @th_map_key_clear(i32 %107)
  br label %126

109:                                              ; preds = %22
  %110 = load i32, i32* @KEY_CHANNELUP, align 4
  %111 = call i32 @th_map_key_clear(i32 %110)
  br label %126

112:                                              ; preds = %22
  %113 = load i32, i32* @KEY_STOP, align 4
  %114 = call i32 @th_map_key_clear(i32 %113)
  br label %126

115:                                              ; preds = %22
  %116 = load i32, i32* @KEY_CHANNELDOWN, align 4
  %117 = call i32 @th_map_key_clear(i32 %116)
  br label %126

118:                                              ; preds = %22
  %119 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  %120 = call i32 @th_map_key_clear(i32 %119)
  br label %126

121:                                              ; preds = %22
  %122 = load i32, i32* @KEY_VOLUMEUP, align 4
  %123 = call i32 @th_map_key_clear(i32 %122)
  br label %126

124:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22
  br label %125

125:                                              ; preds = %22, %124
  store i32 -1, i32* %7, align 4
  br label %127

126:                                              ; preds = %121, %118, %115, %112, %109, %106, %103, %100, %97, %94, %91, %88, %85, %82, %79, %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %125, %21
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @th_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
