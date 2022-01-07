; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_hid_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-input.c_hidinput_hid_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32, i32, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i64, i64, i64, i32, i32, i32, i64 }

@EV_PWR = common dso_local global i64 0, align 8
@hid_hat_to_axis = common dso_local global %struct.TYPE_4__* null, align 8
@HID_UP_DIGITIZER = common dso_local global i32 0, align 4
@HID_QUIRK_INVERT = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@HID_QUIRK_NOTOUCH = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i32 0, align 4
@HID_UP_PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Maximum Effects - %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PID Pool Report\0A\00", align 1
@EV_REL = common dso_local global i64 0, align 8
@REL_WHEEL_HI_RES = common dso_local global i32 0, align 4
@REL_HWHEEL_HI_RES = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i64 0, align 8
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@ABS_VOLUME = common dso_local global i32 0, align 4
@KEY_VOLUMEUP = common dso_local global i32 0, align 4
@KEY_VOLUMEDOWN = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@HID_MAIN_ITEM_NULL_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Ignoring out-of-range value %x\0A\00", align 1
@HID_MAIN_ITEM_BUFFERED_BYTE = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i64 0, align 8
@MSC_SCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hidinput_hid_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 0
  store i32* %18, i32** %10, align 8
  %19 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %20 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %475

24:                                               ; preds = %4
  %25 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %26 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EV_PWR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @hidinput_update_battery(%struct.hid_device* %31, i32 %32)
  br label %475

34:                                               ; preds = %24
  %35 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %36 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %35, i32 0, i32 5
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %475

40:                                               ; preds = %34
  %41 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %42 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %41, i32 0, i32 5
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.input_dev*, %struct.input_dev** %44, align 8
  store %struct.input_dev* %45, %struct.input_dev** %9, align 8
  %46 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %50 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %40
  %54 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %55 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %120

58:                                               ; preds = %53, %40
  %59 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %60 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %68 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = mul nsw i64 %70, 8
  %72 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %73 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %76 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = add nsw i64 %78, 1
  %80 = sdiv i64 %71, %79
  %81 = add nsw i64 %80, 1
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %64, %58
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %92 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %93 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %96 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hid_hat_to_axis, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @input_event(%struct.input_dev* %91, i64 %94, i32 %97, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %106 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %107 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %110 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hid_hat_to_axis, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @input_event(%struct.input_dev* %105, i64 %108, i32 %112, i32 %118)
  br label %475

120:                                              ; preds = %53
  %121 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %122 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @HID_UP_DIGITIZER, align 4
  %125 = or i32 %124, 60
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %144

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @HID_QUIRK_INVERT, align 4
  %134 = or i32 %132, %133
  br label %141

135:                                              ; preds = %127
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @HID_QUIRK_INVERT, align 4
  %139 = xor i32 %138, -1
  %140 = and i32 %137, %139
  br label %141

141:                                              ; preds = %135, %130
  %142 = phi i32 [ %134, %130 ], [ %140, %135 ]
  %143 = load i32*, i32** %10, align 8
  store i32 %142, i32* %143, align 4
  br label %475

144:                                              ; preds = %120
  %145 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %146 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @HID_UP_DIGITIZER, align 4
  %149 = or i32 %148, 50
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %144
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %151
  %155 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %156 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %157 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @HID_QUIRK_INVERT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %170

166:                                              ; preds = %154
  %167 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %168 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  br label %170

170:                                              ; preds = %166, %164
  %171 = phi i32 [ %165, %164 ], [ %169, %166 ]
  %172 = call i32 @input_event(%struct.input_dev* %155, i64 %158, i32 %171, i32 1)
  br label %475

173:                                              ; preds = %151
  %174 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %175 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %176 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %179 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @input_event(%struct.input_dev* %174, i64 %177, i32 %180, i32 0)
  %182 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %183 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %184 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %187 = call i32 @input_event(%struct.input_dev* %182, i64 %185, i32 %186, i32 0)
  br label %475

188:                                              ; preds = %144
  %189 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %190 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @HID_UP_DIGITIZER, align 4
  %193 = or i32 %192, 48
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %195, label %221

195:                                              ; preds = %188
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @HID_QUIRK_NOTOUCH, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %221

201:                                              ; preds = %195
  %202 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %203 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %12, align 4
  %205 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %206 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %13, align 4
  %208 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %209 = load i64, i64* @EV_KEY, align 8
  %210 = load i32, i32* @BTN_TOUCH, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %12, align 4
  %215 = sub nsw i32 %213, %214
  %216 = ashr i32 %215, 3
  %217 = add nsw i32 %212, %216
  %218 = icmp sgt i32 %211, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @input_event(%struct.input_dev* %208, i64 %209, i32 %210, i32 %219)
  br label %221

221:                                              ; preds = %201, %195, %188
  %222 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %223 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = load i32, i32* @HID_UP_PID, align 4
  %227 = sext i32 %226 to i64
  %228 = or i64 %227, 131
  %229 = icmp eq i64 %225, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %221
  %231 = load i32, i32* %8, align 4
  %232 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %231)
  br label %475

233:                                              ; preds = %221
  %234 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %235 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = load i32, i32* @HID_UP_PID, align 4
  %239 = sext i32 %238 to i64
  %240 = or i64 %239, 127
  %241 = icmp eq i64 %237, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %233
  %243 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %475

244:                                              ; preds = %233
  %245 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %246 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @EV_KEY, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %244
  %251 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %252 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  br label %475

256:                                              ; preds = %250, %244
  %257 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %258 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @EV_REL, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %279

262:                                              ; preds = %256
  %263 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %264 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @REL_WHEEL_HI_RES, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %274, label %268

