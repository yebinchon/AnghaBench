; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-udraw-ps3.c_udraw_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-udraw-ps3.c_udraw_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.udraw = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TOUCH_NONE = common dso_local global i32 0, align 4
@TOUCH_PEN = common dso_local global i32 0, align 4
@TOUCH_FINGER = common dso_local global i32 0, align 4
@TOUCH_TWOFINGER = common dso_local global i32 0, align 4
@BTN_WEST = common dso_local global i32 0, align 4
@BTN_SOUTH = common dso_local global i32 0, align 4
@BTN_EAST = common dso_local global i32 0, align 4
@BTN_NORTH = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_MODE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@PRESSURE_OFFSET = common dso_local global i64 0, align 8
@MAX_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@AXIS_X = common dso_local global i32 0, align 4
@AXIS_Y = common dso_local global i32 0, align 4
@AXIS_Z = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @udraw_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udraw_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.udraw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %17 = call %struct.udraw* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.udraw* %17, %struct.udraw** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 27
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %437

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 11
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @TOUCH_NONE, align 4
  store i32 %27, i32* %11, align 4
  br label %46

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 11
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @TOUCH_PEN, align 4
  store i32 %34, i32* %11, align 4
  br label %45

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 11
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @TOUCH_FINGER, align 4
  store i32 %41, i32* %11, align 4
  br label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @TOUCH_TWOFINGER, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.udraw*, %struct.udraw** %10, align 8
  %48 = getelementptr inbounds %struct.udraw, %struct.udraw* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BTN_WEST, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = call i32 @input_report_key(i32 %49, i32 %50, i32 %54)
  %56 = load %struct.udraw*, %struct.udraw** %10, align 8
  %57 = getelementptr inbounds %struct.udraw, %struct.udraw* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BTN_SOUTH, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @input_report_key(i32 %58, i32 %59, i32 %67)
  %69 = load %struct.udraw*, %struct.udraw** %10, align 8
  %70 = getelementptr inbounds %struct.udraw, %struct.udraw* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BTN_EAST, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @input_report_key(i32 %71, i32 %72, i32 %80)
  %82 = load %struct.udraw*, %struct.udraw** %10, align 8
  %83 = getelementptr inbounds %struct.udraw, %struct.udraw* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BTN_NORTH, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @input_report_key(i32 %84, i32 %85, i32 %93)
  %95 = load %struct.udraw*, %struct.udraw** %10, align 8
  %96 = getelementptr inbounds %struct.udraw, %struct.udraw* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BTN_SELECT, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @input_report_key(i32 %97, i32 %98, i32 %106)
  %108 = load %struct.udraw*, %struct.udraw** %10, align 8
  %109 = getelementptr inbounds %struct.udraw, %struct.udraw* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @BTN_START, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 2
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @input_report_key(i32 %110, i32 %111, i32 %119)
  %121 = load %struct.udraw*, %struct.udraw** %10, align 8
  %122 = getelementptr inbounds %struct.udraw, %struct.udraw* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @BTN_MODE, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 16
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @input_report_key(i32 %123, i32 %124, i32 %132)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  switch i32 %136, label %145 [
    i32 0, label %137
    i32 1, label %138
    i32 2, label %139
    i32 3, label %140
    i32 4, label %141
    i32 5, label %142
    i32 6, label %143
    i32 7, label %144
  ]

137:                                              ; preds = %46
  store i32 -127, i32* %13, align 4
  br label %146

138:                                              ; preds = %46
  store i32 -127, i32* %13, align 4
  store i32 127, i32* %12, align 4
  br label %146

139:                                              ; preds = %46
  store i32 127, i32* %12, align 4
  br label %146

140:                                              ; preds = %46
  store i32 127, i32* %13, align 4
  store i32 127, i32* %12, align 4
  br label %146

141:                                              ; preds = %46
  store i32 127, i32* %13, align 4
  br label %146

142:                                              ; preds = %46
  store i32 127, i32* %13, align 4
  store i32 -127, i32* %12, align 4
  br label %146

143:                                              ; preds = %46
  store i32 -127, i32* %12, align 4
  br label %146

144:                                              ; preds = %46
  store i32 -127, i32* %13, align 4
  store i32 -127, i32* %12, align 4
  br label %146

145:                                              ; preds = %46
  br label %146

