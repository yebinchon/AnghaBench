; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_general.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, i64*, i32, i32*, %struct.input_dev*, %struct.wacom_features }
%struct.input_dev = type { i32 }
%struct.wacom_features = type { i32, i32, i32 }

@INTUOS = common dso_local global i32 0, align 4
@WACOM_REPORT_PENABLED = common dso_local global i8 0, align 1
@WACOM_REPORT_CINTIQ = common dso_local global i8 0, align 1
@WACOM_REPORT_INTUOS_PEN = common dso_local global i8 0, align 1
@WACOM_21UX2 = common dso_local global i32 0, align 4
@BTN_TOOL_LENS = common dso_local global i64 0, align 8
@INTUOS3 = common dso_local global i32 0, align 4
@INTUOS3S = common dso_local global i32 0, align 4
@INTUOS4 = common dso_local global i32 0, align 4
@INTUOS4S = common dso_local global i32 0, align 4
@INTUOS5 = common dso_local global i32 0, align 4
@INTUOS5S = common dso_local global i32 0, align 4
@INTUOSPM = common dso_local global i32 0, align 4
@INTUOSPS = common dso_local global i32 0, align 4
@CINTIQ = common dso_local global i32 0, align 4
@INTUOSHT2 = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i64 0, align 8
@BTN_STYLUS2 = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i64 0, align 8
@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i64 0, align 8
@BTN_MIDDLE = common dso_local global i64 0, align 8
@BTN_RIGHT = common dso_local global i64 0, align 8
@BTN_SIDE = common dso_local global i64 0, align 8
@BTN_EXTRA = common dso_local global i64 0, align 8
@ABS_THROTTLE = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i64 0, align 8
@INTUOS3L = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom_wac*)* @wacom_intuos_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_intuos_general(%struct.wacom_wac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  %13 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %14 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %13, i32 0, i32 6
  store %struct.wacom_features* %14, %struct.wacom_features** %4, align 8
  %15 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %16 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 5
  %20 = load %struct.input_dev*, %struct.input_dev** %19, align 8
  store %struct.input_dev* %20, %struct.input_dev** %6, align 8
  %21 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %22 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INTUOS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i32 [ %31, %26 ], [ 0, %32 ]
  store i32 %34, i32* %7, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = ashr i32 %38, 1
  %40 = and i32 %39, 15
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @WACOM_REPORT_PENABLED, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %33
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @WACOM_REPORT_CINTIQ, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @WACOM_REPORT_INTUOS_PEN, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %783

66:                                               ; preds = %57, %49, %33
  %67 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %68 = call i64 @delay_pen_events(%struct.wacom_wac* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %783

71:                                               ; preds = %66
  %72 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %73 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %82 = call i32 @wacom_intuos_schedule_prox_event(%struct.wacom_wac* %81)
  store i32 1, i32* %2, align 4
  br label %783

83:                                               ; preds = %71
  %84 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %85 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 16
  %92 = and i32 %91, 1
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %83
  %95 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %96 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WACOM_21UX2, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %171, label %100

100:                                              ; preds = %94, %83
  %101 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %102 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %101, i32 0, i32 2
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BTN_TOOL_LENS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %158

110:                                              ; preds = %100
  %111 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %112 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @INTUOS3, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %171, label %116

116:                                              ; preds = %110
  %117 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %118 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @INTUOS3S, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %171, label %122

122:                                              ; preds = %116
  %123 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %124 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @INTUOS4, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %171, label %128

128:                                              ; preds = %122
  %129 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %130 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @INTUOS4S, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %171, label %134

134:                                              ; preds = %128
  %135 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %136 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @INTUOS5, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %171, label %140

140:                                              ; preds = %134
  %141 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %142 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @INTUOS5S, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %171, label %146

146:                                              ; preds = %140
  %147 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %148 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @INTUOSPM, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %171, label %152

152:                                              ; preds = %146
  %153 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %154 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @INTUOSPS, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %171, label %158

158:                                              ; preds = %152, %100
  %159 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %160 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @CINTIQ, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load i8*, i8** %5, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 64
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %164, %152, %146, %140, %134, %128, %122, %116, %110, %94
  store i32 1, i32* %2, align 4
  br label %783

172:                                              ; preds = %164, %158
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  %175 = bitcast i8* %174 to i32*
  %176 = call i32 @be16_to_cpup(i32* %175)
  %177 = shl i32 %176, 1
  %178 = load i8*, i8** %5, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 9
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = ashr i32 %181, 1
  %183 = and i32 %182, 1
  %184 = or i32 %177, %183
  store i32 %184, i32* %9, align 4
  %185 = load i8*, i8** %5, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 4
  %187 = bitcast i8* %186 to i32*
  %188 = call i32 @be16_to_cpup(i32* %187)
  %189 = shl i32 %188, 1
  %190 = load i8*, i8** %5, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 9
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = and i32 %193, 1
  %195 = or i32 %189, %194
  store i32 %195, i32* %10, align 4
  %196 = load i8*, i8** %5, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 9
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = ashr i32 %199, 2
  store i32 %200, i32* %11, align 4
  %201 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %202 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @INTUOS3S, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %172
  %207 = load i32, i32* %9, align 4
  %208 = lshr i32 %207, 1
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %10, align 4
  %210 = lshr i32 %209, 1
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %11, align 4
  %212 = lshr i32 %211, 1
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %206, %172
  %214 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %215 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @INTUOSHT2, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %213
  %220 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %221 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %11, align 4
  %224 = sub i32 %222, %223
  store i32 %224, i32* %11, align 4
  br label %225

225:                                              ; preds = %219, %213
  %226 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %227 = load i32, i32* @ABS_X, align 4
  %228 = load i32, i32* %9, align 4
  %229 = trunc i32 %228 to i8
  %230 = call i32 @input_report_abs(%struct.input_dev* %226, i32 %227, i8 zeroext %229)
  %231 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %232 = load i32, i32* @ABS_Y, align 4
  %233 = load i32, i32* %10, align 4
  %234 = trunc i32 %233 to i8
  %235 = call i32 @input_report_abs(%struct.input_dev* %231, i32 %232, i8 zeroext %234)
  %236 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %237 = load i32, i32* @ABS_DISTANCE, align 4
  %238 = load i32, i32* %11, align 4
  %239 = trunc i32 %238 to i8
  %240 = call i32 @input_report_abs(%struct.input_dev* %236, i32 %237, i8 zeroext %239)
  %241 = load i8, i8* %8, align 1
  %242 = zext i8 %241 to i32
  switch i32 %242, label %749 [
    i32 0, label %243
    i32 1, label %243
    i32 2, label %243
    i32 3, label %243
    i32 10, label %331
    i32 5, label %375
    i32 4, label %460
    i32 6, label %530
    i32 8, label %615
    i32 7, label %748
    i32 9, label %748
    i32 11, label %748
    i32 12, label %748
    i32 13, label %748
    i32 14, label %748
    i32 15, label %748
  ]

243:                                              ; preds = %225, %225, %225, %225
  %244 = load i8*, i8** %5, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 6
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = shl i32 %247, 3
  %249 = load i8*, i8** %5, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 7
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = and i32 %252, 192
  %254 = ashr i32 %253, 5
  %255 = or i32 %248, %254
  %256 = load i8*, i8** %5, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 1
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = and i32 %259, 1
  %261 = or i32 %255, %260
  store i32 %261, i32* %12, align 4
  %262 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %263 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %264, 2047
  br i1 %265, label %266, label %269

266:                                              ; preds = %243
  %267 = load i32, i32* %12, align 4
  %268 = lshr i32 %267, 1
  store i32 %268, i32* %12, align 4
  br label %269

269:                                              ; preds = %266, %243
  %270 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %271 = load i32, i32* @ABS_PRESSURE, align 4
  %272 = load i32, i32* %12, align 4
  %273 = trunc i32 %272 to i8
  %274 = call i32 @input_report_abs(%struct.input_dev* %270, i32 %271, i8 zeroext %273)
  %275 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %276 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @INTUOSHT2, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %308

280:                                              ; preds = %269
  %281 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %282 = load i32, i32* @ABS_TILT_X, align 4
  %283 = load i8*, i8** %5, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 7
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = shl i32 %286, 1
  %288 = and i32 %287, 126
  %289 = load i8*, i8** %5, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 8
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = ashr i32 %292, 7
  %294 = or i32 %288, %293
  %295 = sub nsw i32 %294, 64
  %296 = trunc i32 %295 to i8
  %297 = call i32 @input_report_abs(%struct.input_dev* %281, i32 %282, i8 zeroext %296)
  %298 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %299 = load i32, i32* @ABS_TILT_Y, align 4
  %300 = load i8*, i8** %5, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 8
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = and i32 %303, 127
  %305 = sub nsw i32 %304, 64
  %306 = trunc i32 %305 to i8
  %307 = call i32 @input_report_abs(%struct.input_dev* %298, i32 %299, i8 zeroext %306)
  br label %308

308:                                              ; preds = %280, %269
  %309 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %310 = load i64, i64* @BTN_STYLUS, align 8
  %311 = load i8*, i8** %5, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 1
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = and i32 %314, 2
  %316 = call i32 @input_report_key(%struct.input_dev* %309, i64 %310, i32 %315)
  %317 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %318 = load i64, i64* @BTN_STYLUS2, align 8
  %319 = load i8*, i8** %5, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 1
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = and i32 %322, 4
  %324 = call i32 @input_report_key(%struct.input_dev* %317, i64 %318, i32 %323)
  %325 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %326 = load i64, i64* @BTN_TOUCH, align 8
  %327 = load i32, i32* %12, align 4
  %328 = icmp ugt i32 %327, 10
  %329 = zext i1 %328 to i32
  %330 = call i32 @input_report_key(%struct.input_dev* %325, i64 %326, i32 %329)
  br label %749

331:                                              ; preds = %225
  %332 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %333 = load i32, i32* @ABS_WHEEL, align 4
  %334 = load i8*, i8** %5, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 6
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  %338 = shl i32 %337, 2
  %339 = load i8*, i8** %5, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 7
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = ashr i32 %342, 6
  %344 = and i32 %343, 3
  %345 = or i32 %338, %344
  %346 = trunc i32 %345 to i8
  %347 = call i32 @input_report_abs(%struct.input_dev* %332, i32 %333, i8 zeroext %346)
  %348 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %349 = load i32, i32* @ABS_TILT_X, align 4
  %350 = load i8*, i8** %5, align 8
  %351 = getelementptr inbounds i8, i8* %350, i64 7
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = shl i32 %353, 1
  %355 = and i32 %354, 126
  %356 = load i8*, i8** %5, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 8
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = ashr i32 %359, 7
  %361 = or i32 %355, %360
  %362 = sub nsw i32 %361, 64
  %363 = trunc i32 %362 to i8
  %364 = call i32 @input_report_abs(%struct.input_dev* %348, i32 %349, i8 zeroext %363)
  %365 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %366 = load i32, i32* @ABS_TILT_Y, align 4
  %367 = load i8*, i8** %5, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 8
  %369 = load i8, i8* %368, align 1
  %370 = zext i8 %369 to i32
  %371 = and i32 %370, 127
  %372 = sub nsw i32 %371, 64
  %373 = trunc i32 %372 to i8
  %374 = call i32 @input_report_abs(%struct.input_dev* %365, i32 %366, i8 zeroext %373)
  br label %749

375:                                              ; preds = %225
  %376 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %377 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @INTUOS3S, align 4
  %380 = icmp sge i32 %378, %379
  br i1 %380, label %381, label %426

381:                                              ; preds = %375
  %382 = load i8*, i8** %5, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 6
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = shl i32 %385, 3
  %387 = load i8*, i8** %5, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 7
  %389 = load i8, i8* %388, align 1
  %390 = zext i8 %389 to i32
  %391 = ashr i32 %390, 5
  %392 = and i32 %391, 7
  %393 = or i32 %386, %392
  store i32 %393, i32* %12, align 4
  %394 = load i8*, i8** %5, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 7
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = and i32 %397, 32
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %415

400:                                              ; preds = %381
  %401 = load i32, i32* %12, align 4
  %402 = icmp ugt i32 %401, 900
  br i1 %402, label %403, label %408

403:                                              ; preds = %400
  %404 = load i32, i32* %12, align 4
  %405 = sub i32 %404, 1
  %406 = udiv i32 %405, 2
  %407 = sub i32 %406, 1350
  br label %413

408:                                              ; preds = %400
  %409 = load i32, i32* %12, align 4
  %410 = sub i32 %409, 1
  %411 = udiv i32 %410, 2
  %412 = add i32 %411, 450
  br label %413

413:                                              ; preds = %408, %403
  %414 = phi i32 [ %407, %403 ], [ %412, %408 ]
  br label %419

415:                                              ; preds = %381
  %416 = load i32, i32* %12, align 4
  %417 = udiv i32 %416, 2
  %418 = sub i32 450, %417
  br label %419

419:                                              ; preds = %415, %413
  %420 = phi i32 [ %414, %413 ], [ %418, %415 ]
  store i32 %420, i32* %12, align 4
  %421 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %422 = load i32, i32* @ABS_Z, align 4
  %423 = load i32, i32* %12, align 4
  %424 = trunc i32 %423 to i8
  %425 = call i32 @input_report_abs(%struct.input_dev* %421, i32 %422, i8 zeroext %424)
  br label %459

426:                                              ; preds = %375
  %427 = load i8*, i8** %5, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 6
  %429 = load i8, i8* %428, align 1
  %430 = zext i8 %429 to i32
  %431 = shl i32 %430, 3
  %432 = load i8*, i8** %5, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 7
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = ashr i32 %435, 5
  %437 = and i32 %436, 7
  %438 = or i32 %431, %437
  store i32 %438, i32* %12, align 4
  %439 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %440 = load i32, i32* @ABS_RZ, align 4
  %441 = load i8*, i8** %5, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 7
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i32
  %445 = and i32 %444, 32
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %426
  %448 = load i32, i32* %12, align 4
  %449 = sub i32 %448, 1
  %450 = udiv i32 %449, 2
  br label %455

451:                                              ; preds = %426
  %452 = load i32, i32* %12, align 4
  %453 = sub i32 0, %452
  %454 = udiv i32 %453, 2
  br label %455

455:                                              ; preds = %451, %447
  %456 = phi i32 [ %450, %447 ], [ %454, %451 ]
  %457 = trunc i32 %456 to i8
  %458 = call i32 @input_report_abs(%struct.input_dev* %439, i32 %440, i8 zeroext %457)
  br label %459

459:                                              ; preds = %455, %419
  br label %749

460:                                              ; preds = %225
  %461 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %462 = load i64, i64* @BTN_LEFT, align 8
  %463 = load i8*, i8** %5, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 8
  %465 = load i8, i8* %464, align 1
  %466 = zext i8 %465 to i32
  %467 = and i32 %466, 1
  %468 = call i32 @input_report_key(%struct.input_dev* %461, i64 %462, i32 %467)
  %469 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %470 = load i64, i64* @BTN_MIDDLE, align 8
  %471 = load i8*, i8** %5, align 8
  %472 = getelementptr inbounds i8, i8* %471, i64 8
  %473 = load i8, i8* %472, align 1
  %474 = zext i8 %473 to i32
  %475 = and i32 %474, 2
  %476 = call i32 @input_report_key(%struct.input_dev* %469, i64 %470, i32 %475)
  %477 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %478 = load i64, i64* @BTN_RIGHT, align 8
  %479 = load i8*, i8** %5, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 8
  %481 = load i8, i8* %480, align 1
  %482 = zext i8 %481 to i32
  %483 = and i32 %482, 4
  %484 = call i32 @input_report_key(%struct.input_dev* %477, i64 %478, i32 %483)
  %485 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %486 = load i64, i64* @BTN_SIDE, align 8
  %487 = load i8*, i8** %5, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 8
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = and i32 %490, 32
  %492 = call i32 @input_report_key(%struct.input_dev* %485, i64 %486, i32 %491)
  %493 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %494 = load i64, i64* @BTN_EXTRA, align 8
  %495 = load i8*, i8** %5, align 8
  %496 = getelementptr inbounds i8, i8* %495, i64 8
  %497 = load i8, i8* %496, align 1
  %498 = zext i8 %497 to i32
  %499 = and i32 %498, 16
  %500 = call i32 @input_report_key(%struct.input_dev* %493, i64 %494, i32 %499)
  %501 = load i8*, i8** %5, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 6
  %503 = load i8, i8* %502, align 1
  %504 = zext i8 %503 to i32
  %505 = shl i32 %504, 2
  %506 = load i8*, i8** %5, align 8
  %507 = getelementptr inbounds i8, i8* %506, i64 7
  %508 = load i8, i8* %507, align 1
  %509 = zext i8 %508 to i32
  %510 = ashr i32 %509, 6
  %511 = and i32 %510, 3
  %512 = or i32 %505, %511
  store i32 %512, i32* %12, align 4
  %513 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %514 = load i32, i32* @ABS_THROTTLE, align 4
  %515 = load i8*, i8** %5, align 8
  %516 = getelementptr inbounds i8, i8* %515, i64 8
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = and i32 %518, 8
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %524

521:                                              ; preds = %460
  %522 = load i32, i32* %12, align 4
  %523 = sub i32 0, %522
  br label %526

524:                                              ; preds = %460
  %525 = load i32, i32* %12, align 4
  br label %526

526:                                              ; preds = %524, %521
  %527 = phi i32 [ %523, %521 ], [ %525, %524 ]
  %528 = trunc i32 %527 to i8
  %529 = call i32 @input_report_abs(%struct.input_dev* %513, i32 %514, i8 zeroext %528)
  br label %749

530:                                              ; preds = %225
  %531 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %532 = load i64, i64* @BTN_LEFT, align 8
  %533 = load i8*, i8** %5, align 8
  %534 = getelementptr inbounds i8, i8* %533, i64 6
  %535 = load i8, i8* %534, align 1
  %536 = zext i8 %535 to i32
  %537 = and i32 %536, 1
  %538 = call i32 @input_report_key(%struct.input_dev* %531, i64 %532, i32 %537)
  %539 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %540 = load i64, i64* @BTN_MIDDLE, align 8
  %541 = load i8*, i8** %5, align 8
  %542 = getelementptr inbounds i8, i8* %541, i64 6
  %543 = load i8, i8* %542, align 1
  %544 = zext i8 %543 to i32
  %545 = and i32 %544, 2
  %546 = call i32 @input_report_key(%struct.input_dev* %539, i64 %540, i32 %545)
  %547 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %548 = load i64, i64* @BTN_RIGHT, align 8
  %549 = load i8*, i8** %5, align 8
  %550 = getelementptr inbounds i8, i8* %549, i64 6
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i32
  %553 = and i32 %552, 4
  %554 = call i32 @input_report_key(%struct.input_dev* %547, i64 %548, i32 %553)
  %555 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %556 = load i32, i32* @REL_WHEEL, align 4
  %557 = load i8*, i8** %5, align 8
  %558 = getelementptr inbounds i8, i8* %557, i64 7
  %559 = load i8, i8* %558, align 1
  %560 = zext i8 %559 to i32
  %561 = and i32 %560, 128
  %562 = ashr i32 %561, 7
  %563 = load i8*, i8** %5, align 8
  %564 = getelementptr inbounds i8, i8* %563, i64 7
  %565 = load i8, i8* %564, align 1
  %566 = zext i8 %565 to i32
  %567 = and i32 %566, 64
  %568 = ashr i32 %567, 6
  %569 = sub nsw i32 %562, %568
  %570 = trunc i32 %569 to i8
  %571 = call i32 @input_report_rel(%struct.input_dev* %555, i32 %556, i8 zeroext %570)
  %572 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %573 = load i64, i64* @BTN_SIDE, align 8
  %574 = load i8*, i8** %5, align 8
  %575 = getelementptr inbounds i8, i8* %574, i64 6
  %576 = load i8, i8* %575, align 1
  %577 = zext i8 %576 to i32
  %578 = and i32 %577, 8
  %579 = call i32 @input_report_key(%struct.input_dev* %572, i64 %573, i32 %578)
  %580 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %581 = load i64, i64* @BTN_EXTRA, align 8
  %582 = load i8*, i8** %5, align 8
  %583 = getelementptr inbounds i8, i8* %582, i64 6
  %584 = load i8, i8* %583, align 1
  %585 = zext i8 %584 to i32
  %586 = and i32 %585, 16
  %587 = call i32 @input_report_key(%struct.input_dev* %580, i64 %581, i32 %586)
  %588 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %589 = load i32, i32* @ABS_TILT_X, align 4
  %590 = load i8*, i8** %5, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 7
  %592 = load i8, i8* %591, align 1
  %593 = zext i8 %592 to i32
  %594 = shl i32 %593, 1
  %595 = and i32 %594, 126
  %596 = load i8*, i8** %5, align 8
  %597 = getelementptr inbounds i8, i8* %596, i64 8
  %598 = load i8, i8* %597, align 1
  %599 = zext i8 %598 to i32
  %600 = ashr i32 %599, 7
  %601 = or i32 %595, %600
  %602 = sub nsw i32 %601, 64
  %603 = trunc i32 %602 to i8
  %604 = call i32 @input_report_abs(%struct.input_dev* %588, i32 %589, i8 zeroext %603)
  %605 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %606 = load i32, i32* @ABS_TILT_Y, align 4
  %607 = load i8*, i8** %5, align 8
  %608 = getelementptr inbounds i8, i8* %607, i64 8
  %609 = load i8, i8* %608, align 1
  %610 = zext i8 %609 to i32
  %611 = and i32 %610, 127
  %612 = sub nsw i32 %611, 64
  %613 = trunc i32 %612 to i8
  %614 = call i32 @input_report_abs(%struct.input_dev* %605, i32 %606, i8 zeroext %613)
  br label %749

615:                                              ; preds = %225
  %616 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %617 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %616, i32 0, i32 2
  %618 = load i64*, i64** %617, align 8
  %619 = load i32, i32* %7, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i64, i64* %618, i64 %620
  %622 = load i64, i64* %621, align 8
  %623 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %624 = icmp eq i64 %622, %623
  br i1 %624, label %625, label %695

625:                                              ; preds = %615
  %626 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %627 = load i64, i64* @BTN_LEFT, align 8
  %628 = load i8*, i8** %5, align 8
  %629 = getelementptr inbounds i8, i8* %628, i64 8
  %630 = load i8, i8* %629, align 1
  %631 = zext i8 %630 to i32
  %632 = and i32 %631, 4
  %633 = call i32 @input_report_key(%struct.input_dev* %626, i64 %627, i32 %632)
  %634 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %635 = load i64, i64* @BTN_MIDDLE, align 8
  %636 = load i8*, i8** %5, align 8
  %637 = getelementptr inbounds i8, i8* %636, i64 8
  %638 = load i8, i8* %637, align 1
  %639 = zext i8 %638 to i32
  %640 = and i32 %639, 8
  %641 = call i32 @input_report_key(%struct.input_dev* %634, i64 %635, i32 %640)
  %642 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %643 = load i64, i64* @BTN_RIGHT, align 8
  %644 = load i8*, i8** %5, align 8
  %645 = getelementptr inbounds i8, i8* %644, i64 8
  %646 = load i8, i8* %645, align 1
  %647 = zext i8 %646 to i32
  %648 = and i32 %647, 16
  %649 = call i32 @input_report_key(%struct.input_dev* %642, i64 %643, i32 %648)
  %650 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %651 = load i32, i32* @REL_WHEEL, align 4
  %652 = load i8*, i8** %5, align 8
  %653 = getelementptr inbounds i8, i8* %652, i64 8
  %654 = load i8, i8* %653, align 1
  %655 = zext i8 %654 to i32
  %656 = and i32 %655, 1
  %657 = load i8*, i8** %5, align 8
  %658 = getelementptr inbounds i8, i8* %657, i64 8
  %659 = load i8, i8* %658, align 1
  %660 = zext i8 %659 to i32
  %661 = and i32 %660, 2
  %662 = ashr i32 %661, 1
  %663 = sub nsw i32 %656, %662
  %664 = trunc i32 %663 to i8
  %665 = call i32 @input_report_rel(%struct.input_dev* %650, i32 %651, i8 zeroext %664)
  %666 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %667 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 4
  %669 = load i32, i32* @INTUOS3S, align 4
  %670 = icmp sge i32 %668, %669
  br i1 %670, label %671, label %694

671:                                              ; preds = %625
  %672 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %673 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %672, i32 0, i32 2
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* @INTUOS3L, align 4
  %676 = icmp sle i32 %674, %675
  br i1 %676, label %677, label %694

677:                                              ; preds = %671
  %678 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %679 = load i64, i64* @BTN_SIDE, align 8
  %680 = load i8*, i8** %5, align 8
  %681 = getelementptr inbounds i8, i8* %680, i64 8
  %682 = load i8, i8* %681, align 1
  %683 = zext i8 %682 to i32
  %684 = and i32 %683, 64
  %685 = call i32 @input_report_key(%struct.input_dev* %678, i64 %679, i32 %684)
  %686 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %687 = load i64, i64* @BTN_EXTRA, align 8
  %688 = load i8*, i8** %5, align 8
  %689 = getelementptr inbounds i8, i8* %688, i64 8
  %690 = load i8, i8* %689, align 1
  %691 = zext i8 %690 to i32
  %692 = and i32 %691, 32
  %693 = call i32 @input_report_key(%struct.input_dev* %686, i64 %687, i32 %692)
  br label %694

694:                                              ; preds = %677, %671, %625
  br label %747

695:                                              ; preds = %615
  %696 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %697 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %696, i32 0, i32 2
  %698 = load i64*, i64** %697, align 8
  %699 = load i32, i32* %7, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i64, i64* %698, i64 %700
  %702 = load i64, i64* %701, align 8
  %703 = load i64, i64* @BTN_TOOL_LENS, align 8
  %704 = icmp eq i64 %702, %703
  br i1 %704, label %705, label %746

705:                                              ; preds = %695
  %706 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %707 = load i64, i64* @BTN_LEFT, align 8
  %708 = load i8*, i8** %5, align 8
  %709 = getelementptr inbounds i8, i8* %708, i64 8
  %710 = load i8, i8* %709, align 1
  %711 = zext i8 %710 to i32
  %712 = and i32 %711, 1
  %713 = call i32 @input_report_key(%struct.input_dev* %706, i64 %707, i32 %712)
  %714 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %715 = load i64, i64* @BTN_MIDDLE, align 8
  %716 = load i8*, i8** %5, align 8
  %717 = getelementptr inbounds i8, i8* %716, i64 8
  %718 = load i8, i8* %717, align 1
  %719 = zext i8 %718 to i32
  %720 = and i32 %719, 2
  %721 = call i32 @input_report_key(%struct.input_dev* %714, i64 %715, i32 %720)
  %722 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %723 = load i64, i64* @BTN_RIGHT, align 8
  %724 = load i8*, i8** %5, align 8
  %725 = getelementptr inbounds i8, i8* %724, i64 8
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i32
  %728 = and i32 %727, 4
  %729 = call i32 @input_report_key(%struct.input_dev* %722, i64 %723, i32 %728)
  %730 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %731 = load i64, i64* @BTN_SIDE, align 8
  %732 = load i8*, i8** %5, align 8
  %733 = getelementptr inbounds i8, i8* %732, i64 8
  %734 = load i8, i8* %733, align 1
  %735 = zext i8 %734 to i32
  %736 = and i32 %735, 16
  %737 = call i32 @input_report_key(%struct.input_dev* %730, i64 %731, i32 %736)
  %738 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %739 = load i64, i64* @BTN_EXTRA, align 8
  %740 = load i8*, i8** %5, align 8
  %741 = getelementptr inbounds i8, i8* %740, i64 8
  %742 = load i8, i8* %741, align 1
  %743 = zext i8 %742 to i32
  %744 = and i32 %743, 8
  %745 = call i32 @input_report_key(%struct.input_dev* %738, i64 %739, i32 %744)
  br label %746

746:                                              ; preds = %705, %695
  br label %747

747:                                              ; preds = %746, %694
  br label %749

748:                                              ; preds = %225, %225, %225, %225, %225, %225, %225
  br label %749

749:                                              ; preds = %225, %748, %747, %530, %526, %459, %331, %308
  %750 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %751 = load i32, i32* @ABS_MISC, align 4
  %752 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %753 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %752, i32 0, i32 1
  %754 = load i32*, i32** %753, align 8
  %755 = load i32, i32* %7, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i32, i32* %754, i64 %756
  %758 = load i32, i32* %757, align 4
  %759 = call zeroext i8 @wacom_intuos_id_mangle(i32 %758)
  %760 = call i32 @input_report_abs(%struct.input_dev* %750, i32 %751, i8 zeroext %759)
  %761 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %762 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %763 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %762, i32 0, i32 2
  %764 = load i64*, i64** %763, align 8
  %765 = load i32, i32* %7, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i64, i64* %764, i64 %766
  %768 = load i64, i64* %767, align 8
  %769 = call i32 @input_report_key(%struct.input_dev* %761, i64 %768, i32 1)
  %770 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %771 = load i32, i32* @EV_MSC, align 4
  %772 = load i32, i32* @MSC_SERIAL, align 4
  %773 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %774 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %773, i32 0, i32 4
  %775 = load i32*, i32** %774, align 8
  %776 = load i32, i32* %7, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds i32, i32* %775, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @input_event(%struct.input_dev* %770, i32 %771, i32 %772, i32 %779)
  %781 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %782 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %781, i32 0, i32 3
  store i32 1, i32* %782, align 8
  store i32 2, i32* %2, align 4
  br label %783

783:                                              ; preds = %749, %171, %80, %70, %65
  %784 = load i32, i32* %2, align 4
  ret i32 %784
}

declare dso_local i64 @delay_pen_events(%struct.wacom_wac*) #1

declare dso_local i32 @wacom_intuos_schedule_prox_event(%struct.wacom_wac*) #1

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @wacom_intuos_id_mangle(i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
