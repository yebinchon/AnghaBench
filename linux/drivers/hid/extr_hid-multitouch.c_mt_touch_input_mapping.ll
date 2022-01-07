; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_touch_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_touch_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hid_field = type { i64, i32, i32*, %struct.hid_usage* }
%struct.hid_usage = type { i32, i32 }
%struct.mt_application = type { i32, i32, i32, i32*, i32*, i32, i32, i32 }
%struct.mt_device = type { i32, %struct.mt_class }
%struct.mt_class = type { i32, i32, i32, i32, i32 }

@HID_DG_TOUCHSCREEN = common dso_local global i64 0, align 8
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@MT_INPUTMODE_TOUCHPAD = common dso_local global i32 0, align 4
@ABS_MT_TOOL_X = common dso_local global i32 0, align 4
@cx = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@x = common dso_local global i32 0, align 4
@HID_GD_SYSTEM_MULTIAXIS = common dso_local global i64 0, align 8
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@ABS_MT_TOOL_TYPE = common dso_local global i32 0, align 4
@MT_TOOL_DIAL = common dso_local global i32 0, align 4
@ABS_MT_TOOL_Y = common dso_local global i32 0, align 4
@cy = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@y = common dso_local global i32 0, align 4
@MT_QUIRK_HOVERING = common dso_local global i32 0, align 4
@ABS_MT_DISTANCE = common dso_local global i32 0, align 4
@inrange_state = common dso_local global i32 0, align 4
@MT_CLS_WIN_8 = common dso_local global i32 0, align 4
@MT_CLS_WIN_8_DUAL = common dso_local global i32 0, align 4
@HID_DG_TOUCHPAD = common dso_local global i64 0, align 8
@MT_QUIRK_CONFIDENCE = common dso_local global i32 0, align 4
@MT_TOOL_FINGER = common dso_local global i32 0, align 4
@MT_TOOL_PALM = common dso_local global i32 0, align 4
@confidence_state = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@tip_state = common dso_local global i32 0, align 4
@contactid = common dso_local global i32 0, align 4
@MT_QUIRK_NO_AREA = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@w = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@h = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_TIMESTAMP = common dso_local global i32 0, align 4
@a = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@MT_QUIRK_WIN8_PTP_BUTTONS = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*, %struct.mt_application*)* @mt_touch_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt_touch_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5, %struct.mt_application* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_device*, align 8
  %10 = alloca %struct.hid_input*, align 8
  %11 = alloca %struct.hid_field*, align 8
  %12 = alloca %struct.hid_usage*, align 8
  %13 = alloca i64**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mt_application*, align 8
  %16 = alloca %struct.mt_device*, align 8
  %17 = alloca %struct.mt_class*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.hid_usage*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %9, align 8
  store %struct.hid_input* %1, %struct.hid_input** %10, align 8
  store %struct.hid_field* %2, %struct.hid_field** %11, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %12, align 8
  store i64** %4, i64*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.mt_application* %6, %struct.mt_application** %15, align 8
  %20 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %21 = call %struct.mt_device* @hid_get_drvdata(%struct.hid_device* %20)
  store %struct.mt_device* %21, %struct.mt_device** %16, align 8
  %22 = load %struct.mt_device*, %struct.mt_device** %16, align 8
  %23 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %22, i32 0, i32 1
  store %struct.mt_class* %23, %struct.mt_class** %17, align 8
  store %struct.hid_usage* null, %struct.hid_usage** %19, align 8
  %24 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %25 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HID_DG_TOUCHSCREEN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %7
  %30 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %31 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HID_USAGE_PAGE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 130
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* @INPUT_MT_POINTER, align 4
  %38 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %39 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @MT_INPUTMODE_TOUCHPAD, align 4
  %43 = load %struct.mt_device*, %struct.mt_device** %16, align 8
  %44 = getelementptr inbounds %struct.mt_device, %struct.mt_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %29, %7
  %46 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HID_USAGE_PAGE, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 130
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %54 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %59 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %64 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %63, i32 0, i32 3
  %65 = load %struct.hid_usage*, %struct.hid_usage** %64, align 8
  %66 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %67 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %65, i64 %70
  store %struct.hid_usage* %71, %struct.hid_usage** %19, align 8
  br label %72