146:                                              ; preds = %145, %144, %143, %142, %141, %140, %139, %138, %137
  %147 = load %struct.udraw*, %struct.udraw** %10, align 8
  %148 = getelementptr inbounds %struct.udraw, %struct.udraw* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ABS_X, align 4
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @input_report_abs(i32 %149, i32 %150, i32 %151)
  %153 = load %struct.udraw*, %struct.udraw** %10, align 8
  %154 = getelementptr inbounds %struct.udraw, %struct.udraw* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ABS_Y, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @input_report_abs(i32 %155, i32 %156, i32 %157)
  %159 = load %struct.udraw*, %struct.udraw** %10, align 8
  %160 = getelementptr inbounds %struct.udraw, %struct.udraw* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @input_sync(i32 %161)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @TOUCH_NONE, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %146
  %167 = load i32*, i32** %8, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 15
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 15
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load i32*, i32** %8, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 15
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %174, 256
  %176 = load i32*, i32** %8, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 17
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %175, %178
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %171, %166
  %181 = load i32*, i32** %8, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 16
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 15
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 16
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %188, 256
  %190 = load i32*, i32** %8, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 18
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %189, %192
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %185, %180
  br label %195

195:                                              ; preds = %194, %146
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* @TOUCH_FINGER, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %210

199:                                              ; preds = %195
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.udraw*, %struct.udraw** %10, align 8
  %202 = getelementptr inbounds %struct.udraw, %struct.udraw* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %13, align 4
  %204 = load %struct.udraw*, %struct.udraw** %10, align 8
  %205 = getelementptr inbounds %struct.udraw, %struct.udraw* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.udraw*, %struct.udraw** %10, align 8
  %207 = getelementptr inbounds %struct.udraw, %struct.udraw* %206, i32 0, i32 2
  store i32 -1, i32* %207, align 4
  %208 = load %struct.udraw*, %struct.udraw** %10, align 8
  %209 = getelementptr inbounds %struct.udraw, %struct.udraw* %208, i32 0, i32 3
  store i32 -1, i32* %209, align 4
  br label %253

210:                                              ; preds = %195
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* @TOUCH_TWOFINGER, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %252

214:                                              ; preds = %210
  %215 = load %struct.udraw*, %struct.udraw** %10, align 8
  %216 = getelementptr inbounds %struct.udraw, %struct.udraw* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %232

219:                                              ; preds = %214
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.udraw*, %struct.udraw** %10, align 8
  %222 = getelementptr inbounds %struct.udraw, %struct.udraw* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.udraw*, %struct.udraw** %10, align 8
  %225 = getelementptr inbounds %struct.udraw, %struct.udraw* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 4
  %226 = load %struct.udraw*, %struct.udraw** %10, align 8
  %227 = getelementptr inbounds %struct.udraw, %struct.udraw* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %12, align 4
  %229 = load %struct.udraw*, %struct.udraw** %10, align 8
  %230 = getelementptr inbounds %struct.udraw, %struct.udraw* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %13, align 4
  br label %251

232:                                              ; preds = %214
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.udraw*, %struct.udraw** %10, align 8
  %235 = getelementptr inbounds %struct.udraw, %struct.udraw* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.udraw*, %struct.udraw** %10, align 8
  %238 = getelementptr inbounds %struct.udraw, %struct.udraw* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %236, %239
  %241 = sub nsw i32 %233, %240
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load %struct.udraw*, %struct.udraw** %10, align 8
  %244 = getelementptr inbounds %struct.udraw, %struct.udraw* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.udraw*, %struct.udraw** %10, align 8
  %247 = getelementptr inbounds %struct.udraw, %struct.udraw* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %245, %248
  %250 = sub nsw i32 %242, %249
  store i32 %250, i32* %13, align 4
  br label %251

251:                                              ; preds = %232, %219
  br label %252

252:                                              ; preds = %251, %210
  br label %253

253:                                              ; preds = %252, %199
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @TOUCH_FINGER, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* @TOUCH_TWOFINGER, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %297

