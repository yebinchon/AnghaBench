; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_do_input_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_do_input_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.steam_device = type { i32 }
%struct.input_dev = type { i32 }

@ABS_HAT2Y = common dso_local global i32 0, align 4
@ABS_HAT2X = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TR2 = common dso_local global i32 0, align 4
@BTN_TL2 = common dso_local global i32 0, align 4
@BTN_TR = common dso_local global i32 0, align 4
@BTN_TL = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@BTN_MODE = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_GEAR_DOWN = common dso_local global i32 0, align 4
@BTN_GEAR_UP = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMB = common dso_local global i32 0, align 4
@BTN_THUMB2 = common dso_local global i32 0, align 4
@BTN_DPAD_UP = common dso_local global i32 0, align 4
@BTN_DPAD_RIGHT = common dso_local global i32 0, align 4
@BTN_DPAD_LEFT = common dso_local global i32 0, align 4
@BTN_DPAD_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.steam_device*, %struct.input_dev*, i32*)* @steam_do_input_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steam_do_input_event(%struct.steam_device* %0, %struct.input_dev* %1, i32* %2) #0 {
  %4 = alloca %struct.steam_device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.steam_device* %0, %struct.steam_device** %4, align 8
  store %struct.input_dev* %1, %struct.input_dev** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 9
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 10
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = load i32, i32* @ABS_HAT2Y, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 11
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @input_report_abs(%struct.input_dev* %23, i32 %24, i32 %27)
  %29 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %30 = load i32, i32* @ABS_HAT2X, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 12
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_report_abs(%struct.input_dev* %29, i32 %30, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @BIT(i32 3)
  %37 = and i32 %35, %36
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @BIT(i32 7)
  %40 = and i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 16
  %43 = call i32 @steam_le16(i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 18
  %46 = call i32 @steam_le16(i32* %45)
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* @ABS_HAT0X, align 4
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @ABS_X, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @input_report_abs(%struct.input_dev* %48, i32 %56, i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @ABS_HAT0Y, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* @ABS_Y, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @input_report_abs(%struct.input_dev* %59, i32 %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = load i32, i32* @ABS_X, align 4
  %78 = call i32 @input_report_abs(%struct.input_dev* %76, i32 %77, i32 0)
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = load i32, i32* @ABS_Y, align 4
  %81 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %75, %72, %66
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %90 = load i32, i32* @ABS_HAT0X, align 4
  %91 = call i32 @input_report_abs(%struct.input_dev* %89, i32 %90, i32 0)
  %92 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %93 = load i32, i32* @ABS_HAT0Y, align 4
  %94 = call i32 @input_report_abs(%struct.input_dev* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %88, %85, %82
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = load i32, i32* @ABS_RX, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 20
  %100 = call i32 @steam_le16(i32* %99)
  %101 = call i32 @input_report_abs(%struct.input_dev* %96, i32 %97, i32 %100)
  %102 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %103 = load i32, i32* @ABS_RY, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 22
  %106 = call i32 @steam_le16(i32* %105)
  %107 = sub nsw i32 0, %106
  %108 = call i32 @input_report_abs(%struct.input_dev* %102, i32 %103, i32 %107)
  %109 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %110 = load i32, i32* @EV_KEY, align 4
  %111 = load i32, i32* @BTN_TR2, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @BIT(i32 0)
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = call i32 @input_event(%struct.input_dev* %109, i32 %110, i32 %111, i32 %118)
  %120 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %121 = load i32, i32* @EV_KEY, align 4
  %122 = load i32, i32* @BTN_TL2, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @BIT(i32 1)
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @input_event(%struct.input_dev* %120, i32 %121, i32 %122, i32 %129)
  %131 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %132 = load i32, i32* @EV_KEY, align 4
  %133 = load i32, i32* @BTN_TR, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @BIT(i32 2)
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 @input_event(%struct.input_dev* %131, i32 %132, i32 %133, i32 %140)
  %142 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %143 = load i32, i32* @EV_KEY, align 4
  %144 = load i32, i32* @BTN_TL, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @BIT(i32 3)
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @input_event(%struct.input_dev* %142, i32 %143, i32 %144, i32 %151)
  %153 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %154 = load i32, i32* @EV_KEY, align 4
  %155 = load i32, i32* @BTN_Y, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @BIT(i32 4)
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  %163 = call i32 @input_event(%struct.input_dev* %153, i32 %154, i32 %155, i32 %162)
  %164 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %165 = load i32, i32* @EV_KEY, align 4
  %166 = load i32, i32* @BTN_B, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @BIT(i32 5)
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @input_event(%struct.input_dev* %164, i32 %165, i32 %166, i32 %173)
  %175 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %176 = load i32, i32* @EV_KEY, align 4
  %177 = load i32, i32* @BTN_X, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @BIT(i32 6)
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @input_event(%struct.input_dev* %175, i32 %176, i32 %177, i32 %184)
  %186 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %187 = load i32, i32* @EV_KEY, align 4
  %188 = load i32, i32* @BTN_A, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @BIT(i32 7)
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 @input_event(%struct.input_dev* %186, i32 %187, i32 %188, i32 %195)
  %197 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %198 = load i32, i32* @EV_KEY, align 4
  %199 = load i32, i32* @BTN_SELECT, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @BIT(i32 4)
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 @input_event(%struct.input_dev* %197, i32 %198, i32 %199, i32 %206)
  %208 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %209 = load i32, i32* @EV_KEY, align 4
  %210 = load i32, i32* @BTN_MODE, align 4
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @BIT(i32 5)
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i32 @input_event(%struct.input_dev* %208, i32 %209, i32 %210, i32 %217)
  %219 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %220 = load i32, i32* @EV_KEY, align 4
  %221 = load i32, i32* @BTN_START, align 4
  %222 = load i32, i32* %8, align 4
  %223 = call i32 @BIT(i32 6)
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  %226 = xor i1 %225, true
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = call i32 @input_event(%struct.input_dev* %219, i32 %220, i32 %221, i32 %228)
  %230 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %231 = load i32, i32* @EV_KEY, align 4
  %232 = load i32, i32* @BTN_GEAR_DOWN, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @BIT(i32 7)
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i32
  %240 = call i32 @input_event(%struct.input_dev* %230, i32 %231, i32 %232, i32 %239)
  %241 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %242 = load i32, i32* @EV_KEY, align 4
  %243 = load i32, i32* @BTN_GEAR_UP, align 4
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @BIT(i32 0)
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  %248 = xor i1 %247, true
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 @input_event(%struct.input_dev* %241, i32 %242, i32 %243, i32 %250)
  %252 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %253 = load i32, i32* @EV_KEY, align 4
  %254 = load i32, i32* @BTN_THUMBR, align 4
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @BIT(i32 2)
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  %259 = xor i1 %258, true
  %260 = xor i1 %259, true
  %261 = zext i1 %260 to i32
  %262 = call i32 @input_event(%struct.input_dev* %252, i32 %253, i32 %254, i32 %261)
  %263 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %264 = load i32, i32* @EV_KEY, align 4
  %265 = load i32, i32* @BTN_THUMBL, align 4
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @BIT(i32 6)
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = xor i1 %270, true
  %272 = zext i1 %271 to i32
  %273 = call i32 @input_event(%struct.input_dev* %263, i32 %264, i32 %265, i32 %272)
  %274 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %275 = load i32, i32* @EV_KEY, align 4
  %276 = load i32, i32* @BTN_THUMB, align 4
  %277 = load i32, i32* %12, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %95
  %280 = load i32, i32* %13, align 4
  %281 = icmp ne i32 %280, 0
  br label %282

282:                                              ; preds = %279, %95
  %283 = phi i1 [ true, %95 ], [ %281, %279 ]
  %284 = zext i1 %283 to i32
  %285 = call i32 @input_event(%struct.input_dev* %274, i32 %275, i32 %276, i32 %284)
  %286 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %287 = load i32, i32* @EV_KEY, align 4
  %288 = load i32, i32* @BTN_THUMB2, align 4
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @BIT(i32 4)
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  %293 = xor i1 %292, true
  %294 = xor i1 %293, true
  %295 = zext i1 %294 to i32
  %296 = call i32 @input_event(%struct.input_dev* %286, i32 %287, i32 %288, i32 %295)
  %297 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %298 = load i32, i32* @EV_KEY, align 4
  %299 = load i32, i32* @BTN_DPAD_UP, align 4
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @BIT(i32 0)
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = xor i1 %304, true
  %306 = zext i1 %305 to i32
  %307 = call i32 @input_event(%struct.input_dev* %297, i32 %298, i32 %299, i32 %306)
  %308 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %309 = load i32, i32* @EV_KEY, align 4
  %310 = load i32, i32* @BTN_DPAD_RIGHT, align 4
  %311 = load i32, i32* %8, align 4
  %312 = call i32 @BIT(i32 1)
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  %315 = xor i1 %314, true
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  %318 = call i32 @input_event(%struct.input_dev* %308, i32 %309, i32 %310, i32 %317)
  %319 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %320 = load i32, i32* @EV_KEY, align 4
  %321 = load i32, i32* @BTN_DPAD_LEFT, align 4
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @BIT(i32 2)
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  %326 = xor i1 %325, true
  %327 = xor i1 %326, true
  %328 = zext i1 %327 to i32
  %329 = call i32 @input_event(%struct.input_dev* %319, i32 %320, i32 %321, i32 %328)
  %330 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %331 = load i32, i32* @EV_KEY, align 4
  %332 = load i32, i32* @BTN_DPAD_DOWN, align 4
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @BIT(i32 3)
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  %337 = xor i1 %336, true
  %338 = xor i1 %337, true
  %339 = zext i1 %338 to i32
  %340 = call i32 @input_event(%struct.input_dev* %330, i32 %331, i32 %332, i32 %339)
  %341 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %342 = call i32 @input_sync(%struct.input_dev* %341)
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @steam_le16(i32*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