72:                                               ; preds = %62, %57
  %73 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %74 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @HID_USAGE_PAGE, align 4
  %77 = and i32 %75, %76
  switch i32 %77, label %451 [
    i32 128, label %78
    i32 129, label %162
    i32 130, label %390
    i32 -16777216, label %450
  ]

78:                                               ; preds = %72
  %79 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %80 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %161 [
    i32 132, label %82
    i32 131, label %132
  ]

82:                                               ; preds = %78
  %83 = load %struct.hid_usage*, %struct.hid_usage** %19, align 8
  %84 = icmp ne %struct.hid_usage* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.hid_usage*, %struct.hid_usage** %19, align 8
  %87 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %90 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @ABS_MT_TOOL_X, align 4
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* @cx, align 4
  %96 = call i32 @MT_STORE_FIELD(i32 %95)
  br label %101

97:                                               ; preds = %85, %82
  %98 = load i32, i32* @ABS_MT_POSITION_X, align 4
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* @x, align 4
  %100 = call i32 @MT_STORE_FIELD(i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %103 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %107 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %108 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @set_abs(%struct.TYPE_4__* %104, i32 %105, %struct.hid_field* %106, i32 %109)
  %111 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %112 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @HID_GD_SYSTEM_MULTIAXIS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %101
  %117 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %118 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %119 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @__set_bit(i32 %117, i32 %122)
  %124 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %125 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %128 = load i32, i32* @MT_TOOL_DIAL, align 4
  %129 = load i32, i32* @MT_TOOL_DIAL, align 4
  %130 = call i32 @input_set_abs_params(%struct.TYPE_4__* %126, i32 %127, i32 %128, i32 %129, i32 0, i32 0)
  br label %131

131:                                              ; preds = %116, %101
  store i32 1, i32* %8, align 4
  br label %452

132:                                              ; preds = %78
  %133 = load %struct.hid_usage*, %struct.hid_usage** %19, align 8
  %134 = icmp ne %struct.hid_usage* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load %struct.hid_usage*, %struct.hid_usage** %19, align 8
  %137 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %140 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %138, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load i32, i32* @ABS_MT_TOOL_Y, align 4
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* @cy, align 4
  %146 = call i32 @MT_STORE_FIELD(i32 %145)
  br label %151

147:                                              ; preds = %135, %132
  %148 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* @y, align 4
  %150 = call i32 @MT_STORE_FIELD(i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  %152 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %153 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %157 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %158 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @set_abs(%struct.TYPE_4__* %154, i32 %155, %struct.hid_field* %156, i32 %159)
  store i32 1, i32* %8, align 4
  br label %452

161:                                              ; preds = %78
  store i32 0, i32* %8, align 4
  br label %452

162:                                              ; preds = %72
  %163 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %164 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %389 [
    i32 138, label %166
    i32 143, label %182
    i32 135, label %230
    i32 141, label %246
    i32 133, label %253
    i32 139, label %273
    i32 136, label %308
    i32 137, label %320
    i32 142, label %342
    i32 144, label %355
    i32 140, label %387
    i32 134, label %388
  ]

166:                                              ; preds = %162
  %167 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %168 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MT_QUIRK_HOVERING, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %175 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = load i32, i32* @ABS_MT_DISTANCE, align 4
  %178 = call i32 @input_set_abs_params(%struct.TYPE_4__* %176, i32 %177, i32 0, i32 1, i32 0, i32 0)
  br label %179

179:                                              ; preds = %173, %166
  %180 = load i32, i32* @inrange_state, align 4
  %181 = call i32 @MT_STORE_FIELD(i32 %180)
  store i32 1, i32* %8, align 4
  br label %452

182:                                              ; preds = %162
  %183 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %184 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @MT_CLS_WIN_8, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %182
  %189 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %190 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @MT_CLS_WIN_8_DUAL, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %188, %182
  %195 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %196 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @HID_DG_TOUCHPAD, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %202 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @HID_DG_TOUCHSCREEN, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %200, %194
  %207 = load i32, i32* @MT_QUIRK_CONFIDENCE, align 4
  %208 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %209 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %200, %188
  %213 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %214 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @MT_QUIRK_CONFIDENCE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %212
  %220 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %221 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %220, i32 0, i32 0
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %224 = load i32, i32* @MT_TOOL_FINGER, align 4
  %225 = load i32, i32* @MT_TOOL_PALM, align 4
  %226 = call i32 @input_set_abs_params(%struct.TYPE_4__* %222, i32 %223, i32 %224, i32 %225, i32 0, i32 0)
  br label %227

227:                                              ; preds = %219, %212
  %228 = load i32, i32* @confidence_state, align 4
  %229 = call i32 @MT_STORE_FIELD(i32 %228)
  store i32 1, i32* %8, align 4
  br label %452

230:                                              ; preds = %162
  %231 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %232 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @HID_GD_SYSTEM_MULTIAXIS, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %243

236:                                              ; preds = %230
  %237 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %238 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %237, i32 0, i32 0
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = load i32, i32* @EV_KEY, align 4
  %241 = load i32, i32* @BTN_TOUCH, align 4
  %242 = call i32 @input_set_capability(%struct.TYPE_4__* %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %236, %230
  %244 = load i32, i32* @tip_state, align 4
  %245 = call i32 @MT_STORE_FIELD(i32 %244)
  store i32 1, i32* %8, align 4
  br label %452

246:                                              ; preds = %162
  %247 = load i32, i32* @contactid, align 4
  %248 = call i32 @MT_STORE_FIELD(i32 %247)
  %249 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %250 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  store i32 1, i32* %8, align 4
  br label %452

253:                                              ; preds = %162
  %254 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %255 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @MT_QUIRK_NO_AREA, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %270, label %260

260:                                              ; preds = %253
  %261 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %262 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %261, i32 0, i32 0
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %262, align 8
  %264 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %265 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %266 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %267 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @set_abs(%struct.TYPE_4__* %263, i32 %264, %struct.hid_field* %265, i32 %268)
  br label %270

270:                                              ; preds = %260, %253
  %271 = load i32, i32* @w, align 4
  %272 = call i32 @MT_STORE_FIELD(i32 %271)
  store i32 1, i32* %8, align 4
  br label %452

273:                                              ; preds = %162
  %274 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %275 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @MT_QUIRK_NO_AREA, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %305, label %280

280:                                              ; preds = %273
  %281 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %282 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %281, i32 0, i32 0
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %285 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %286 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %287 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @set_abs(%struct.TYPE_4__* %283, i32 %284, %struct.hid_field* %285, i32 %288)
  %290 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %291 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %292 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %291, i32 0, i32 0
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @test_bit(i32 %290, i32 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %304, label %298

298:                                              ; preds = %280
  %299 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %300 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %299, i32 0, i32 0
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %303 = call i32 @input_set_abs_params(%struct.TYPE_4__* %301, i32 %302, i32 0, i32 1, i32 0, i32 0)
  br label %304

304:                                              ; preds = %298, %280
  br label %305

305:                                              ; preds = %304, %273
  %306 = load i32, i32* @h, align 4
  %307 = call i32 @MT_STORE_FIELD(i32 %306)
  store i32 1, i32* %8, align 4
  br label %452

308:                                              ; preds = %162
  %309 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %310 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %309, i32 0, i32 0
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %313 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %314 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %315 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @set_abs(%struct.TYPE_4__* %311, i32 %312, %struct.hid_field* %313, i32 %316)
  %318 = load i32, i32* @p, align 4
  %319 = call i32 @MT_STORE_FIELD(i32 %318)
  store i32 1, i32* %8, align 4
  br label %452

320:                                              ; preds = %162
  %321 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %322 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %321, i32 0, i32 0
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = load i32, i32* @EV_MSC, align 4
  %325 = load i32, i32* @MSC_TIMESTAMP, align 4
  %326 = call i32 @input_set_capability(%struct.TYPE_4__* %323, i32 %324, i32 %325)
  %327 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %328 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %331 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %329, i64 %333
  %335 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %336 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %335, i32 0, i32 4
  store i32* %334, i32** %336, align 8
  %337 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %338 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %341 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 4
  store i32 1, i32* %8, align 4
  br label %452

342:                                              ; preds = %162
  %343 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %344 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %343, i32 0, i32 2
  store i32 1, i32* %344, align 8
  %345 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %346 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %345, i32 0, i32 2
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %349 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %347, i64 %351
  %353 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %354 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %353, i32 0, i32 3
  store i32* %352, i32** %354, align 8
  store i32 1, i32* %8, align 4
  br label %452

355:                                              ; preds = %162
  %356 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %357 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %356, i32 0, i32 0
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %357, align 8
  %359 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %360 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %361 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = sub nsw i32 0, %362
  %364 = sdiv i32 %363, 4
  %365 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %366 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = sdiv i32 %367, 4
  %369 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %370 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %355
  %374 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %375 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.mt_class*, %struct.mt_class** %17, align 8
  %378 = getelementptr inbounds %struct.mt_class, %struct.mt_class* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = sdiv i32 %376, %379
  br label %382

381:                                              ; preds = %355
  br label %382

382:                                              ; preds = %381, %373
  %383 = phi i32 [ %380, %373 ], [ 0, %381 ]
  %384 = call i32 @input_set_abs_params(%struct.TYPE_4__* %358, i32 %359, i32 %364, i32 %368, i32 %383, i32 0)
  %385 = load i32, i32* @a, align 4
  %386 = call i32 @MT_STORE_FIELD(i32 %385)
  store i32 1, i32* %8, align 4
  br label %452

387:                                              ; preds = %162
  store i32 -1, i32* %8, align 4
  br label %452

388:                                              ; preds = %162
  store i32 -1, i32* %8, align 4
  br label %452

389:                                              ; preds = %162
  store i32 0, i32* %8, align 4
  br label %452

390:                                              ; preds = %72
  %391 = load i32, i32* @BTN_MOUSE, align 4
  %392 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %393 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = sub nsw i32 %394, 1
  %396 = load i32, i32* @HID_USAGE, align 4
  %397 = and i32 %395, %396
  %398 = add nsw i32 %391, %397
  store i32 %398, i32* %18, align 4
  %399 = load %struct.mt_application*, %struct.mt_application** %15, align 8
  %400 = getelementptr inbounds %struct.mt_application, %struct.mt_application* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @MT_QUIRK_WIN8_PTP_BUTTONS, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %421

405:                                              ; preds = %390
  %406 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %407 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %406, i32 0, i32 0
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* @HID_DG_TOUCHPAD, align 8
  %410 = icmp eq i64 %408, %409
  br i1 %410, label %411, label %421

411:                                              ; preds = %405
  %412 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %413 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @HID_USAGE, align 4
  %416 = and i32 %414, %415
  %417 = icmp sgt i32 %416, 1
  br i1 %417, label %418, label %421

418:                                              ; preds = %411
  %419 = load i32, i32* %18, align 4
  %420 = add nsw i32 %419, -1
  store i32 %420, i32* %18, align 4
  br label %421

421:                                              ; preds = %418, %411, %405, %390
  %422 = load %struct.hid_field*, %struct.hid_field** %11, align 8
  %423 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @HID_GD_SYSTEM_MULTIAXIS, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %436

427:                                              ; preds = %421
  %428 = load i32, i32* @BTN_0, align 4
  %429 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %430 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = sub nsw i32 %431, 1
  %433 = load i32, i32* @HID_USAGE, align 4
  %434 = and i32 %432, %433
  %435 = add nsw i32 %428, %434
  store i32 %435, i32* %18, align 4
  br label %436

436:                                              ; preds = %427, %421
  %437 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %438 = load %struct.hid_usage*, %struct.hid_usage** %12, align 8
  %439 = load i64**, i64*** %13, align 8
  %440 = load i32*, i32** %14, align 8
  %441 = load i32, i32* @EV_KEY, align 4
  %442 = load i32, i32* %18, align 4
  %443 = call i32 @hid_map_usage(%struct.hid_input* %437, %struct.hid_usage* %438, i64** %439, i32* %440, i32 %441, i32 %442)
  %444 = load %struct.hid_input*, %struct.hid_input** %10, align 8
  %445 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %444, i32 0, i32 0
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %445, align 8
  %447 = load i32, i32* @EV_KEY, align 4
  %448 = load i32, i32* %18, align 4
  %449 = call i32 @input_set_capability(%struct.TYPE_4__* %446, i32 %447, i32 %448)
  store i32 1, i32* %8, align 4
  br label %452

450:                                              ; preds = %72
  store i32 -1, i32* %8, align 4
  br label %452

451:                                              ; preds = %72
  store i32 0, i32* %8, align 4
  br label %452

452:                                              ; preds = %451, %450, %436, %389, %388, %387, %382, %342, %320, %308, %305, %270, %246, %243, %227, %179, %161, %151, %131
  %453 = load i32, i32* %8, align 4
  ret i32 %453
}

declare dso_local %struct.mt_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @MT_STORE_FIELD(i32) #1

declare dso_local i32 @set_abs(%struct.TYPE_4__*, i32, %struct.hid_field*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_4__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