261:                                              ; preds = %257, %253
  %262 = load %struct.udraw*, %struct.udraw** %10, align 8
  %263 = getelementptr inbounds %struct.udraw, %struct.udraw* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @BTN_TOUCH, align 4
  %266 = call i32 @input_report_key(i32 %264, i32 %265, i32 1)
  %267 = load %struct.udraw*, %struct.udraw** %10, align 8
  %268 = getelementptr inbounds %struct.udraw, %struct.udraw* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @TOUCH_FINGER, align 4
  %273 = icmp eq i32 %271, %272
  %274 = zext i1 %273 to i32
  %275 = call i32 @input_report_key(i32 %269, i32 %270, i32 %274)
  %276 = load %struct.udraw*, %struct.udraw** %10, align 8
  %277 = getelementptr inbounds %struct.udraw, %struct.udraw* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @TOUCH_TWOFINGER, align 4
  %282 = icmp eq i32 %280, %281
  %283 = zext i1 %282 to i32
  %284 = call i32 @input_report_key(i32 %278, i32 %279, i32 %283)
  %285 = load %struct.udraw*, %struct.udraw** %10, align 8
  %286 = getelementptr inbounds %struct.udraw, %struct.udraw* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @ABS_X, align 4
  %289 = load i32, i32* %12, align 4
  %290 = call i32 @input_report_abs(i32 %287, i32 %288, i32 %289)
  %291 = load %struct.udraw*, %struct.udraw** %10, align 8
  %292 = getelementptr inbounds %struct.udraw, %struct.udraw* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @ABS_Y, align 4
  %295 = load i32, i32* %13, align 4
  %296 = call i32 @input_report_abs(i32 %293, i32 %294, i32 %295)
  br label %313

297:                                              ; preds = %257
  %298 = load %struct.udraw*, %struct.udraw** %10, align 8
  %299 = getelementptr inbounds %struct.udraw, %struct.udraw* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @BTN_TOUCH, align 4
  %302 = call i32 @input_report_key(i32 %300, i32 %301, i32 0)
  %303 = load %struct.udraw*, %struct.udraw** %10, align 8
  %304 = getelementptr inbounds %struct.udraw, %struct.udraw* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %307 = call i32 @input_report_key(i32 %305, i32 %306, i32 0)
  %308 = load %struct.udraw*, %struct.udraw** %10, align 8
  %309 = getelementptr inbounds %struct.udraw, %struct.udraw* %308, i32 0, i32 6
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %312 = call i32 @input_report_key(i32 %310, i32 %311, i32 0)
  br label %313

313:                                              ; preds = %297, %261
  %314 = load %struct.udraw*, %struct.udraw** %10, align 8
  %315 = getelementptr inbounds %struct.udraw, %struct.udraw* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @input_sync(i32 %316)
  %318 = load i32, i32* %11, align 4
  %319 = load i32, i32* @TOUCH_PEN, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %361

321:                                              ; preds = %313
  %322 = load i32*, i32** %8, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 13
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = load i64, i64* @PRESSURE_OFFSET, align 8
  %327 = sub nsw i64 %325, %326
  %328 = load i32, i32* @MAX_PRESSURE, align 4
  %329 = call i32 @clamp(i64 %327, i32 0, i32 %328)
  store i32 %329, i32* %15, align 4
  %330 = load %struct.udraw*, %struct.udraw** %10, align 8
  %331 = getelementptr inbounds %struct.udraw, %struct.udraw* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @BTN_TOUCH, align 4
  %334 = load i32, i32* %15, align 4
  %335 = icmp ne i32 %334, 0
  %336 = zext i1 %335 to i32
  %337 = call i32 @input_report_key(i32 %332, i32 %333, i32 %336)
  %338 = load %struct.udraw*, %struct.udraw** %10, align 8
  %339 = getelementptr inbounds %struct.udraw, %struct.udraw* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @BTN_TOOL_PEN, align 4
  %342 = call i32 @input_report_key(i32 %340, i32 %341, i32 1)
  %343 = load %struct.udraw*, %struct.udraw** %10, align 8
  %344 = getelementptr inbounds %struct.udraw, %struct.udraw* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @ABS_PRESSURE, align 4
  %347 = load i32, i32* %15, align 4
  %348 = call i32 @input_report_abs(i32 %345, i32 %346, i32 %347)
  %349 = load %struct.udraw*, %struct.udraw** %10, align 8
  %350 = getelementptr inbounds %struct.udraw, %struct.udraw* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @ABS_X, align 4
  %353 = load i32, i32* %12, align 4
  %354 = call i32 @input_report_abs(i32 %351, i32 %352, i32 %353)
  %355 = load %struct.udraw*, %struct.udraw** %10, align 8
  %356 = getelementptr inbounds %struct.udraw, %struct.udraw* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @ABS_Y, align 4
  %359 = load i32, i32* %13, align 4
  %360 = call i32 @input_report_abs(i32 %357, i32 %358, i32 %359)
  br label %377

