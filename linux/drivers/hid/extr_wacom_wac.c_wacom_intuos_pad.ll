; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i64*, %struct.TYPE_2__*, %struct.input_dev*, %struct.wacom_features }
%struct.TYPE_2__ = type { i32, i64 }
%struct.input_dev = type { i32 }
%struct.wacom_features = type { i32, i64, i64 }

@WACOM_REPORT_INTUOSPAD = common dso_local global i8 0, align 1
@WACOM_REPORT_INTUOS5PAD = common dso_local global i8 0, align 1
@WACOM_REPORT_CINTIQPAD = common dso_local global i8 0, align 1
@INTUOS4S = common dso_local global i64 0, align 8
@INTUOS4L = common dso_local global i64 0, align 8
@DTK = common dso_local global i64 0, align 8
@WACOM_13HD = common dso_local global i64 0, align 8
@WACOM_24HD = common dso_local global i64 0, align 8
@WACOM_27QHD = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@CINTIQ_HYBRID = common dso_local global i64 0, align 8
@CINTIQ_COMPANION_2 = common dso_local global i64 0, align 8
@INTUOS5S = common dso_local global i64 0, align 8
@INTUOSPL = common dso_local global i64 0, align 8
@WACOM_21UX2 = common dso_local global i64 0, align 8
@WACOM_22HD = common dso_local global i64 0, align 8
@KEY_PROG1 = common dso_local global i64 0, align 8
@KEY_BUTTONCONFIG = common dso_local global i64 0, align 8
@KEY_ONSCREEN_KEYBOARD = common dso_local global i64 0, align 8
@KEY_CONTROLPANEL = common dso_local global i64 0, align 8
@KEY_INFO = common dso_local global i64 0, align 8
@SW_MUTE_DEVICE = common dso_local global i32 0, align 4
@ABS_RX = common dso_local global i32 0, align 4
@ABS_RY = common dso_local global i32 0, align 4
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_intuos_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_intuos_pad(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %22 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %23 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %22, i32 0, i32 4
  store %struct.wacom_features* %23, %struct.wacom_features** %4, align 8
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %25 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 3
  %29 = load %struct.input_dev*, %struct.input_dev** %28, align 8
  store %struct.input_dev* %29, %struct.input_dev** %6, align 8
  store i32 0, i32* %8, align 4
  %30 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %31 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @WACOM_REPORT_INTUOSPAD, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %57, label %40

40:                                               ; preds = %1
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @WACOM_REPORT_INTUOS5PAD, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %40
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, i8* @WACOM_REPORT_CINTIQPAD, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %671

57:                                               ; preds = %48, %40, %1
  %58 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %59 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @INTUOS4S, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %65 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INTUOS4L, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load i8*, i8** %5, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 1
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 1
  %80 = or i32 %74, %79
  store i32 %80, i32* %8, align 4
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %12, align 4
  br label %519

85:                                               ; preds = %63, %57
  %86 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %87 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @DTK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 6
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  store i32 %95, i32* %8, align 4
  br label %518

96:                                               ; preds = %85
  %97 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %98 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @WACOM_13HD, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %96
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 4
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 1
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 3
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %111, 1
  %113 = or i32 %107, %112
  store i32 %113, i32* %8, align 4
  br label %517

114:                                              ; preds = %96
  %115 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %116 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @WACOM_24HD, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %224

120:                                              ; preds = %114
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 8
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 6
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = or i32 %125, %129
  store i32 %130, i32* %8, align 4
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  store i32 %134, i32* %12, align 4
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  store i32 %138, i32* %13, align 4
  store i32 3, i32* %11, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = and i32 %142, 28
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 4, i32 0
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 4
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 224
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 2, i32 0
  %155 = or i32 %146, %154
  %156 = load i8*, i8** %5, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, 7
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  %164 = or i32 %155, %163
  store i32 %164, i32* %10, align 4
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 4
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 224
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  store i32 %173, i32* %18, align 4
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 3
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 28
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  %181 = xor i1 %180, true
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %21, align 4
  %183 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %184 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %213

187:                                              ; preds = %120
  %188 = load i8*, i8** %5, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 4
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = and i32 %191, 7
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  store i32 %196, i32* %19, align 4
  %197 = load i32, i32* %19, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %212

199:                                              ; preds = %187
  %200 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %201 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %200, i32 0, i32 2
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  %206 = xor i1 %205, true
  %207 = zext i1 %206 to i32
  %208 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %209 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %208, i32 0, i32 2
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  store i32 %207, i32* %211, align 8
  br label %212

212:                                              ; preds = %199, %187
  br label %223

213:                                              ; preds = %120
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 4
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = and i32 %217, 7
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %17, align 4
  br label %223

223:                                              ; preds = %213, %212
  br label %516

224:                                              ; preds = %114
  %225 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %226 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @WACOM_27QHD, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %316

230:                                              ; preds = %224
  store i32 3, i32* %11, align 4
  %231 = load i8*, i8** %5, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 2
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = and i32 %234, 7
  store i32 %235, i32* %10, align 4
  %236 = load i8*, i8** %5, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 2
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = and i32 %239, 1
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  store i32 %244, i32* %17, align 4
  %245 = load i8*, i8** %5, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 %248, 2
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  store i32 %253, i32* %18, align 4
  %254 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %255 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %284

258:                                              ; preds = %230
  %259 = load i8*, i8** %5, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 2
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = and i32 %262, 4
  %264 = icmp ne i32 %263, 0
  %265 = xor i1 %264, true
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  store i32 %267, i32* %19, align 4
  %268 = load i32, i32* %19, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %258
  %271 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %272 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %271, i32 0, i32 2
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  %279 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %280 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %279, i32 0, i32 2
  %281 = load %struct.TYPE_2__*, %struct.TYPE_2__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  store i32 %278, i32* %282, align 8
  br label %283

283:                                              ; preds = %270, %258
  br label %294

284:                                              ; preds = %230
  %285 = load i8*, i8** %5, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 2
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = and i32 %288, 4
  %290 = icmp ne i32 %289, 0
  %291 = xor i1 %290, true
  %292 = xor i1 %291, true
  %293 = zext i1 %292 to i32
  store i32 %293, i32* %20, align 4
  br label %294

294:                                              ; preds = %284, %283
  %295 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %296 = load i32, i32* @ABS_X, align 4
  %297 = load i8*, i8** %5, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 4
  %299 = bitcast i8* %298 to i32*
  %300 = call i32 @be16_to_cpup(i32* %299)
  %301 = call i32 @input_report_abs(%struct.input_dev* %295, i32 %296, i32 %300)
  %302 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %303 = load i32, i32* @ABS_Y, align 4
  %304 = load i8*, i8** %5, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 6
  %306 = bitcast i8* %305 to i32*
  %307 = call i32 @be16_to_cpup(i32* %306)
  %308 = call i32 @input_report_abs(%struct.input_dev* %302, i32 %303, i32 %307)
  %309 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %310 = load i32, i32* @ABS_Z, align 4
  %311 = load i8*, i8** %5, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 8
  %313 = bitcast i8* %312 to i32*
  %314 = call i32 @be16_to_cpup(i32* %313)
  %315 = call i32 @input_report_abs(%struct.input_dev* %309, i32 %310, i32 %314)
  br label %515

316:                                              ; preds = %224
  %317 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %318 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @CINTIQ_HYBRID, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %334

322:                                              ; preds = %316
  %323 = load i8*, i8** %5, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 4
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = shl i32 %326, 1
  %328 = load i8*, i8** %5, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 3
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = and i32 %331, 1
  %333 = or i32 %327, %332
  store i32 %333, i32* %8, align 4
  br label %514

334:                                              ; preds = %316
  %335 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %336 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @CINTIQ_COMPANION_2, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %367

340:                                              ; preds = %334
  %341 = load i8*, i8** %5, align 8
  %342 = getelementptr inbounds i8, i8* %341, i64 2
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = ashr i32 %344, 4
  %346 = shl i32 %345, 7
  %347 = load i8*, i8** %5, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 1
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = and i32 %350, 4
  %352 = shl i32 %351, 4
  %353 = or i32 %346, %352
  %354 = load i8*, i8** %5, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 2
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = and i32 %357, 15
  %359 = shl i32 %358, 2
  %360 = or i32 %353, %359
  %361 = load i8*, i8** %5, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 1
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = and i32 %364, 3
  %366 = or i32 %360, %365
  store i32 %366, i32* %8, align 4
  br label %513

367:                                              ; preds = %334
  %368 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %369 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @INTUOS5S, align 8
  %372 = icmp sge i64 %370, %371
  br i1 %372, label %373, label %395

373:                                              ; preds = %367
  %374 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %375 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* @INTUOSPL, align 8
  %378 = icmp sle i64 %376, %377
  br i1 %378, label %379, label %395

379:                                              ; preds = %373
  %380 = load i8*, i8** %5, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 4
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = shl i32 %383, 1
  %385 = load i8*, i8** %5, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 3
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = and i32 %388, 1
  %390 = or i32 %384, %389
  store i32 %390, i32* %8, align 4
  %391 = load i8*, i8** %5, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 2
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  store i32 %394, i32* %12, align 4
  br label %512

395:                                              ; preds = %373, %367
  %396 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %397 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @WACOM_21UX2, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %407, label %401

401:                                              ; preds = %395
  %402 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %403 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @WACOM_22HD, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %462

407:                                              ; preds = %401, %395
  %408 = load i8*, i8** %5, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 8
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = shl i32 %411, 10
  %413 = load i8*, i8** %5, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 7
  %415 = load i8, i8* %414, align 1
  %416 = zext i8 %415 to i32
  %417 = and i32 %416, 1
  %418 = shl i32 %417, 9
  %419 = or i32 %412, %418
  %420 = load i8*, i8** %5, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 6
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = shl i32 %423, 1
  %425 = or i32 %419, %424
  %426 = load i8*, i8** %5, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 5
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  %430 = and i32 %429, 1
  %431 = or i32 %425, %430
  store i32 %431, i32* %8, align 4
  %432 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %433 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @WACOM_22HD, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %461

437:                                              ; preds = %407
  store i32 3, i32* %11, align 4
  %438 = load i8*, i8** %5, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 9
  %440 = load i8, i8* %439, align 1
  %441 = zext i8 %440 to i32
  %442 = and i32 %441, 7
  store i32 %442, i32* %10, align 4
  %443 = load i8*, i8** %5, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 9
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i32
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = xor i1 %448, true
  %450 = xor i1 %449, true
  %451 = zext i1 %450 to i32
  store i32 %451, i32* %21, align 4
  %452 = load i8*, i8** %5, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 9
  %454 = load i8, i8* %453, align 1
  %455 = zext i8 %454 to i32
  %456 = and i32 %455, 2
  %457 = icmp ne i32 %456, 0
  %458 = xor i1 %457, true
  %459 = xor i1 %458, true
  %460 = zext i1 %459 to i32
  store i32 %460, i32* %17, align 4
  br label %461

461:                                              ; preds = %437, %407
  br label %489

462:                                              ; preds = %401
  %463 = load i8*, i8** %5, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 6
  %465 = load i8, i8* %464, align 1
  %466 = zext i8 %465 to i32
  %467 = and i32 %466, 16
  %468 = shl i32 %467, 5
  %469 = load i8*, i8** %5, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 5
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  %473 = and i32 %472, 16
  %474 = shl i32 %473, 4
  %475 = or i32 %468, %474
  %476 = load i8*, i8** %5, align 8
  %477 = getelementptr inbounds i8, i8* %476, i64 6
  %478 = load i8, i8* %477, align 1
  %479 = zext i8 %478 to i32
  %480 = and i32 %479, 15
  %481 = shl i32 %480, 4
  %482 = or i32 %475, %481
  %483 = load i8*, i8** %5, align 8
  %484 = getelementptr inbounds i8, i8* %483, i64 5
  %485 = load i8, i8* %484, align 1
  %486 = zext i8 %485 to i32
  %487 = and i32 %486, 15
  %488 = or i32 %482, %487
  store i32 %488, i32* %8, align 4
  br label %489

489:                                              ; preds = %462, %461
  %490 = load i8*, i8** %5, align 8
  %491 = getelementptr inbounds i8, i8* %490, i64 1
  %492 = load i8, i8* %491, align 1
  %493 = zext i8 %492 to i32
  %494 = and i32 %493, 31
  %495 = shl i32 %494, 8
  %496 = load i8*, i8** %5, align 8
  %497 = getelementptr inbounds i8, i8* %496, i64 2
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i32
  %500 = or i32 %495, %499
  store i32 %500, i32* %14, align 4
  %501 = load i8*, i8** %5, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 3
  %503 = load i8, i8* %502, align 1
  %504 = zext i8 %503 to i32
  %505 = and i32 %504, 31
  %506 = shl i32 %505, 8
  %507 = load i8*, i8** %5, align 8
  %508 = getelementptr inbounds i8, i8* %507, i64 4
  %509 = load i8, i8* %508, align 1
  %510 = zext i8 %509 to i32
  %511 = or i32 %506, %510
  store i32 %511, i32* %15, align 4
  br label %512

512:                                              ; preds = %489, %379
  br label %513

513:                                              ; preds = %512, %340
  br label %514

514:                                              ; preds = %513, %322
  br label %515

515:                                              ; preds = %514, %294
  br label %516

516:                                              ; preds = %515, %223
  br label %517

517:                                              ; preds = %516, %102
  br label %518

518:                                              ; preds = %517, %91
  br label %519

519:                                              ; preds = %518, %69
  %520 = load i32, i32* %8, align 4
  %521 = load i32, i32* %9, align 4
  %522 = shl i32 -1, %521
  %523 = xor i32 %522, -1
  %524 = and i32 %520, %523
  %525 = load i32, i32* %10, align 4
  %526 = load i32, i32* %11, align 4
  %527 = shl i32 -1, %526
  %528 = xor i32 %527, -1
  %529 = and i32 %525, %528
  %530 = or i32 %524, %529
  %531 = load i32, i32* %12, align 4
  %532 = and i32 %531, 128
  %533 = or i32 %530, %532
  %534 = load i32, i32* %13, align 4
  %535 = and i32 %534, 128
  %536 = or i32 %533, %535
  %537 = load i32, i32* %14, align 4
  %538 = or i32 %536, %537
  %539 = load i32, i32* %15, align 4
  %540 = or i32 %538, %539
  store i32 %540, i32* %16, align 4
  %541 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %542 = load i32, i32* %9, align 4
  %543 = load i32, i32* %8, align 4
  %544 = call i32 @wacom_report_numbered_buttons(%struct.input_dev* %541, i32 %542, i32 %543)
  store i32 0, i32* %7, align 4
  br label %545

545:                                              ; preds = %560, %519
  %546 = load i32, i32* %7, align 4
  %547 = load i32, i32* %11, align 4
  %548 = icmp slt i32 %546, %547
  br i1 %548, label %549, label %563

549:                                              ; preds = %545
  %550 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %551 = load i64, i64* @KEY_PROG1, align 8
  %552 = load i32, i32* %7, align 4
  %553 = sext i32 %552 to i64
  %554 = add nsw i64 %551, %553
  %555 = load i32, i32* %10, align 4
  %556 = load i32, i32* %7, align 4
  %557 = shl i32 1, %556
  %558 = and i32 %555, %557
  %559 = call i32 @input_report_key(%struct.input_dev* %550, i64 %554, i32 %558)
  br label %560

560:                                              ; preds = %549
  %561 = load i32, i32* %7, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %7, align 4
  br label %545

563:                                              ; preds = %545
  %564 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %565 = load i64, i64* @KEY_BUTTONCONFIG, align 8
  %566 = load i32, i32* %17, align 4
  %567 = call i32 @input_report_key(%struct.input_dev* %564, i64 %565, i32 %566)
  %568 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %569 = load i64, i64* @KEY_ONSCREEN_KEYBOARD, align 8
  %570 = load i32, i32* %18, align 4
  %571 = call i32 @input_report_key(%struct.input_dev* %568, i64 %569, i32 %570)
  %572 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %573 = load i64, i64* @KEY_CONTROLPANEL, align 8
  %574 = load i32, i32* %20, align 4
  %575 = call i32 @input_report_key(%struct.input_dev* %572, i64 %573, i32 %574)
  %576 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %577 = load i64, i64* @KEY_INFO, align 8
  %578 = load i32, i32* %21, align 4
  %579 = call i32 @input_report_key(%struct.input_dev* %576, i64 %577, i32 %578)
  %580 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %581 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %580, i32 0, i32 2
  %582 = load %struct.TYPE_2__*, %struct.TYPE_2__** %581, align 8
  %583 = icmp ne %struct.TYPE_2__* %582, null
  br i1 %583, label %584, label %613

584:                                              ; preds = %563
  %585 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %586 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %585, i32 0, i32 2
  %587 = load %struct.TYPE_2__*, %struct.TYPE_2__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %587, i32 0, i32 1
  %589 = load i64, i64* %588, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %613

591:                                              ; preds = %584
  %592 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %593 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %592, i32 0, i32 2
  %594 = load %struct.TYPE_2__*, %struct.TYPE_2__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %594, i32 0, i32 1
  %596 = load i64, i64* %595, align 8
  %597 = load i32, i32* @SW_MUTE_DEVICE, align 4
  %598 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %599 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %598, i32 0, i32 2
  %600 = load %struct.TYPE_2__*, %struct.TYPE_2__** %599, align 8
  %601 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = icmp ne i32 %602, 0
  %604 = xor i1 %603, true
  %605 = zext i1 %604 to i32
  %606 = call i32 @input_report_switch(i64 %596, i32 %597, i32 %605)
  %607 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %608 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %607, i32 0, i32 2
  %609 = load %struct.TYPE_2__*, %struct.TYPE_2__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %609, i32 0, i32 1
  %611 = load i64, i64* %610, align 8
  %612 = call i32 @input_sync(i64 %611)
  br label %613

613:                                              ; preds = %591, %584, %563
  %614 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %615 = load i32, i32* @ABS_RX, align 4
  %616 = load i32, i32* %14, align 4
  %617 = call i32 @input_report_abs(%struct.input_dev* %614, i32 %615, i32 %616)
  %618 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %619 = load i32, i32* @ABS_RY, align 4
  %620 = load i32, i32* %15, align 4
  %621 = call i32 @input_report_abs(%struct.input_dev* %618, i32 %619, i32 %620)
  %622 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %623 = load i32, i32* @ABS_WHEEL, align 4
  %624 = load i32, i32* %12, align 4
  %625 = and i32 %624, 128
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %630

627:                                              ; preds = %613
  %628 = load i32, i32* %12, align 4
  %629 = and i32 %628, 127
  br label %631

630:                                              ; preds = %613
  br label %631

631:                                              ; preds = %630, %627
  %632 = phi i32 [ %629, %627 ], [ 0, %630 ]
  %633 = call i32 @input_report_abs(%struct.input_dev* %622, i32 %623, i32 %632)
  %634 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %635 = load i32, i32* @ABS_THROTTLE, align 4
  %636 = load i32, i32* %13, align 4
  %637 = and i32 %636, 128
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %642

639:                                              ; preds = %631
  %640 = load i32, i32* %13, align 4
  %641 = and i32 %640, 127
  br label %643

642:                                              ; preds = %631
  br label %643

643:                                              ; preds = %642, %639
  %644 = phi i32 [ %641, %639 ], [ 0, %642 ]
  %645 = call i32 @input_report_abs(%struct.input_dev* %634, i32 %635, i32 %644)
  %646 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %647 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %648 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %647, i32 0, i32 1
  %649 = load i64*, i64** %648, align 8
  %650 = getelementptr inbounds i64, i64* %649, i64 1
  %651 = load i64, i64* %650, align 8
  %652 = load i32, i32* %16, align 4
  %653 = icmp ne i32 %652, 0
  %654 = zext i1 %653 to i64
  %655 = select i1 %653, i32 1, i32 0
  %656 = call i32 @input_report_key(%struct.input_dev* %646, i64 %651, i32 %655)
  %657 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %658 = load i32, i32* @ABS_MISC, align 4
  %659 = load i32, i32* %16, align 4
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %661, label %663

661:                                              ; preds = %643
  %662 = load i32, i32* @PAD_DEVICE_ID, align 4
  br label %664

663:                                              ; preds = %643
  br label %664

664:                                              ; preds = %663, %661
  %665 = phi i32 [ %662, %661 ], [ 0, %663 ]
  %666 = call i32 @input_report_abs(%struct.input_dev* %657, i32 %658, i32 %665)
  %667 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %668 = load i32, i32* @EV_MSC, align 4
  %669 = load i32, i32* @MSC_SERIAL, align 4
  %670 = call i32 @input_event(%struct.input_dev* %667, i32 %668, i32 %669, i32 -1)
  store i32 1, i32* %2, align 4
  br label %671

671:                                              ; preds = %664, %56
  %672 = load i32, i32* %2, align 4
  ret i32 %672
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @wacom_report_numbered_buttons(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_report_switch(i64, i32, i32) #1

declare dso_local i32 @input_sync(i64) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
