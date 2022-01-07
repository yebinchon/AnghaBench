; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpadone_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpadone_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_MODE = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@MAP_DPAD_TO_BUTTONS = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY1 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY2 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY3 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY4 = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@BTN_TL = common dso_local global i32 0, align 4
@BTN_TR = common dso_local global i32 0, align 4
@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@MAP_STICKS_TO_NULL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@MAP_TRIGGERS_TO_BUTTONS = common dso_local global i32 0, align 4
@BTN_TL2 = common dso_local global i32 0, align 4
@BTN_TR2 = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*, i32, i8*)* @xpadone_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpadone_process_packet(%struct.usb_xpad* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.usb_xpad*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_dev*, align 8
  store %struct.usb_xpad* %0, %struct.usb_xpad** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %9 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %40

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 48
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @xpadone_ack_mode_report(%struct.usb_xpad* %23, i8 zeroext %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %30 = load i32, i32* @BTN_MODE, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 1
  %36 = trunc i32 %35 to i8
  %37 = call i32 @input_report_key(%struct.input_dev* %29, i32 %30, i8 zeroext %36)
  %38 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %39 = call i32 @input_sync(%struct.input_dev* %38)
  br label %319

40:                                               ; preds = %3
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 32
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %319

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = load i32, i32* @BTN_START, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = call i32 @input_report_key(%struct.input_dev* %49, i32 %50, i8 zeroext %56)
  %58 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %59 = load i32, i32* @BTN_SELECT, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 8
  %65 = trunc i32 %64 to i8
  %66 = call i32 @input_report_key(%struct.input_dev* %58, i32 %59, i8 zeroext %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %68 = load i32, i32* @BTN_A, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, 16
  %74 = trunc i32 %73 to i8
  %75 = call i32 @input_report_key(%struct.input_dev* %67, i32 %68, i8 zeroext %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = load i32, i32* @BTN_B, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 32
  %83 = trunc i32 %82 to i8
  %84 = call i32 @input_report_key(%struct.input_dev* %76, i32 %77, i8 zeroext %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %86 = load i32, i32* @BTN_X, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 64
  %92 = trunc i32 %91 to i8
  %93 = call i32 @input_report_key(%struct.input_dev* %85, i32 %86, i8 zeroext %92)
  %94 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %95 = load i32, i32* @BTN_Y, align 4
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = and i32 %99, 128
  %101 = trunc i32 %100 to i8
  %102 = call i32 @input_report_key(%struct.input_dev* %94, i32 %95, i8 zeroext %101)
  %103 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %104 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %146

109:                                              ; preds = %48
  %110 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %111 = load i32, i32* @BTN_TRIGGER_HAPPY1, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 5
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = call i32 @input_report_key(%struct.input_dev* %110, i32 %111, i8 zeroext %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = load i32, i32* @BTN_TRIGGER_HAPPY2, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 5
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 8
  %126 = trunc i32 %125 to i8
  %127 = call i32 @input_report_key(%struct.input_dev* %119, i32 %120, i8 zeroext %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %129 = load i32, i32* @BTN_TRIGGER_HAPPY3, align 4
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 5
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = and i32 %133, 1
  %135 = trunc i32 %134 to i8
  %136 = call i32 @input_report_key(%struct.input_dev* %128, i32 %129, i8 zeroext %135)
  %137 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %138 = load i32, i32* @BTN_TRIGGER_HAPPY4, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 5
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 2
  %144 = trunc i32 %143 to i8
  %145 = call i32 @input_report_key(%struct.input_dev* %137, i32 %138, i8 zeroext %144)
  br label %193

146:                                              ; preds = %48
  %147 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %148 = load i32, i32* @ABS_HAT0X, align 4
  %149 = load i8*, i8** %6, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 5
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 8
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 5
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 4
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = sub nsw i32 %157, %166
  %168 = trunc i32 %167 to i8
  %169 = call i32 @input_report_abs(%struct.input_dev* %147, i32 %148, i8 zeroext %168)
  %170 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %171 = load i32, i32* @ABS_HAT0Y, align 4
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 5
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = and i32 %175, 2
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = xor i1 %178, true
  %180 = zext i1 %179 to i32
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 5
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = sub nsw i32 %180, %189
  %191 = trunc i32 %190 to i8
  %192 = call i32 @input_report_abs(%struct.input_dev* %170, i32 %171, i8 zeroext %191)
  br label %193

193:                                              ; preds = %146, %109
  %194 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %195 = load i32, i32* @BTN_TL, align 4
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 5
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %199, 16
  %201 = trunc i32 %200 to i8
  %202 = call i32 @input_report_key(%struct.input_dev* %194, i32 %195, i8 zeroext %201)
  %203 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %204 = load i32, i32* @BTN_TR, align 4
  %205 = load i8*, i8** %6, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 5
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = and i32 %208, 32
  %210 = trunc i32 %209 to i8
  %211 = call i32 @input_report_key(%struct.input_dev* %203, i32 %204, i8 zeroext %210)
  %212 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %213 = load i32, i32* @BTN_THUMBL, align 4
  %214 = load i8*, i8** %6, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 5
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = and i32 %217, 64
  %219 = trunc i32 %218 to i8
  %220 = call i32 @input_report_key(%struct.input_dev* %212, i32 %213, i8 zeroext %219)
  %221 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %222 = load i32, i32* @BTN_THUMBR, align 4
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 5
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = and i32 %226, 128
  %228 = trunc i32 %227 to i8
  %229 = call i32 @input_report_key(%struct.input_dev* %221, i32 %222, i8 zeroext %228)
  %230 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %231 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @MAP_STICKS_TO_NULL, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %275, label %236

236:                                              ; preds = %193
  %237 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %238 = load i32, i32* @ABS_X, align 4
  %239 = load i8*, i8** %6, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 10
  %241 = bitcast i8* %240 to i32*
  %242 = call i64 @le16_to_cpup(i32* %241)
  %243 = trunc i64 %242 to i8
  %244 = call i32 @input_report_abs(%struct.input_dev* %237, i32 %238, i8 zeroext %243)
  %245 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %246 = load i32, i32* @ABS_Y, align 4
  %247 = load i8*, i8** %6, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 12
  %249 = bitcast i8* %248 to i32*
  %250 = call i64 @le16_to_cpup(i32* %249)
  %251 = trunc i64 %250 to i8
  %252 = zext i8 %251 to i32
  %253 = xor i32 %252, -1
  %254 = trunc i32 %253 to i8
  %255 = call i32 @input_report_abs(%struct.input_dev* %245, i32 %246, i8 zeroext %254)
  %256 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %257 = load i32, i32* @ABS_RX, align 4
  %258 = load i8*, i8** %6, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 14
  %260 = bitcast i8* %259 to i32*
  %261 = call i64 @le16_to_cpup(i32* %260)
  %262 = trunc i64 %261 to i8
  %263 = call i32 @input_report_abs(%struct.input_dev* %256, i32 %257, i8 zeroext %262)
  %264 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %265 = load i32, i32* @ABS_RY, align 4
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 16
  %268 = bitcast i8* %267 to i32*
  %269 = call i64 @le16_to_cpup(i32* %268)
  %270 = trunc i64 %269 to i8
  %271 = zext i8 %270 to i32
  %272 = xor i32 %271, -1
  %273 = trunc i32 %272 to i8
  %274 = call i32 @input_report_abs(%struct.input_dev* %264, i32 %265, i8 zeroext %273)
  br label %275

275:                                              ; preds = %236, %193
  %276 = load %struct.usb_xpad*, %struct.usb_xpad** %4, align 8
  %277 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @MAP_TRIGGERS_TO_BUTTONS, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %299

282:                                              ; preds = %275
  %283 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %284 = load i32, i32* @BTN_TL2, align 4
  %285 = load i8*, i8** %6, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 6
  %287 = bitcast i8* %286 to i32*
  %288 = call i64 @le16_to_cpup(i32* %287)
  %289 = trunc i64 %288 to i8
  %290 = call i32 @input_report_key(%struct.input_dev* %283, i32 %284, i8 zeroext %289)
  %291 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %292 = load i32, i32* @BTN_TR2, align 4
  %293 = load i8*, i8** %6, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 8
  %295 = bitcast i8* %294 to i32*
  %296 = call i64 @le16_to_cpup(i32* %295)
  %297 = trunc i64 %296 to i8
  %298 = call i32 @input_report_key(%struct.input_dev* %291, i32 %292, i8 zeroext %297)
  br label %316

299:                                              ; preds = %275
  %300 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %301 = load i32, i32* @ABS_Z, align 4
  %302 = load i8*, i8** %6, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 6
  %304 = bitcast i8* %303 to i32*
  %305 = call i64 @le16_to_cpup(i32* %304)
  %306 = trunc i64 %305 to i8
  %307 = call i32 @input_report_abs(%struct.input_dev* %300, i32 %301, i8 zeroext %306)
  %308 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %309 = load i32, i32* @ABS_RZ, align 4
  %310 = load i8*, i8** %6, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 8
  %312 = bitcast i8* %311 to i32*
  %313 = call i64 @le16_to_cpup(i32* %312)
  %314 = trunc i64 %313 to i8
  %315 = call i32 @input_report_abs(%struct.input_dev* %308, i32 %309, i8 zeroext %314)
  br label %316

316:                                              ; preds = %299, %282
  %317 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %318 = call i32 @input_sync(%struct.input_dev* %317)
  br label %319

319:                                              ; preds = %316, %46, %28
  ret void
}

declare dso_local i32 @xpadone_ack_mode_report(%struct.usb_xpad*, i8 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