361:                                              ; preds = %313
  %362 = load %struct.udraw*, %struct.udraw** %10, align 8
  %363 = getelementptr inbounds %struct.udraw, %struct.udraw* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @BTN_TOUCH, align 4
  %366 = call i32 @input_report_key(i32 %364, i32 %365, i32 0)
  %367 = load %struct.udraw*, %struct.udraw** %10, align 8
  %368 = getelementptr inbounds %struct.udraw, %struct.udraw* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @BTN_TOOL_PEN, align 4
  %371 = call i32 @input_report_key(i32 %369, i32 %370, i32 0)
  %372 = load %struct.udraw*, %struct.udraw** %10, align 8
  %373 = getelementptr inbounds %struct.udraw, %struct.udraw* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @ABS_PRESSURE, align 4
  %376 = call i32 @input_report_abs(i32 %374, i32 %375, i32 0)
  br label %377

377:                                              ; preds = %361, %321
  %378 = load %struct.udraw*, %struct.udraw** %10, align 8
  %379 = getelementptr inbounds %struct.udraw, %struct.udraw* %378, i32 0, i32 5
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @input_sync(i32 %380)
  %382 = load i32*, i32** %8, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 19
  %384 = load i32, i32* %383, align 4
  %385 = load i32*, i32** %8, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 20
  %387 = load i32, i32* %386, align 4
  %388 = shl i32 %387, 8
  %389 = add nsw i32 %384, %388
  store i32 %389, i32* %12, align 4
  %390 = load i32, i32* %12, align 4
  %391 = load i32, i32* @AXIS_X, align 4
  %392 = call i32 @clamp_accel(i32 %390, i32 %391)
  store i32 %392, i32* %12, align 4
  %393 = load i32*, i32** %8, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 21
  %395 = load i32, i32* %394, align 4
  %396 = load i32*, i32** %8, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 22
  %398 = load i32, i32* %397, align 4
  %399 = shl i32 %398, 8
  %400 = add nsw i32 %395, %399
  store i32 %400, i32* %13, align 4
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* @AXIS_Y, align 4
  %403 = call i32 @clamp_accel(i32 %401, i32 %402)
  store i32 %403, i32* %13, align 4
  %404 = load i32*, i32** %8, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 23
  %406 = load i32, i32* %405, align 4
  %407 = load i32*, i32** %8, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 24
  %409 = load i32, i32* %408, align 4
  %410 = shl i32 %409, 8
  %411 = add nsw i32 %406, %410
  store i32 %411, i32* %14, align 4
  %412 = load i32, i32* %14, align 4
  %413 = load i32, i32* @AXIS_Z, align 4
  %414 = call i32 @clamp_accel(i32 %412, i32 %413)
  store i32 %414, i32* %14, align 4
  %415 = load %struct.udraw*, %struct.udraw** %10, align 8
  %416 = getelementptr inbounds %struct.udraw, %struct.udraw* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @ABS_X, align 4
  %419 = load i32, i32* %12, align 4
  %420 = call i32 @input_report_abs(i32 %417, i32 %418, i32 %419)
  %421 = load %struct.udraw*, %struct.udraw** %10, align 8
  %422 = getelementptr inbounds %struct.udraw, %struct.udraw* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @ABS_Y, align 4
  %425 = load i32, i32* %13, align 4
  %426 = call i32 @input_report_abs(i32 %423, i32 %424, i32 %425)
  %427 = load %struct.udraw*, %struct.udraw** %10, align 8
  %428 = getelementptr inbounds %struct.udraw, %struct.udraw* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @ABS_Z, align 4
  %431 = load i32, i32* %14, align 4
  %432 = call i32 @input_report_abs(i32 %429, i32 %430, i32 %431)
  %433 = load %struct.udraw*, %struct.udraw** %10, align 8
  %434 = getelementptr inbounds %struct.udraw, %struct.udraw* %433, i32 0, i32 4
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @input_sync(i32 %435)
  store i32 0, i32* %5, align 4
  br label %437

437:                                              ; preds = %377, %20
  %438 = load i32, i32* %5, align 4
  ret i32 %438
}

declare dso_local %struct.udraw* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @clamp(i64, i32, i32) #1

declare dso_local i32 @clamp_accel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
