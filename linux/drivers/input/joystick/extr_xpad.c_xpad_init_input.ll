; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_init_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad_init_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i64, i32, i32, %struct.input_dev*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.input_dev = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@xpad_open = common dso_local global i32 0, align 4
@xpad_close = common dso_local global i32 0, align 4
@MAP_STICKS_TO_NULL = common dso_local global i32 0, align 4
@xpad_abs = common dso_local global i64* null, align 8
@xpad_common_btn = common dso_local global i64* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@XTYPE_XBOX360 = common dso_local global i64 0, align 8
@XTYPE_XBOXONE = common dso_local global i64 0, align 8
@xpad360_btn = common dso_local global i64* null, align 8
@xpad_btn = common dso_local global i64* null, align 8
@MAP_DPAD_TO_BUTTONS = common dso_local global i32 0, align 4
@xpad_btn_pad = common dso_local global i64* null, align 8
@xpad_abs_pad = common dso_local global i64* null, align 8
@MAP_TRIGGERS_TO_BUTTONS = common dso_local global i32 0, align 4
@xpad_btn_triggers = common dso_local global i64* null, align 8
@xpad_abs_triggers = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_xpad*)* @xpad_init_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpad_init_input(%struct.usb_xpad* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_xpad*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_xpad* %0, %struct.usb_xpad** %3, align 8
  %7 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %7, %struct.input_dev** %4, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %9 = icmp ne %struct.input_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %314

13:                                               ; preds = %1
  %14 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %15 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %16 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %15, i32 0, i32 3
  store %struct.input_dev* %14, %struct.input_dev** %16, align 8
  %17 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %18 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %23 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %28 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 3
  %32 = call i32 @usb_to_input_id(i32 %29, %struct.TYPE_6__* %31)
  %33 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %34 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XTYPE_XBOX360W, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %13
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 673, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %13
  %43 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %44 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %51 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %52 = call i32 @input_set_drvdata(%struct.input_dev* %50, %struct.usb_xpad* %51)
  %53 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %54 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XTYPE_XBOX360W, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %42
  %59 = load i32, i32* @xpad_open, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @xpad_close, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %42
  %66 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %67 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MAP_STICKS_TO_NULL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %88, %72
  %74 = load i64*, i64** @xpad_abs, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = load i64*, i64** @xpad_abs, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @xpad_set_up_abs(%struct.input_dev* %81, i64 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %73

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91, %65
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %109, %92
  %94 = load i64*, i64** @xpad_common_btn, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = load i32, i32* @EV_KEY, align 4
  %103 = load i64*, i64** @xpad_common_btn, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @input_set_capability(%struct.input_dev* %101, i32 %102, i64 %107)
  br label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %93

112:                                              ; preds = %93
  %113 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %114 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @XTYPE_XBOX360, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %130, label %118

118:                                              ; preds = %112
  %119 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %120 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @XTYPE_XBOX360W, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %126 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @XTYPE_XBOXONE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %124, %118, %112
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %147, %130
  %132 = load i64*, i64** @xpad360_btn, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %140 = load i32, i32* @EV_KEY, align 4
  %141 = load i64*, i64** @xpad360_btn, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @input_set_capability(%struct.input_dev* %139, i32 %140, i64 %145)
  br label %147

147:                                              ; preds = %138
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %131

150:                                              ; preds = %131
  br label %172

151:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %168, %151
  %153 = load i64*, i64** @xpad_btn, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %152
  %160 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %161 = load i32, i32* @EV_KEY, align 4
  %162 = load i64*, i64** @xpad_btn, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @input_set_capability(%struct.input_dev* %160, i32 %161, i64 %166)
  br label %168

168:                                              ; preds = %159
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %152

171:                                              ; preds = %152
  br label %172

172:                                              ; preds = %171, %150
  %173 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %174 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %196, %179
  %181 = load i64*, i64** @xpad_btn_pad, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = icmp sge i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %180
  %188 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %189 = load i32, i32* @EV_KEY, align 4
  %190 = load i64*, i64** @xpad_btn_pad, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @input_set_capability(%struct.input_dev* %188, i32 %189, i64 %194)
  br label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %180

199:                                              ; preds = %180
  br label %200

200:                                              ; preds = %199, %172
  %201 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %202 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %200
  %208 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %209 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @XTYPE_XBOX360W, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %233

213:                                              ; preds = %207, %200
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %229, %213
  %215 = load i64*, i64** @xpad_abs_pad, align 8
  %216 = load i32, i32* %5, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = icmp sge i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %214
  %222 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %223 = load i64*, i64** @xpad_abs_pad, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @xpad_set_up_abs(%struct.input_dev* %222, i64 %227)
  br label %229

229:                                              ; preds = %221
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %214

232:                                              ; preds = %214
  br label %233

233:                                              ; preds = %232, %207
  %234 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %235 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @MAP_TRIGGERS_TO_BUTTONS, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %261

240:                                              ; preds = %233
  store i32 0, i32* %5, align 4
  br label %241

241:                                              ; preds = %257, %240
  %242 = load i64*, i64** @xpad_btn_triggers, align 8
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = icmp sge i64 %246, 0
  br i1 %247, label %248, label %260

248:                                              ; preds = %241
  %249 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %250 = load i32, i32* @EV_KEY, align 4
  %251 = load i64*, i64** @xpad_btn_triggers, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i64, i64* %251, i64 %253
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @input_set_capability(%struct.input_dev* %249, i32 %250, i64 %255)
  br label %257

257:                                              ; preds = %248
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %241

260:                                              ; preds = %241
  br label %281

261:                                              ; preds = %233
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %277, %261
  %263 = load i64*, i64** @xpad_abs_triggers, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = icmp sge i64 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %262
  %270 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %271 = load i64*, i64** @xpad_abs_triggers, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = call i32 @xpad_set_up_abs(%struct.input_dev* %270, i64 %275)
  br label %277

277:                                              ; preds = %269
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %5, align 4
  br label %262

280:                                              ; preds = %262
  br label %281

281:                                              ; preds = %280, %260
  %282 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %283 = call i32 @xpad_init_ff(%struct.usb_xpad* %282)
  store i32 %283, i32* %6, align 4
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  br label %310

287:                                              ; preds = %281
  %288 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %289 = call i32 @xpad_led_probe(%struct.usb_xpad* %288)
  store i32 %289, i32* %6, align 4
  %290 = load i32, i32* %6, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %287
  br label %307

293:                                              ; preds = %287
  %294 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %295 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %294, i32 0, i32 3
  %296 = load %struct.input_dev*, %struct.input_dev** %295, align 8
  %297 = call i32 @input_register_device(%struct.input_dev* %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  br label %304

301:                                              ; preds = %293
  %302 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %303 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %302, i32 0, i32 2
  store i32 1, i32* %303, align 4
  store i32 0, i32* %2, align 4
  br label %314

304:                                              ; preds = %300
  %305 = load %struct.usb_xpad*, %struct.usb_xpad** %3, align 8
  %306 = call i32 @xpad_led_disconnect(%struct.usb_xpad* %305)
  br label %307

307:                                              ; preds = %304, %292
  %308 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %309 = call i32 @input_ff_destroy(%struct.input_dev* %308)
  br label %310

310:                                              ; preds = %307, %286
  %311 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %312 = call i32 @input_free_device(%struct.input_dev* %311)
  %313 = load i32, i32* %6, align 4
  store i32 %313, i32* %2, align 4
  br label %314

314:                                              ; preds = %310, %301, %10
  %315 = load i32, i32* %2, align 4
  ret i32 %315
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @usb_to_input_id(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.usb_xpad*) #1

declare dso_local i32 @xpad_set_up_abs(%struct.input_dev*, i64) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @xpad_init_ff(%struct.usb_xpad*) #1

declare dso_local i32 @xpad_led_probe(%struct.usb_xpad*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @xpad_led_disconnect(%struct.usb_xpad*) #1

declare dso_local i32 @input_ff_destroy(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
