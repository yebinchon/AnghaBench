; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_process_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_sentelic.c_fsp_process_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, i32, %struct.fsp_data*, %struct.input_dev* }
%struct.fsp_data = type { i32, i32 }
%struct.input_dev = type { i32 }

@PSMOUSE_GOOD_DATA = common dso_local global i32 0, align 4
@FSP_PKT_TYPE_SHIFT = common dso_local global i8 0, align 1
@FSP_PB0_MFMC = common dso_local global i8 0, align 1
@FSP_PB0_MFMC_FGR2 = common dso_local global i8 0, align 1
@FSP_PB0_LBTN = common dso_local global i8 0, align 1
@FSP_PB0_PHY_BTN = common dso_local global i8 0, align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@BTN_TOOL_DOUBLETAP = common dso_local global i32 0, align 4
@FSPDRV_FLAG_EN_OPC = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@PSMOUSE_FULL_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @fsp_process_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsp_process_byte(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.fsp_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %13 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %14 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 3
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  store %struct.input_dev* %15, %struct.input_dev** %4, align 8
  %16 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %17 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 2
  %18 = load %struct.fsp_data*, %struct.fsp_data** %17, align 8
  store %struct.fsp_data* %18, %struct.fsp_data** %5, align 8
  %19 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %20 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  store i8 0, i8* %9, align 1
  store i16 0, i16* %12, align 2
  %22 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %23 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* @PSMOUSE_GOOD_DATA, align 4
  store i32 %27, i32* %2, align 4
  br label %393

28:                                               ; preds = %1
  %29 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @fsp_packet_debug(%struct.psmouse* %29, i8* %30)
  %32 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %33 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @FSP_PKT_TYPE_SHIFT, align 1
  %39 = sext i8 %38 to i32
  %40 = ashr i32 %37, %39
  switch i32 %40, label %389 [
    i32 130, label %41
    i32 128, label %245
    i32 129, label %264
  ]

41:                                               ; preds = %28
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 72
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 73
  br i1 %52, label %53, label %72

53:                                               ; preds = %47, %41
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 240
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  br label %72

72:                                               ; preds = %65, %59, %53, %47
  %73 = load i8*, i8** %6, align 8
  %74 = call zeroext i16 @GET_ABS_X(i8* %73)
  store i16 %74, i16* %10, align 2
  %75 = load i8*, i8** %6, align 8
  %76 = call zeroext i16 @GET_ABS_Y(i8* %75)
  store i16 %76, i16* %11, align 2
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @FSP_PB0_MFMC, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %133

85:                                               ; preds = %72
  store i16 2, i16* %12, align 2
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* @FSP_PB0_MFMC_FGR2, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %85
  %95 = load %struct.fsp_data*, %struct.fsp_data** %5, align 8
  %96 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  store i16 1, i16* %12, align 2
  %100 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %101 = call i32 @fsp_set_slot(%struct.input_dev* %100, i32 0, i32 0, i16 zeroext 0, i16 zeroext 0)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.fsp_data*, %struct.fsp_data** %5, align 8
  %104 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %103, i32 0, i32 0
  store i32 2, i32* %104, align 4
  %105 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %106 = load i16, i16* %12, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp eq i32 %107, 2
  %109 = zext i1 %108 to i32
  %110 = load i16, i16* %10, align 2
  %111 = load i16, i16* %11, align 2
  %112 = call i32 @fsp_set_slot(%struct.input_dev* %105, i32 1, i32 %109, i16 zeroext %110, i16 zeroext %111)
  br label %132

113:                                              ; preds = %85
  %114 = load %struct.fsp_data*, %struct.fsp_data** %5, align 8
  %115 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  store i16 1, i16* %12, align 2
  %119 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %120 = call i32 @fsp_set_slot(%struct.input_dev* %119, i32 1, i32 0, i16 zeroext 0, i16 zeroext 0)
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.fsp_data*, %struct.fsp_data** %5, align 8
  %123 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %122, i32 0, i32 0
  store i32 1, i32* %123, align 4
  %124 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %125 = load i16, i16* %12, align 2
  %126 = zext i16 %125 to i32
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = load i16, i16* %10, align 2
  %130 = load i16, i16* %11, align 2
  %131 = call i32 @fsp_set_slot(%struct.input_dev* %124, i32 0, i32 %128, i16 zeroext %129, i16 zeroext %130)
  br label %132

132:                                              ; preds = %121, %102
  br label %179

133:                                              ; preds = %72
  %134 = load i8*, i8** %6, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* @FSP_PB0_LBTN, align 1
  %139 = zext i8 %138 to i32
  %140 = load i8, i8* @FSP_PB0_PHY_BTN, align 1
  %141 = zext i8 %140 to i32
  %142 = or i32 %139, %141
  %143 = and i32 %137, %142
  %144 = load i8, i8* @FSP_PB0_LBTN, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %133
  %148 = load i8, i8* @FSP_PB0_LBTN, align 1
  %149 = zext i8 %148 to i32
  %150 = xor i32 %149, -1
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, %150
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %152, align 1
  br label %157

157:                                              ; preds = %147, %133
  %158 = load %struct.fsp_data*, %struct.fsp_data** %5, align 8
  %159 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %158, i32 0, i32 0
  store i32 0, i32* %159, align 4
  %160 = load i16, i16* %10, align 2
  %161 = zext i16 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load i16, i16* %11, align 2
  %165 = zext i16 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i16 1, i16* %12, align 2
  br label %168

168:                                              ; preds = %167, %163, %157
  %169 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %170 = load i16, i16* %12, align 2
  %171 = zext i16 %170 to i32
  %172 = icmp sgt i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = load i16, i16* %10, align 2
  %175 = load i16, i16* %11, align 2
  %176 = call i32 @fsp_set_slot(%struct.input_dev* %169, i32 0, i32 %173, i16 zeroext %174, i16 zeroext %175)
  %177 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %178 = call i32 @fsp_set_slot(%struct.input_dev* %177, i32 1, i32 0, i16 zeroext 0, i16 zeroext 0)
  br label %179

179:                                              ; preds = %168, %132
  %180 = load i16, i16* %12, align 2
  %181 = zext i16 %180 to i32
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %196, label %183

183:                                              ; preds = %179
  %184 = load i16, i16* %12, align 2
  %185 = zext i16 %184 to i32
  %186 = icmp eq i32 %185, 2
  br i1 %186, label %187, label %205

187:                                              ; preds = %183
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8, i8* @FSP_PB0_MFMC_FGR2, align 1
  %193 = zext i8 %192 to i32
  %194 = and i32 %191, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %205, label %196

196:                                              ; preds = %187, %179
  %197 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %198 = load i32, i32* @ABS_X, align 4
  %199 = load i16, i16* %10, align 2
  %200 = call i32 @input_report_abs(%struct.input_dev* %197, i32 %198, i16 zeroext %199)
  %201 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %202 = load i32, i32* @ABS_Y, align 4
  %203 = load i16, i16* %11, align 2
  %204 = call i32 @input_report_abs(%struct.input_dev* %201, i32 %202, i16 zeroext %203)
  br label %205

205:                                              ; preds = %196, %187, %183
  %206 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %207 = load i32, i32* @BTN_LEFT, align 4
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = and i32 %211, 1
  %213 = trunc i32 %212 to i8
  %214 = call i32 @input_report_key(%struct.input_dev* %206, i32 %207, i8 zeroext %213)
  %215 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %216 = load i32, i32* @BTN_RIGHT, align 4
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = and i32 %220, 2
  %222 = trunc i32 %221 to i8
  %223 = call i32 @input_report_key(%struct.input_dev* %215, i32 %216, i8 zeroext %222)
  %224 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %225 = load i32, i32* @BTN_TOUCH, align 4
  %226 = load i16, i16* %12, align 2
  %227 = trunc i16 %226 to i8
  %228 = call i32 @input_report_key(%struct.input_dev* %224, i32 %225, i8 zeroext %227)
  %229 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %230 = load i32, i32* @BTN_TOOL_FINGER, align 4
  %231 = load i16, i16* %12, align 2
  %232 = zext i16 %231 to i32
  %233 = icmp eq i32 %232, 1
  %234 = zext i1 %233 to i32
  %235 = trunc i32 %234 to i8
  %236 = call i32 @input_report_key(%struct.input_dev* %229, i32 %230, i8 zeroext %235)
  %237 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %238 = load i32, i32* @BTN_TOOL_DOUBLETAP, align 4
  %239 = load i16, i16* %12, align 2
  %240 = zext i16 %239 to i32
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i32
  %243 = trunc i32 %242 to i8
  %244 = call i32 @input_report_key(%struct.input_dev* %237, i32 %238, i8 zeroext %243)
  br label %389

245:                                              ; preds = %28
  %246 = load %struct.fsp_data*, %struct.fsp_data** %5, align 8
  %247 = getelementptr inbounds %struct.fsp_data, %struct.fsp_data* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @FSPDRV_FLAG_EN_OPC, align 4
  %250 = and i32 %248, %249
  %251 = load i32, i32* @FSPDRV_FLAG_EN_OPC, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %263

253:                                              ; preds = %245
  %254 = load i8, i8* @FSP_PB0_LBTN, align 1
  %255 = zext i8 %254 to i32
  %256 = xor i32 %255, -1
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = and i32 %260, %256
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %258, align 1
  br label %263

263:                                              ; preds = %253, %245
  br label %264

264:                                              ; preds = %28, %263
  %265 = load i8*, i8** %6, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 3
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %353

270:                                              ; preds = %264
  %271 = load i8*, i8** %6, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 3
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = call zeroext i8 @BIT(i32 0)
  %276 = zext i8 %275 to i32
  %277 = and i32 %274, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %270
  %280 = load i8, i8* %7, align 1
  %281 = zext i8 %280 to i32
  %282 = or i32 %281, 1
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %7, align 1
  br label %284

284:                                              ; preds = %279, %270
  %285 = load i8*, i8** %6, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 3
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = call zeroext i8 @BIT(i32 1)
  %290 = zext i8 %289 to i32
  %291 = and i32 %288, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %284
  %294 = load i8, i8* %7, align 1
  %295 = zext i8 %294 to i32
  %296 = or i32 %295, 15
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %7, align 1
  br label %298

298:                                              ; preds = %293, %284
  %299 = load i8*, i8** %6, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 3
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = call zeroext i8 @BIT(i32 2)
  %304 = zext i8 %303 to i32
  %305 = and i32 %302, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %298
  %308 = call zeroext i8 @BIT(i32 4)
  %309 = zext i8 %308 to i32
  %310 = load i8, i8* %7, align 1
  %311 = zext i8 %310 to i32
  %312 = or i32 %311, %309
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %7, align 1
  br label %314

314:                                              ; preds = %307, %298
  %315 = load i8*, i8** %6, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 3
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = call zeroext i8 @BIT(i32 3)
  %320 = zext i8 %319 to i32
  %321 = and i32 %318, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %314
  %324 = call zeroext i8 @BIT(i32 5)
  %325 = zext i8 %324 to i32
  %326 = load i8, i8* %7, align 1
  %327 = zext i8 %326 to i32
  %328 = or i32 %327, %325
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %7, align 1
  br label %330

330:                                              ; preds = %323, %314
  %331 = load i8, i8* %7, align 1
  %332 = zext i8 %331 to i32
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = load i8, i8* %7, align 1
  %336 = load i8*, i8** %6, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 3
  store i8 %335, i8* %337, align 1
  br label %338

338:                                              ; preds = %334, %330
  %339 = load i8*, i8** %6, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 3
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = ashr i32 %342, 4
  %344 = and i32 %343, 1
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %9, align 1
  %346 = load i8*, i8** %6, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 3
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i32
  %350 = ashr i32 %349, 5
  %351 = and i32 %350, 1
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %8, align 1
  br label %353

353:                                              ; preds = %338, %264
  %354 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %355 = load i32, i32* @REL_WHEEL, align 4
  %356 = load i8*, i8** %6, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 3
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = and i32 %359, 8
  %361 = load i8*, i8** %6, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 3
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = and i32 %364, 7
  %366 = sub nsw i32 %360, %365
  %367 = trunc i32 %366 to i8
  %368 = call i32 @input_report_rel(%struct.input_dev* %354, i32 %355, i8 zeroext %367)
  %369 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %370 = load i32, i32* @REL_HWHEEL, align 4
  %371 = load i8, i8* %8, align 1
  %372 = zext i8 %371 to i32
  %373 = load i8, i8* %9, align 1
  %374 = zext i8 %373 to i32
  %375 = sub nsw i32 %372, %374
  %376 = trunc i32 %375 to i8
  %377 = call i32 @input_report_rel(%struct.input_dev* %369, i32 %370, i8 zeroext %376)
  %378 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %379 = load i32, i32* @BTN_BACK, align 4
  %380 = load i8, i8* %8, align 1
  %381 = call i32 @input_report_key(%struct.input_dev* %378, i32 %379, i8 zeroext %380)
  %382 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %383 = load i32, i32* @BTN_FORWARD, align 4
  %384 = load i8, i8* %9, align 1
  %385 = call i32 @input_report_key(%struct.input_dev* %382, i32 %383, i8 zeroext %384)
  %386 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %387 = load i8*, i8** %6, align 8
  %388 = call i32 @psmouse_report_standard_packet(%struct.input_dev* %386, i8* %387)
  br label %389

389:                                              ; preds = %28, %353, %205
  %390 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %391 = call i32 @input_sync(%struct.input_dev* %390)
  %392 = load i32, i32* @PSMOUSE_FULL_PACKET, align 4
  store i32 %392, i32* %2, align 4
  br label %393

393:                                              ; preds = %389, %26
  %394 = load i32, i32* %2, align 4
  ret i32 %394
}

declare dso_local i32 @fsp_packet_debug(%struct.psmouse*, i8*) #1

declare dso_local zeroext i16 @GET_ABS_X(i8*) #1

declare dso_local zeroext i16 @GET_ABS_Y(i8*) #1

declare dso_local i32 @fsp_set_slot(%struct.input_dev*, i32, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i16 zeroext) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @BIT(i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @psmouse_report_standard_packet(%struct.input_dev*, i8*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
