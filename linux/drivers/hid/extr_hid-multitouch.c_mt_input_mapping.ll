; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hid_field = type { i64, i32, i64, i32 }
%struct.hid_usage = type { i32 }
%struct.mt_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mt_application = type { i32 }
%struct.mt_report_data = type { i64, %struct.mt_application* }

@.str = private unnamed_addr constant [36 x i8] c"failed to allocate data for report\0A\00", align 1
@HID_DG_TOUCHSCREEN = common dso_local global i64 0, align 8
@HID_DG_PEN = common dso_local global i64 0, align 8
@HID_DG_TOUCHPAD = common dso_local global i64 0, align 8
@HID_GD_KEYBOARD = common dso_local global i64 0, align 8
@HID_GD_SYSTEM_CONTROL = common dso_local global i64 0, align 8
@HID_CP_CONSUMER_CONTROL = common dso_local global i64 0, align 8
@HID_GD_WIRELESS_RADIO_CTLS = common dso_local global i64 0, align 8
@HID_GD_SYSTEM_MULTIAXIS = common dso_local global i64 0, align 8
@HID_VD_ASUS_CUSTOM_MEDIA_KEYS = common dso_local global i64 0, align 8
@MT_QUIRK_ASUS_CUSTOM_UP = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_CUSTOM = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@KEY_DISPLAY_OFF = common dso_local global i32 0, align 4
@KEY_F21 = common dso_local global i32 0, align 4
@KEY_SLEEP = common dso_local global i32 0, align 4
@HID_DG_STYLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @mt_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mt_device*, align 8
  %15 = alloca %struct.mt_application*, align 8
  %16 = alloca %struct.mt_report_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %18 = call %struct.mt_device* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.mt_device* %18, %struct.mt_device** %14, align 8
  %19 = load %struct.mt_device*, %struct.mt_device** %14, align 8
  %20 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %21 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.mt_report_data* @mt_find_report_data(%struct.mt_device* %19, i32 %22)
  store %struct.mt_report_data* %23, %struct.mt_report_data** %16, align 8
  %24 = load %struct.mt_report_data*, %struct.mt_report_data** %16, align 8
  %25 = icmp ne %struct.mt_report_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %28 = call i32 @hid_err(%struct.hid_device* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %190

29:                                               ; preds = %6
  %30 = load %struct.mt_report_data*, %struct.mt_report_data** %16, align 8
  %31 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %30, i32 0, i32 1
  %32 = load %struct.mt_application*, %struct.mt_application** %31, align 8
  store %struct.mt_application* %32, %struct.mt_application** %15, align 8
  %33 = load %struct.mt_device*, %struct.mt_device** %14, align 8
  %34 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %100, label %38

38:                                               ; preds = %29
  %39 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %40 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HID_DG_TOUCHSCREEN, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %100

44:                                               ; preds = %38
  %45 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %46 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HID_DG_PEN, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %44
  %51 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %52 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HID_DG_TOUCHPAD, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %50
  %57 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %58 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HID_GD_KEYBOARD, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %56
  %63 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %64 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HID_GD_SYSTEM_CONTROL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %70 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HID_CP_CONSUMER_CONTROL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %76 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @HID_GD_WIRELESS_RADIO_CTLS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %82 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @HID_GD_SYSTEM_MULTIAXIS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %88 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @HID_VD_ASUS_CUSTOM_MEDIA_KEYS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %86
  %93 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %94 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MT_QUIRK_ASUS_CUSTOM_UP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92, %86
  store i32 -1, i32* %7, align 4
  br label %190

100:                                              ; preds = %92, %80, %74, %68, %62, %56, %50, %44, %38, %29
  %101 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %102 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @HID_VD_ASUS_CUSTOM_MEDIA_KEYS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %165

106:                                              ; preds = %100
  %107 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %108 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MT_QUIRK_ASUS_CUSTOM_UP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %165

113:                                              ; preds = %106
  %114 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %115 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @HID_USAGE_PAGE, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @HID_UP_CUSTOM, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %165

121:                                              ; preds = %113
  %122 = load i32, i32* @EV_REP, align 4
  %123 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %124 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @set_bit(i32 %122, i32 %127)
  %129 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %130 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %121
  %136 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %139 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %135, %121
  %143 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %144 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @HID_USAGE, align 4
  %147 = and i32 %145, %146
  switch i32 %147, label %163 [
    i32 16, label %148
    i32 32, label %151
    i32 53, label %154
    i32 107, label %157
    i32 108, label %160
  ]

148:                                              ; preds = %142
  %149 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  %150 = call i32 @mt_map_key_clear(i32 %149)
  br label %164

151:                                              ; preds = %142
  %152 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  %153 = call i32 @mt_map_key_clear(i32 %152)
  br label %164

154:                                              ; preds = %142
  %155 = load i32, i32* @KEY_DISPLAY_OFF, align 4
  %156 = call i32 @mt_map_key_clear(i32 %155)
  br label %164

157:                                              ; preds = %142
  %158 = load i32, i32* @KEY_F21, align 4
  %159 = call i32 @mt_map_key_clear(i32 %158)
  br label %164

160:                                              ; preds = %142
  %161 = load i32, i32* @KEY_SLEEP, align 4
  %162 = call i32 @mt_map_key_clear(i32 %161)
  br label %164

163:                                              ; preds = %142
  store i32 -1, i32* %7, align 4
  br label %190

164:                                              ; preds = %160, %157, %154, %151, %148
  store i32 1, i32* %7, align 4
  br label %190

165:                                              ; preds = %113, %106, %100
  %166 = load %struct.mt_report_data*, %struct.mt_report_data** %16, align 8
  %167 = getelementptr inbounds %struct.mt_report_data, %struct.mt_report_data* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %165
  %171 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %172 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %173 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %174 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %175 = load i64**, i64*** %12, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %178 = call i32 @mt_touch_input_mapping(%struct.hid_device* %171, %struct.hid_input* %172, %struct.hid_field* %173, %struct.hid_usage* %174, i64** %175, i32* %176, %struct.mt_application* %177)
  store i32 %178, i32* %7, align 4
  br label %190

179:                                              ; preds = %165
  %180 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %181 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @HID_DG_STYLUS, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  %186 = load i64, i64* @HID_DG_STYLUS, align 8
  %187 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %188 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %185, %179
  store i32 0, i32* %7, align 4
  br label %190

190:                                              ; preds = %189, %170, %164, %163, %99, %26
  %191 = load i32, i32* %7, align 4
  ret i32 %191
}

declare dso_local %struct.mt_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local %struct.mt_report_data* @mt_find_report_data(%struct.mt_device*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mt_map_key_clear(i32) #1

declare dso_local i32 @mt_touch_input_mapping(%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*, %struct.mt_application*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