268:                                              ; preds = %262
  %269 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %270 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @REL_HWHEEL_HI_RES, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %268, %262
  %275 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %276 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @hidinput_handle_scroll(%struct.hid_usage* %275, %struct.input_dev* %276, i32 %277)
  br label %475

279:                                              ; preds = %268, %256
  %280 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %281 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @EV_ABS, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %330

285:                                              ; preds = %279
  %286 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %287 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %330

292:                                              ; preds = %285
  %293 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %294 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @ABS_VOLUME, align 4
  %297 = icmp eq i32 %295, %296
  br i1 %297, label %298, label %330

298:                                              ; preds = %292
  %299 = load i32, i32* %8, align 4
  %300 = call i32 @abs(i32 %299) #3
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %8, align 4
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = load i32, i32* @KEY_VOLUMEUP, align 4
  br label %307

305:                                              ; preds = %298
  %306 = load i32, i32* @KEY_VOLUMEDOWN, align 4
  br label %307

307:                                              ; preds = %305, %303
  %308 = phi i32 [ %304, %303 ], [ %306, %305 ]
  store i32 %308, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %309

309:                                              ; preds = %326, %307
  %310 = load i32, i32* %16, align 4
  %311 = load i32, i32* %14, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %329

313:                                              ; preds = %309
  %314 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %315 = load i64, i64* @EV_KEY, align 8
  %316 = load i32, i32* %15, align 4
  %317 = call i32 @input_event(%struct.input_dev* %314, i64 %315, i32 %316, i32 1)
  %318 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %319 = call i32 @input_sync(%struct.input_dev* %318)
  %320 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %321 = load i64, i64* @EV_KEY, align 8
  %322 = load i32, i32* %15, align 4
  %323 = call i32 @input_event(%struct.input_dev* %320, i64 %321, i32 %322, i32 0)
  %324 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %325 = call i32 @input_sync(%struct.input_dev* %324)
  br label %326

326:                                              ; preds = %313
  %327 = load i32, i32* %16, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %16, align 4
  br label %309

329:                                              ; preds = %309
  br label %475

330:                                              ; preds = %292, %285, %279
  %331 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %332 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %376

337:                                              ; preds = %330
  %338 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %339 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %342 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp slt i32 %340, %343
  br i1 %344, label %345, label %376

345:                                              ; preds = %337
  %346 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %347 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @HID_MAIN_ITEM_NULL_STATE, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %367

352:                                              ; preds = %345
  %353 = load i32, i32* %8, align 4
  %354 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %355 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %364, label %358

358:                                              ; preds = %352
  %359 = load i32, i32* %8, align 4
  %360 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %361 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = icmp sgt i32 %359, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %358, %352
  %365 = load i32, i32* %8, align 4
  %366 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %365)
  br label %475

367:                                              ; preds = %358, %345
  %368 = load i32, i32* %8, align 4
  %369 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %370 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %373 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @clamp(i32 %368, i32 %371, i32 %374)
  store i32 %375, i32* %8, align 4
  br label %376

376:                                              ; preds = %367, %337, %330
  %377 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %378 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %381 = load i32, i32* @HID_MAIN_ITEM_BUFFERED_BYTE, align 4
  %382 = or i32 %380, %381
  %383 = and i32 %379, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %412, label %385

385:                                              ; preds = %376
  %386 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %387 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %390 = and i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %412

392:                                              ; preds = %385
  %393 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %394 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %393, i32 0, i32 6
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %397 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %396, i32 0, i32 3
  %398 = load i64, i64* %397, align 8
  %399 = icmp ult i64 %395, %398
  br i1 %399, label %400, label %412

400:                                              ; preds = %392
  %401 = load i32, i32* %8, align 4
  %402 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %403 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %402, i32 0, i32 4
  %404 = load i32*, i32** %403, align 8
  %405 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %406 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %405, i32 0, i32 6
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = icmp eq i32 %401, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %400
  br label %475

412:                                              ; preds = %400, %392, %385, %376
  %413 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %414 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = load i64, i64* @EV_KEY, align 8
  %417 = icmp eq i64 %415, %416
  br i1 %417, label %418, label %439

418:                                              ; preds = %412
  %419 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %420 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %423 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @test_bit(i32 %421, i32 %424)
  %426 = icmp ne i32 %425, 0
  %427 = xor i1 %426, true
  %428 = zext i1 %427 to i32
  %429 = load i32, i32* %8, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %439

431:                                              ; preds = %418
  %432 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %433 = load i64, i64* @EV_MSC, align 8
  %434 = load i32, i32* @MSC_SCAN, align 4
  %435 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %436 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @input_event(%struct.input_dev* %432, i64 %433, i32 %434, i32 %437)
  br label %439

439:                                              ; preds = %431, %418, %412
  %440 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %441 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %442 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %445 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %8, align 4
  %448 = call i32 @input_event(%struct.input_dev* %440, i64 %443, i32 %446, i32 %447)
  %449 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %450 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %475

455:                                              ; preds = %439
  %456 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %457 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @EV_KEY, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %475

461:                                              ; preds = %455
  %462 = load i32, i32* %8, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %475

464:                                              ; preds = %461
  %465 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %466 = call i32 @input_sync(%struct.input_dev* %465)
  %467 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %468 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %469 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %472 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 4
  %474 = call i32 @input_event(%struct.input_dev* %467, i64 %470, i32 %473, i32 0)
  br label %475

475:                                              ; preds = %23, %30, %39, %90, %141, %170, %173, %230, %242, %255, %274, %329, %364, %411, %464, %461, %455, %439
  ret void
}

declare dso_local i32 @hidinput_update_battery(%struct.hid_device*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i64, i32, i32) #1

declare dso_local i32 @dbg_hid(i8*, ...) #1

declare dso_local i32 @hidinput_handle_scroll(%struct.hid_usage*, %struct.input_dev*, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
