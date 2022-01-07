; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad360_process_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_xpad.c_xpad360_process_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xpad = type { i32, i64 }
%struct.input_dev = type { i32 }

@MAP_DPAD_TO_BUTTONS = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY1 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY2 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY3 = common dso_local global i32 0, align 4
@BTN_TRIGGER_HAPPY4 = common dso_local global i32 0, align 4
@XTYPE_XBOX360W = common dso_local global i64 0, align 8
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@BTN_X = common dso_local global i32 0, align 4
@BTN_Y = common dso_local global i32 0, align 4
@BTN_TL = common dso_local global i32 0, align 4
@BTN_TR = common dso_local global i32 0, align 4
@BTN_MODE = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xpad*, %struct.input_dev*, i32, i8*)* @xpad360_process_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpad360_process_packet(%struct.usb_xpad* %0, %struct.input_dev* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.usb_xpad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.usb_xpad* %0, %struct.usb_xpad** %5, align 8
  store %struct.input_dev* %1, %struct.input_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %300

15:                                               ; preds = %4
  %16 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %17 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %59

22:                                               ; preds = %15
  %23 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %24 = load i32, i32* @BTN_TRIGGER_HAPPY1, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 2
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = call i32 @input_report_key(%struct.input_dev* %23, i32 %24, i8 zeroext %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %33 = load i32, i32* @BTN_TRIGGER_HAPPY2, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 8
  %39 = trunc i32 %38 to i8
  %40 = call i32 @input_report_key(%struct.input_dev* %32, i32 %33, i8 zeroext %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %42 = load i32, i32* @BTN_TRIGGER_HAPPY3, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 1
  %48 = trunc i32 %47 to i8
  %49 = call i32 @input_report_key(%struct.input_dev* %41, i32 %42, i8 zeroext %48)
  %50 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %51 = load i32, i32* @BTN_TRIGGER_HAPPY4, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 2
  %57 = trunc i32 %56 to i8
  %58 = call i32 @input_report_key(%struct.input_dev* %50, i32 %51, i8 zeroext %57)
  br label %59

59:                                               ; preds = %22, %15
  %60 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %61 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MAP_DPAD_TO_BUTTONS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %68 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @XTYPE_XBOX360W, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %119

72:                                               ; preds = %66, %59
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = load i32, i32* @ABS_HAT0X, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 8
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = sub nsw i32 %83, %92
  %94 = trunc i32 %93 to i8
  %95 = call i32 @input_report_abs(%struct.input_dev* %73, i32 %74, i8 zeroext %94)
  %96 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %97 = load i32, i32* @ABS_HAT0Y, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %101, 2
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 2
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = sub nsw i32 %106, %115
  %117 = trunc i32 %116 to i8
  %118 = call i32 @input_report_abs(%struct.input_dev* %96, i32 %97, i8 zeroext %117)
  br label %119

119:                                              ; preds = %72, %66
  %120 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %121 = load i32, i32* @BTN_START, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = and i32 %125, 16
  %127 = trunc i32 %126 to i8
  %128 = call i32 @input_report_key(%struct.input_dev* %120, i32 %121, i8 zeroext %127)
  %129 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %130 = load i32, i32* @BTN_SELECT, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 32
  %136 = trunc i32 %135 to i8
  %137 = call i32 @input_report_key(%struct.input_dev* %129, i32 %130, i8 zeroext %136)
  %138 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %139 = load i32, i32* @BTN_THUMBL, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = and i32 %143, 64
  %145 = trunc i32 %144 to i8
  %146 = call i32 @input_report_key(%struct.input_dev* %138, i32 %139, i8 zeroext %145)
  %147 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %148 = load i32, i32* @BTN_THUMBR, align 4
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 128
  %154 = trunc i32 %153 to i8
  %155 = call i32 @input_report_key(%struct.input_dev* %147, i32 %148, i8 zeroext %154)
  %156 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %157 = load i32, i32* @BTN_A, align 4
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = and i32 %161, 16
  %163 = trunc i32 %162 to i8
  %164 = call i32 @input_report_key(%struct.input_dev* %156, i32 %157, i8 zeroext %163)
  %165 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %166 = load i32, i32* @BTN_B, align 4
  %167 = load i8*, i8** %8, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = and i32 %170, 32
  %172 = trunc i32 %171 to i8
  %173 = call i32 @input_report_key(%struct.input_dev* %165, i32 %166, i8 zeroext %172)
  %174 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %175 = load i32, i32* @BTN_X, align 4
  %176 = load i8*, i8** %8, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 3
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 %179, 64
  %181 = trunc i32 %180 to i8
  %182 = call i32 @input_report_key(%struct.input_dev* %174, i32 %175, i8 zeroext %181)
  %183 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %184 = load i32, i32* @BTN_Y, align 4
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 3
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = and i32 %188, 128
  %190 = trunc i32 %189 to i8
  %191 = call i32 @input_report_key(%struct.input_dev* %183, i32 %184, i8 zeroext %190)
  %192 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %193 = load i32, i32* @BTN_TL, align 4
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 3
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = and i32 %197, 1
  %199 = trunc i32 %198 to i8
  %200 = call i32 @input_report_key(%struct.input_dev* %192, i32 %193, i8 zeroext %199)
  %201 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %202 = load i32, i32* @BTN_TR, align 4
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 3
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = and i32 %206, 2
  %208 = trunc i32 %207 to i8
  %209 = call i32 @input_report_key(%struct.input_dev* %201, i32 %202, i8 zeroext %208)
  %210 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %211 = load i32, i32* @BTN_MODE, align 4
  %212 = load i8*, i8** %8, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 3
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = and i32 %215, 4
  %217 = trunc i32 %216 to i8
  %218 = call i32 @input_report_key(%struct.input_dev* %210, i32 %211, i8 zeroext %217)
  %219 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %220 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @MAP_STICKS_TO_NULL, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %264, label %225

225:                                              ; preds = %119
  %226 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %227 = load i32, i32* @ABS_X, align 4
  %228 = load i8*, i8** %8, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 6
  %230 = bitcast i8* %229 to i32*
  %231 = call i64 @le16_to_cpup(i32* %230)
  %232 = trunc i64 %231 to i8
  %233 = call i32 @input_report_abs(%struct.input_dev* %226, i32 %227, i8 zeroext %232)
  %234 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %235 = load i32, i32* @ABS_Y, align 4
  %236 = load i8*, i8** %8, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 8
  %238 = bitcast i8* %237 to i32*
  %239 = call i64 @le16_to_cpup(i32* %238)
  %240 = trunc i64 %239 to i8
  %241 = zext i8 %240 to i32
  %242 = xor i32 %241, -1
  %243 = trunc i32 %242 to i8
  %244 = call i32 @input_report_abs(%struct.input_dev* %234, i32 %235, i8 zeroext %243)
  %245 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %246 = load i32, i32* @ABS_RX, align 4
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 10
  %249 = bitcast i8* %248 to i32*
  %250 = call i64 @le16_to_cpup(i32* %249)
  %251 = trunc i64 %250 to i8
  %252 = call i32 @input_report_abs(%struct.input_dev* %245, i32 %246, i8 zeroext %251)
  %253 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %254 = load i32, i32* @ABS_RY, align 4
  %255 = load i8*, i8** %8, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 12
  %257 = bitcast i8* %256 to i32*
  %258 = call i64 @le16_to_cpup(i32* %257)
  %259 = trunc i64 %258 to i8
  %260 = zext i8 %259 to i32
  %261 = xor i32 %260, -1
  %262 = trunc i32 %261 to i8
  %263 = call i32 @input_report_abs(%struct.input_dev* %253, i32 %254, i8 zeroext %262)
  br label %264

264:                                              ; preds = %225, %119
  %265 = load %struct.usb_xpad*, %struct.usb_xpad** %5, align 8
  %266 = getelementptr inbounds %struct.usb_xpad, %struct.usb_xpad* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @MAP_TRIGGERS_TO_BUTTONS, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %264
  %272 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %273 = load i32, i32* @BTN_TL2, align 4
  %274 = load i8*, i8** %8, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 4
  %276 = load i8, i8* %275, align 1
  %277 = call i32 @input_report_key(%struct.input_dev* %272, i32 %273, i8 zeroext %276)
  %278 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %279 = load i32, i32* @BTN_TR2, align 4
  %280 = load i8*, i8** %8, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 5
  %282 = load i8, i8* %281, align 1
  %283 = call i32 @input_report_key(%struct.input_dev* %278, i32 %279, i8 zeroext %282)
  br label %297

284:                                              ; preds = %264
  %285 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %286 = load i32, i32* @ABS_Z, align 4
  %287 = load i8*, i8** %8, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 4
  %289 = load i8, i8* %288, align 1
  %290 = call i32 @input_report_abs(%struct.input_dev* %285, i32 %286, i8 zeroext %289)
  %291 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %292 = load i32, i32* @ABS_RZ, align 4
  %293 = load i8*, i8** %8, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 5
  %295 = load i8, i8* %294, align 1
  %296 = call i32 @input_report_abs(%struct.input_dev* %291, i32 %292, i8 zeroext %295)
  br label %297

297:                                              ; preds = %284, %271
  %298 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %299 = call i32 @input_sync(%struct.input_dev* %298)
  br label %300

300:                                              ; preds = %297, %14
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i64 @le16_to_cpup(i32*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
