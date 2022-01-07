; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_input_mapping_cptkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_input_mapping_cptkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32, i32, i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@HID_UP_LNVENDOR = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_MICMUTE = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@KEY_SWITCHVIDEOMODE = common dso_local global i32 0, align 4
@KEY_WLAN = common dso_local global i32 0, align 4
@KEY_CONFIG = common dso_local global i32 0, align 4
@KEY_SCALE = common dso_local global i32 0, align 4
@KEY_FILE = common dso_local global i32 0, align 4
@KEY_FN_ESC = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@HID_GD_WHEEL = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lenovo_input_mapping_cptkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_input_mapping_cptkbd(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
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
  %19 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %6
  %22 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %23 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HID_USAGE_PAGE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @HID_UP_LNVENDOR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %21, %6
  %30 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %31 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HID_USAGE, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %65 [
    i32 241, label %35
    i32 242, label %38
    i32 243, label %41
    i32 244, label %44
    i32 245, label %47
    i32 246, label %50
    i32 248, label %53
    i32 249, label %56
    i32 250, label %59
    i32 251, label %62
  ]

35:                                               ; preds = %29
  %36 = load i32, i32* @KEY_MICMUTE, align 4
  %37 = call i32 @map_key_clear(i32 %36)
  store i32 1, i32* %7, align 4
  br label %154

38:                                               ; preds = %29
  %39 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  %40 = call i32 @map_key_clear(i32 %39)
  store i32 1, i32* %7, align 4
  br label %154

41:                                               ; preds = %29
  %42 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  %43 = call i32 @map_key_clear(i32 %42)
  store i32 1, i32* %7, align 4
  br label %154

44:                                               ; preds = %29
  %45 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  %46 = call i32 @map_key_clear(i32 %45)
  store i32 1, i32* %7, align 4
  br label %154

47:                                               ; preds = %29
  %48 = load i32, i32* @KEY_WLAN, align 4
  %49 = call i32 @map_key_clear(i32 %48)
  store i32 1, i32* %7, align 4
  br label %154

50:                                               ; preds = %29
  %51 = load i32, i32* @KEY_CONFIG, align 4
  %52 = call i32 @map_key_clear(i32 %51)
  store i32 1, i32* %7, align 4
  br label %154

53:                                               ; preds = %29
  %54 = load i32, i32* @KEY_SCALE, align 4
  %55 = call i32 @map_key_clear(i32 %54)
  store i32 1, i32* %7, align 4
  br label %154

56:                                               ; preds = %29
  %57 = load i32, i32* @KEY_FILE, align 4
  %58 = call i32 @map_key_clear(i32 %57)
  store i32 1, i32* %7, align 4
  br label %154

59:                                               ; preds = %29
  %60 = load i32, i32* @KEY_FN_ESC, align 4
  %61 = call i32 @map_key_clear(i32 %60)
  store i32 1, i32* %7, align 4
  br label %154

62:                                               ; preds = %29
  %63 = load i32, i32* @BTN_MIDDLE, align 4
  %64 = call i32 @map_key_clear(i32 %63)
  store i32 1, i32* %7, align 4
  br label %154

65:                                               ; preds = %29
  br label %66

66:                                               ; preds = %65, %21
  %67 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %68 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HID_GD_WHEEL, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 -1, i32* %7, align 4
  br label %154

73:                                               ; preds = %66
  %74 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %75 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HID_USAGE_PAGE, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @HID_UP_BUTTON, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %83 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @HID_USAGE, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 -1, i32* %7, align 4
  br label %154

89:                                               ; preds = %81, %73
  %90 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %91 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @HID_USAGE_PAGE, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @HID_UP_CONSUMER, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %99 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @HID_USAGE, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 568
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i32 -1, i32* %7, align 4
  br label %154

105:                                              ; preds = %97, %89
  %106 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %107 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @HID_USAGE_PAGE, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, -15728640
  br i1 %111, label %119, label %112

112:                                              ; preds = %105
  %113 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %114 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @HID_USAGE_PAGE, align 4
  %117 = and i32 %115, %116
  %118 = icmp eq i32 %117, -6225920
  br i1 %118, label %119, label %153

119:                                              ; preds = %112, %105
  %120 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %121 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %124 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %128 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %127, i32 0, i32 1
  store i32 -127, i32* %128, align 4
  %129 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %130 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %129, i32 0, i32 2
  store i32 127, i32* %130, align 4
  %131 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %132 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @HID_USAGE, align 4
  %135 = and i32 %133, %134
  switch i32 %135, label %152 [
    i32 0, label %136
    i32 1, label %144
  ]

136:                                              ; preds = %119
  %137 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %138 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %139 = load i64**, i64*** %12, align 8
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* @EV_REL, align 4
  %142 = load i32, i32* @REL_HWHEEL, align 4
  %143 = call i32 @hid_map_usage(%struct.hid_input* %137, %struct.hid_usage* %138, i64** %139, i32* %140, i32 %141, i32 %142)
  store i32 1, i32* %7, align 4
  br label %154

144:                                              ; preds = %119
  %145 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %146 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %147 = load i64**, i64*** %12, align 8
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* @EV_REL, align 4
  %150 = load i32, i32* @REL_WHEEL, align 4
  %151 = call i32 @hid_map_usage(%struct.hid_input* %145, %struct.hid_usage* %146, i64** %147, i32* %148, i32 %149, i32 %150)
  store i32 1, i32* %7, align 4
  br label %154

152:                                              ; preds = %119
  store i32 -1, i32* %7, align 4
  br label %154

153:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %153, %152, %144, %136, %104, %88, %72, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i32 @map_key_clear(i32) #1

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
