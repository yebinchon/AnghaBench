; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_pad_input_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_setup_pad_input_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.wacom_wac = type { %struct.input_dev*, %struct.wacom_features }
%struct.wacom_features = type { i32, i64, i32, i32 }

@WACOM_DEVICETYPE_PAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i64 0, align 8
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i64 0, align 8
@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@KEY_PROG1 = common dso_local global i32 0, align 4
@KEY_PROG2 = common dso_local global i32 0, align 4
@KEY_PROG3 = common dso_local global i32 0, align 4
@KEY_ONSCREEN_KEYBOARD = common dso_local global i32 0, align 4
@KEY_INFO = common dso_local global i32 0, align 4
@KEY_BUTTONCONFIG = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i64 0, align 8
@KEY_CONTROLPANEL = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i64 0, align 8
@INPUT_PROP_ACCELEROMETER = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i64 0, align 8
@ABS_RY = common dso_local global i64 0, align 8
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wacom_setup_pad_input_capabilities(%struct.input_dev* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.wacom_wac*, align 8
  %6 = alloca %struct.wacom_features*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %5, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 1
  store %struct.wacom_features* %8, %struct.wacom_features** %6, align 8
  %9 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %10 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 155
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %15 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %20 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %21 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %18, %13, %2
  %25 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %26 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WACOM_DEVICETYPE_PAD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %373

34:                                               ; preds = %24
  %35 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %36 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 136
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %41 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %42 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %41, i32 0, i32 0
  %43 = load %struct.input_dev*, %struct.input_dev** %42, align 8
  %44 = icmp eq %struct.input_dev* %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %373

48:                                               ; preds = %39, %34
  %49 = load i32, i32* @EV_KEY, align 4
  %50 = call i32 @BIT_MASK(i32 %49)
  %51 = load i32, i32* @EV_ABS, align 4
  %52 = call i32 @BIT_MASK(i32 %51)
  %53 = or i32 %50, %52
  %54 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @ABS_MISC, align 4
  %61 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %62 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__set_bit(i32 %60, i32 %63)
  %65 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = icmp ne %struct.TYPE_2__* %67, null
  br i1 %68, label %69, label %87

69:                                               ; preds = %48
  %70 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %71 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* @ABS_X, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %69
  %79 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @ABS_X, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %78, %48
  %88 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %89 = load i64, i64* @ABS_X, align 8
  %90 = call i32 @input_set_abs_params(%struct.input_dev* %88, i64 %89, i32 0, i32 1, i32 0, i32 0)
  br label %91

91:                                               ; preds = %87, %78, %69
  %92 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %93 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %92, i32 0, i32 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp ne %struct.TYPE_2__* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %91
  %97 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @ABS_Y, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %96
  %106 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 4
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i64, i64* @ABS_Y, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %105, %91
  %115 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %116 = load i64, i64* @ABS_Y, align 8
  %117 = call i32 @input_set_abs_params(%struct.input_dev* %115, i64 %116, i32 0, i32 1, i32 0, i32 0)
  br label %118

118:                                              ; preds = %114, %105, %96
  %119 = load i32, i32* @BTN_STYLUS, align 4
  %120 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @__set_bit(i32 %119, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %125 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %126 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @wacom_setup_numbered_buttons(%struct.input_dev* %124, i64 %127)
  %129 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %130 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %369 [
    i32 159, label %132
    i32 160, label %132
    i32 158, label %132
    i32 157, label %132
    i32 156, label %132
    i32 128, label %133
    i32 129, label %157
    i32 132, label %172
    i32 131, label %215
    i32 133, label %275
    i32 134, label %301
    i32 130, label %301
    i32 161, label %301
    i32 135, label %308
    i32 154, label %312
    i32 153, label %312
    i32 152, label %316
    i32 147, label %320
    i32 146, label %320
    i32 138, label %320
    i32 139, label %320
    i32 145, label %320
    i32 137, label %320
    i32 140, label %320
    i32 141, label %320
    i32 148, label %324
    i32 151, label %330
    i32 150, label %330
    i32 149, label %330
    i32 144, label %334
    i32 163, label %334
    i32 162, label %334
    i32 143, label %334
    i32 136, label %360
    i32 142, label %368
    i32 155, label %368
  ]

132:                                              ; preds = %118, %118, %118, %118, %118
  br label %372

133:                                              ; preds = %118
  %134 = load i32, i32* @BTN_BACK, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @__set_bit(i32 %134, i32 %137)
  %139 = load i32, i32* @BTN_LEFT, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @__set_bit(i32 %139, i32 %142)
  %144 = load i32, i32* @BTN_FORWARD, align 4
  %145 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %146 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @__set_bit(i32 %144, i32 %147)
  %149 = load i32, i32* @BTN_RIGHT, align 4
  %150 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @__set_bit(i32 %149, i32 %152)
  %154 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %155 = load i64, i64* @ABS_WHEEL, align 8
  %156 = call i32 @input_set_abs_params(%struct.input_dev* %154, i64 %155, i32 0, i32 71, i32 0, i32 0)
  br label %372

157:                                              ; preds = %118
  %158 = load i32, i32* @BTN_BACK, align 4
  %159 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %160 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @__set_bit(i32 %158, i32 %161)
  %163 = load i32, i32* @BTN_FORWARD, align 4
  %164 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %165 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @__set_bit(i32 %163, i32 %166)
  %168 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %169 = load i32, i32* @EV_REL, align 4
  %170 = load i32, i32* @REL_WHEEL, align 4
  %171 = call i32 @input_set_capability(%struct.input_dev* %168, i32 %169, i32 %170)
  br label %372

172:                                              ; preds = %118
  %173 = load i32, i32* @KEY_PROG1, align 4
  %174 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %175 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @__set_bit(i32 %173, i32 %176)
  %178 = load i32, i32* @KEY_PROG2, align 4
  %179 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %180 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @__set_bit(i32 %178, i32 %181)
  %183 = load i32, i32* @KEY_PROG3, align 4
  %184 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %185 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @__set_bit(i32 %183, i32 %186)
  %188 = load i32, i32* @KEY_ONSCREEN_KEYBOARD, align 4
  %189 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %190 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @__set_bit(i32 %188, i32 %191)
  %193 = load i32, i32* @KEY_INFO, align 4
  %194 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %195 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @__set_bit(i32 %193, i32 %196)
  %198 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %199 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %172
  %203 = load i32, i32* @KEY_BUTTONCONFIG, align 4
  %204 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %205 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @__set_bit(i32 %203, i32 %206)
  br label %208

208:                                              ; preds = %202, %172
  %209 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %210 = load i64, i64* @ABS_WHEEL, align 8
  %211 = call i32 @input_set_abs_params(%struct.input_dev* %209, i64 %210, i32 0, i32 71, i32 0, i32 0)
  %212 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %213 = load i64, i64* @ABS_THROTTLE, align 8
  %214 = call i32 @input_set_abs_params(%struct.input_dev* %212, i64 %213, i32 0, i32 71, i32 0, i32 0)
  br label %372

215:                                              ; preds = %118
  %216 = load i32, i32* @KEY_PROG1, align 4
  %217 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %218 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @__set_bit(i32 %216, i32 %219)
  %221 = load i32, i32* @KEY_PROG2, align 4
  %222 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %223 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @__set_bit(i32 %221, i32 %224)
  %226 = load i32, i32* @KEY_PROG3, align 4
  %227 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %228 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @__set_bit(i32 %226, i32 %229)
  %231 = load i32, i32* @KEY_ONSCREEN_KEYBOARD, align 4
  %232 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %233 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @__set_bit(i32 %231, i32 %234)
  %236 = load i32, i32* @KEY_BUTTONCONFIG, align 4
  %237 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %238 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @__set_bit(i32 %236, i32 %239)
  %241 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %242 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %215
  %246 = load i32, i32* @KEY_CONTROLPANEL, align 4
  %247 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %248 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @__set_bit(i32 %246, i32 %249)
  br label %251

251:                                              ; preds = %245, %215
  %252 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %253 = load i64, i64* @ABS_X, align 8
  %254 = call i32 @input_set_abs_params(%struct.input_dev* %252, i64 %253, i32 -2048, i32 2048, i32 0, i32 0)
  %255 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %256 = load i64, i64* @ABS_X, align 8
  %257 = call i32 @input_abs_set_res(%struct.input_dev* %255, i64 %256, i32 1024)
  %258 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %259 = load i64, i64* @ABS_Y, align 8
  %260 = call i32 @input_set_abs_params(%struct.input_dev* %258, i64 %259, i32 -2048, i32 2048, i32 0, i32 0)
  %261 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %262 = load i64, i64* @ABS_Y, align 8
  %263 = call i32 @input_abs_set_res(%struct.input_dev* %261, i64 %262, i32 1024)
  %264 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %265 = load i64, i64* @ABS_Z, align 8
  %266 = call i32 @input_set_abs_params(%struct.input_dev* %264, i64 %265, i32 -2048, i32 2048, i32 0, i32 0)
  %267 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %268 = load i64, i64* @ABS_Z, align 8
  %269 = call i32 @input_abs_set_res(%struct.input_dev* %267, i64 %268, i32 1024)
  %270 = load i32, i32* @INPUT_PROP_ACCELEROMETER, align 4
  %271 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %272 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @__set_bit(i32 %270, i32 %273)
  br label %372

275:                                              ; preds = %118
  %276 = load i32, i32* @KEY_PROG1, align 4
  %277 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %278 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @__set_bit(i32 %276, i32 %279)
  %281 = load i32, i32* @KEY_PROG2, align 4
  %282 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %283 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @__set_bit(i32 %281, i32 %284)
  %286 = load i32, i32* @KEY_PROG3, align 4
  %287 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %288 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @__set_bit(i32 %286, i32 %289)
  %291 = load i32, i32* @KEY_BUTTONCONFIG, align 4
  %292 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %293 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @__set_bit(i32 %291, i32 %294)
  %296 = load i32, i32* @KEY_INFO, align 4
  %297 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %298 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @__set_bit(i32 %296, i32 %299)
  br label %301

301:                                              ; preds = %118, %118, %118, %275
  %302 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %303 = load i64, i64* @ABS_RX, align 8
  %304 = call i32 @input_set_abs_params(%struct.input_dev* %302, i64 %303, i32 0, i32 4096, i32 0, i32 0)
  %305 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %306 = load i64, i64* @ABS_RY, align 8
  %307 = call i32 @input_set_abs_params(%struct.input_dev* %305, i64 %306, i32 0, i32 4096, i32 0, i32 0)
  br label %372

308:                                              ; preds = %118
  %309 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %310 = load i64, i64* @ABS_WHEEL, align 8
  %311 = call i32 @input_set_abs_params(%struct.input_dev* %309, i64 %310, i32 0, i32 71, i32 0, i32 0)
  br label %372

312:                                              ; preds = %118, %118
  %313 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %314 = load i64, i64* @ABS_RY, align 8
  %315 = call i32 @input_set_abs_params(%struct.input_dev* %313, i64 %314, i32 0, i32 4096, i32 0, i32 0)
  br label %316

316:                                              ; preds = %118, %312
  %317 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %318 = load i64, i64* @ABS_RX, align 8
  %319 = call i32 @input_set_abs_params(%struct.input_dev* %317, i64 %318, i32 0, i32 4096, i32 0, i32 0)
  br label %372

320:                                              ; preds = %118, %118, %118, %118, %118, %118, %118, %118
  %321 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %322 = load i64, i64* @ABS_WHEEL, align 8
  %323 = call i32 @input_set_abs_params(%struct.input_dev* %321, i64 %322, i32 0, i32 71, i32 0, i32 0)
  br label %372

324:                                              ; preds = %118
  %325 = load i32, i32* @BTN_STYLUS, align 4
  %326 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %327 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @__set_bit(i32 %325, i32 %328)
  br label %330

330:                                              ; preds = %118, %118, %118, %324
  %331 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %332 = load i64, i64* @ABS_WHEEL, align 8
  %333 = call i32 @input_set_abs_params(%struct.input_dev* %331, i64 %332, i32 0, i32 71, i32 0, i32 0)
  br label %372

334:                                              ; preds = %118, %118, %118, %118
  %335 = load i32, i32* @ABS_MISC, align 4
  %336 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %337 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @__clear_bit(i32 %335, i32 %338)
  %340 = load i32, i32* @BTN_LEFT, align 4
  %341 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %342 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @__set_bit(i32 %340, i32 %343)
  %345 = load i32, i32* @BTN_FORWARD, align 4
  %346 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %347 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = call i32 @__set_bit(i32 %345, i32 %348)
  %350 = load i32, i32* @BTN_BACK, align 4
  %351 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %352 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @__set_bit(i32 %350, i32 %353)
  %355 = load i32, i32* @BTN_RIGHT, align 4
  %356 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %357 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @__set_bit(i32 %355, i32 %358)
  br label %372

360:                                              ; preds = %118
  %361 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %362 = load i32, i32* @EV_MSC, align 4
  %363 = load i32, i32* @MSC_SERIAL, align 4
  %364 = call i32 @input_set_capability(%struct.input_dev* %361, i32 %362, i32 %363)
  %365 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %366 = load i64, i64* @ABS_WHEEL, align 8
  %367 = call i32 @input_set_abs_params(%struct.input_dev* %365, i64 %366, i32 0, i32 71, i32 0, i32 0)
  br label %372

368:                                              ; preds = %118, %118
  br label %372

369:                                              ; preds = %118
  %370 = load i32, i32* @ENODEV, align 4
  %371 = sub nsw i32 0, %370
  store i32 %371, i32* %3, align 4
  br label %373

372:                                              ; preds = %368, %360, %334, %330, %320, %316, %308, %301, %251, %208, %157, %133, %132
  store i32 0, i32* %3, align 4
  br label %373

373:                                              ; preds = %372, %369, %45, %31
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @wacom_setup_numbered_buttons(%struct.input_dev*, i64) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
