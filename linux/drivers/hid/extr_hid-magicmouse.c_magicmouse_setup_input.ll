; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_setup_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-magicmouse.c_magicmouse_setup_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.hid_device = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@USB_DEVICE_ID_APPLE_MAGICMOUSE = common dso_local global i64 0, align 8
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@emulate_3button = common dso_local global i64 0, align 8
@BTN_MIDDLE = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_X = common dso_local global i32 0, align 4
@REL_Y = common dso_local global i32 0, align 4
@emulate_scroll_wheel = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@USB_DEVICE_ID_APPLE_MAGICTRACKPAD2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Apple Inc. Magic Trackpad 2\00", align 1
@EV_MSC = common dso_local global i32 0, align 4
@BTN_0 = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i32 0, align 4
@INPUT_PROP_BUTTONPAD = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@INPUT_MT_POINTER = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_TRIPLETAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUADTAP = common dso_local global i32 0, align 4
@BTN_TOOL_QUINTTAP = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@MOUSE_MIN_X = common dso_local global i32 0, align 4
@MOUSE_MAX_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@MOUSE_MIN_Y = common dso_local global i32 0, align 4
@MOUSE_MAX_Y = common dso_local global i32 0, align 4
@MOUSE_RES_X = common dso_local global i32 0, align 4
@MOUSE_RES_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@TRACKPAD2_MIN_X = common dso_local global i32 0, align 4
@TRACKPAD2_MAX_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@TRACKPAD2_MIN_Y = common dso_local global i32 0, align 4
@TRACKPAD2_MAX_Y = common dso_local global i32 0, align 4
@TRACKPAD2_RES_X = common dso_local global i32 0, align 4
@TRACKPAD2_RES_Y = common dso_local global i32 0, align 4
@TRACKPAD_MIN_X = common dso_local global i32 0, align 4
@TRACKPAD_MAX_X = common dso_local global i32 0, align 4
@TRACKPAD_MIN_Y = common dso_local global i32 0, align 4
@TRACKPAD_MAX_Y = common dso_local global i32 0, align 4
@TRACKPAD_RES_X = common dso_local global i32 0, align 4
@TRACKPAD_RES_Y = common dso_local global i32 0, align 4
@report_undeciphered = common dso_local global i64 0, align 8
@MSC_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.hid_device*)* @magicmouse_setup_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @magicmouse_setup_input(%struct.input_dev* %0, %struct.hid_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.hid_device* %1, %struct.hid_device** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @EV_KEY, align 4
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @__set_bit(i32 %8, i32 %11)
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICMOUSE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %2
  %20 = load i32, i32* @BTN_LEFT, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__set_bit(i32 %20, i32 %23)
  %25 = load i32, i32* @BTN_RIGHT, align 4
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__set_bit(i32 %25, i32 %28)
  %30 = load i64, i64* @emulate_3button, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load i32, i32* @BTN_MIDDLE, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__set_bit(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %19
  %39 = load i32, i32* @EV_REL, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  %44 = load i32, i32* @REL_X, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @__set_bit(i32 %44, i32 %47)
  %49 = load i32, i32* @REL_Y, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @__set_bit(i32 %49, i32 %52)
  %54 = load i64, i64* @emulate_scroll_wheel, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %38
  %57 = load i32, i32* @REL_WHEEL, align 4
  %58 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %59 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @__set_bit(i32 %57, i32 %60)
  %62 = load i32, i32* @REL_HWHEEL, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @__set_bit(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %56, %38
  br label %175

68:                                               ; preds = %2
  %69 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %68
  %76 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %77 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %77, align 8
  %78 = load i32, i32* @EV_MSC, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @__clear_bit(i32 %78, i32 %81)
  %83 = load i32, i32* @BTN_0, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @__clear_bit(i32 %83, i32 %86)
  %88 = load i32, i32* @BTN_RIGHT, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @__clear_bit(i32 %88, i32 %91)
  %93 = load i32, i32* @BTN_MIDDLE, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @__clear_bit(i32 %93, i32 %96)
  %98 = load i32, i32* @BTN_MOUSE, align 4
  %99 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %100 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__set_bit(i32 %98, i32 %101)
  %103 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @__set_bit(i32 %103, i32 %106)
  %108 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %109 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %110 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @__set_bit(i32 %108, i32 %111)
  %113 = load i32, i32* @INPUT_MT_POINTER, align 4
  %114 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @INPUT_MT_TRACK, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %7, align 4
  br label %174

118:                                              ; preds = %68
  %119 = load i32, i32* @BTN_RIGHT, align 4
  %120 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @__clear_bit(i32 %119, i32 %122)
  %124 = load i32, i32* @BTN_MIDDLE, align 4
  %125 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %126 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @__clear_bit(i32 %124, i32 %127)
  %129 = load i32, i32* @BTN_MOUSE, align 4
  %130 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %131 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @__set_bit(i32 %129, i32 %132)
  %134 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @__set_bit(i32 %134, i32 %137)
  %139 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @__set_bit(i32 %139, i32 %142)
  %144 = load i32, i32* @BTN_TOOL_TRIPLETAP, align 4
  %145 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %146 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @__set_bit(i32 %144, i32 %147)
  %149 = load i32, i32* @BTN_TOOL_QUADTAP, align 4
  %150 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @__set_bit(i32 %149, i32 %152)
  %154 = load i32, i32* @BTN_TOOL_QUINTTAP, align 4
  %155 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %156 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @__set_bit(i32 %154, i32 %157)
  %159 = load i32, i32* @BTN_TOUCH, align 4
  %160 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %161 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @__set_bit(i32 %159, i32 %162)
  %164 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %165 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %166 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @__set_bit(i32 %164, i32 %167)
  %169 = load i32, i32* @INPUT_PROP_BUTTONPAD, align 4
  %170 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %171 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @__set_bit(i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %118, %75
  br label %175

175:                                              ; preds = %174, %67
  %176 = load i32, i32* @EV_ABS, align 4
  %177 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %178 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @__set_bit(i32 %176, i32 %179)
  %181 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @input_mt_init_slots(%struct.input_dev* %181, i32 16, i32 %182)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %175
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %341

188:                                              ; preds = %175
  %189 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %190 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %191 = call i32 @input_set_abs_params(%struct.input_dev* %189, i32 %190, i32 0, i32 1020, i32 4, i32 0)
  %192 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %193 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %194 = call i32 @input_set_abs_params(%struct.input_dev* %192, i32 %193, i32 0, i32 1020, i32 4, i32 0)
  %195 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %196 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICMOUSE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %223

201:                                              ; preds = %188
  %202 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %203 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %204 = call i32 @input_set_abs_params(%struct.input_dev* %202, i32 %203, i32 -31, i32 32, i32 1, i32 0)
  %205 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %206 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %207 = load i32, i32* @MOUSE_MIN_X, align 4
  %208 = load i32, i32* @MOUSE_MAX_X, align 4
  %209 = call i32 @input_set_abs_params(%struct.input_dev* %205, i32 %206, i32 %207, i32 %208, i32 4, i32 0)
  %210 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %211 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %212 = load i32, i32* @MOUSE_MIN_Y, align 4
  %213 = load i32, i32* @MOUSE_MAX_Y, align 4
  %214 = call i32 @input_set_abs_params(%struct.input_dev* %210, i32 %211, i32 %212, i32 %213, i32 4, i32 0)
  %215 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %216 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %217 = load i32, i32* @MOUSE_RES_X, align 4
  %218 = call i32 @input_abs_set_res(%struct.input_dev* %215, i32 %216, i32 %217)
  %219 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %220 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %221 = load i32, i32* @MOUSE_RES_Y, align 4
  %222 = call i32 @input_abs_set_res(%struct.input_dev* %219, i32 %220, i32 %221)
  br label %317

223:                                              ; preds = %188
  %224 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %225 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %276

230:                                              ; preds = %223
  %231 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %232 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %233 = call i32 @input_set_abs_params(%struct.input_dev* %231, i32 %232, i32 0, i32 253, i32 0, i32 0)
  %234 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %235 = load i32, i32* @ABS_PRESSURE, align 4
  %236 = call i32 @input_set_abs_params(%struct.input_dev* %234, i32 %235, i32 0, i32 253, i32 0, i32 0)
  %237 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %238 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %239 = call i32 @input_set_abs_params(%struct.input_dev* %237, i32 %238, i32 -3, i32 4, i32 0, i32 0)
  %240 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %241 = load i32, i32* @ABS_X, align 4
  %242 = load i32, i32* @TRACKPAD2_MIN_X, align 4
  %243 = load i32, i32* @TRACKPAD2_MAX_X, align 4
  %244 = call i32 @input_set_abs_params(%struct.input_dev* %240, i32 %241, i32 %242, i32 %243, i32 0, i32 0)
  %245 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %246 = load i32, i32* @ABS_Y, align 4
  %247 = load i32, i32* @TRACKPAD2_MIN_Y, align 4
  %248 = load i32, i32* @TRACKPAD2_MAX_Y, align 4
  %249 = call i32 @input_set_abs_params(%struct.input_dev* %245, i32 %246, i32 %247, i32 %248, i32 0, i32 0)
  %250 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %251 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %252 = load i32, i32* @TRACKPAD2_MIN_X, align 4
  %253 = load i32, i32* @TRACKPAD2_MAX_X, align 4
  %254 = call i32 @input_set_abs_params(%struct.input_dev* %250, i32 %251, i32 %252, i32 %253, i32 0, i32 0)
  %255 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %256 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %257 = load i32, i32* @TRACKPAD2_MIN_Y, align 4
  %258 = load i32, i32* @TRACKPAD2_MAX_Y, align 4
  %259 = call i32 @input_set_abs_params(%struct.input_dev* %255, i32 %256, i32 %257, i32 %258, i32 0, i32 0)
  %260 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %261 = load i32, i32* @ABS_X, align 4
  %262 = load i32, i32* @TRACKPAD2_RES_X, align 4
  %263 = call i32 @input_abs_set_res(%struct.input_dev* %260, i32 %261, i32 %262)
  %264 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %265 = load i32, i32* @ABS_Y, align 4
  %266 = load i32, i32* @TRACKPAD2_RES_Y, align 4
  %267 = call i32 @input_abs_set_res(%struct.input_dev* %264, i32 %265, i32 %266)
  %268 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %269 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %270 = load i32, i32* @TRACKPAD2_RES_X, align 4
  %271 = call i32 @input_abs_set_res(%struct.input_dev* %268, i32 %269, i32 %270)
  %272 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %273 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %274 = load i32, i32* @TRACKPAD2_RES_Y, align 4
  %275 = call i32 @input_abs_set_res(%struct.input_dev* %272, i32 %273, i32 %274)
  br label %316

276:                                              ; preds = %223
  %277 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %278 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %279 = call i32 @input_set_abs_params(%struct.input_dev* %277, i32 %278, i32 -31, i32 32, i32 1, i32 0)
  %280 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %281 = load i32, i32* @ABS_X, align 4
  %282 = load i32, i32* @TRACKPAD_MIN_X, align 4
  %283 = load i32, i32* @TRACKPAD_MAX_X, align 4
  %284 = call i32 @input_set_abs_params(%struct.input_dev* %280, i32 %281, i32 %282, i32 %283, i32 4, i32 0)
  %285 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %286 = load i32, i32* @ABS_Y, align 4
  %287 = load i32, i32* @TRACKPAD_MIN_Y, align 4
  %288 = load i32, i32* @TRACKPAD_MAX_Y, align 4
  %289 = call i32 @input_set_abs_params(%struct.input_dev* %285, i32 %286, i32 %287, i32 %288, i32 4, i32 0)
  %290 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %291 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %292 = load i32, i32* @TRACKPAD_MIN_X, align 4
  %293 = load i32, i32* @TRACKPAD_MAX_X, align 4
  %294 = call i32 @input_set_abs_params(%struct.input_dev* %290, i32 %291, i32 %292, i32 %293, i32 4, i32 0)
  %295 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %296 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %297 = load i32, i32* @TRACKPAD_MIN_Y, align 4
  %298 = load i32, i32* @TRACKPAD_MAX_Y, align 4
  %299 = call i32 @input_set_abs_params(%struct.input_dev* %295, i32 %296, i32 %297, i32 %298, i32 4, i32 0)
  %300 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %301 = load i32, i32* @ABS_X, align 4
  %302 = load i32, i32* @TRACKPAD_RES_X, align 4
  %303 = call i32 @input_abs_set_res(%struct.input_dev* %300, i32 %301, i32 %302)
  %304 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %305 = load i32, i32* @ABS_Y, align 4
  %306 = load i32, i32* @TRACKPAD_RES_Y, align 4
  %307 = call i32 @input_abs_set_res(%struct.input_dev* %304, i32 %305, i32 %306)
  %308 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %309 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %310 = load i32, i32* @TRACKPAD_RES_X, align 4
  %311 = call i32 @input_abs_set_res(%struct.input_dev* %308, i32 %309, i32 %310)
  %312 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %313 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %314 = load i32, i32* @TRACKPAD_RES_Y, align 4
  %315 = call i32 @input_abs_set_res(%struct.input_dev* %312, i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %276, %230
  br label %317

317:                                              ; preds = %316, %201
  %318 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %319 = call i32 @input_set_events_per_packet(%struct.input_dev* %318, i32 60)
  %320 = load i64, i64* @report_undeciphered, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %340

322:                                              ; preds = %317
  %323 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %324 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %323, i32 0, i32 3
  %325 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @USB_DEVICE_ID_APPLE_MAGICTRACKPAD2, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %340

329:                                              ; preds = %322
  %330 = load i32, i32* @EV_MSC, align 4
  %331 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %332 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @__set_bit(i32 %330, i32 %333)
  %335 = load i32, i32* @MSC_RAW, align 4
  %336 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %337 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @__set_bit(i32 %335, i32 %338)
  br label %340

340:                                              ; preds = %329, %322, %317
  store i32 0, i32* %3, align 4
  br label %341

341:                                              ; preds = %340, %186
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_events_per_packet(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
