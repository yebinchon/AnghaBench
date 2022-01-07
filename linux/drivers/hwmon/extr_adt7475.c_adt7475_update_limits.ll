; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_update_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_update_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i32, i32, i32, i32**, i32**, i32**, i32**, i32*, i32, i32 }

@REG_CONFIG4 = common dso_local global i32 0, align 4
@REG_CONFIG5 = common dso_local global i32 0, align 4
@ADT7475_VOLTAGE_COUNT = common dso_local global i32 0, align 4
@MIN = common dso_local global i64 0, align 8
@MAX = common dso_local global i64 0, align 8
@REG_VTT_MIN = common dso_local global i32 0, align 4
@REG_VTT_MAX = common dso_local global i32 0, align 4
@ADT7475_TEMP_COUNT = common dso_local global i32 0, align 4
@AUTOMIN = common dso_local global i64 0, align 8
@THERM = common dso_local global i64 0, align 8
@OFFSET = common dso_local global i64 0, align 8
@ADT7475_TACH_COUNT = common dso_local global i32 0, align 4
@ADT7475_PWM_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adt7475_update_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7475_update_limits(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adt7475_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.adt7475_data* %8, %struct.adt7475_data** %4, align 8
  %9 = load i32, i32* @REG_CONFIG4, align 4
  %10 = call i32 @adt7475_read(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %359

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %18 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @REG_CONFIG5, align 4
  %20 = call i32 @adt7475_read(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %359

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %28 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %81, %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ADT7475_VOLTAGE_COUNT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %29
  %34 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %35 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %81

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @VOLTAGE_MIN_REG(i32 %43)
  %45 = call i32 @adt7475_read(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %359

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 2
  %53 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %54 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %53, i32 0, i32 3
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* @MIN, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %52, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @VOLTAGE_MAX_REG(i32 %62)
  %64 = call i32 @adt7475_read(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %359

69:                                               ; preds = %50
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 %70, 2
  %72 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %73 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %72, i32 0, i32 3
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* @MAX, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %71, i32* %80, align 4
  br label %81

81:                                               ; preds = %69, %41
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %29

84:                                               ; preds = %29
  %85 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %86 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %84
  %91 = load i32, i32* @REG_VTT_MIN, align 4
  %92 = call i32 @adt7475_read(i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %359

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %98, 2
  %100 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %101 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %100, i32 0, i32 3
  %102 = load i32**, i32*** %101, align 8
  %103 = load i64, i64* @MIN, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 5
  store i32 %99, i32* %106, align 4
  %107 = load i32, i32* @REG_VTT_MAX, align 4
  %108 = call i32 @adt7475_read(i32 %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %97
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %2, align 4
  br label %359

113:                                              ; preds = %97
  %114 = load i32, i32* %6, align 4
  %115 = shl i32 %114, 2
  %116 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %117 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %116, i32 0, i32 3
  %118 = load i32**, i32*** %117, align 8
  %119 = load i64, i64* @MAX, align 8
  %120 = getelementptr inbounds i32*, i32** %118, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %115, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %84
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %223, %123
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @ADT7475_TEMP_COUNT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %226

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @TEMP_MIN_REG(i32 %129)
  %131 = call i32 @adt7475_read(i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %2, align 4
  br label %359

136:                                              ; preds = %128
  %137 = load i32, i32* %6, align 4
  %138 = shl i32 %137, 2
  %139 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %140 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %139, i32 0, i32 4
  %141 = load i32**, i32*** %140, align 8
  %142 = load i64, i64* @MIN, align 8
  %143 = getelementptr inbounds i32*, i32** %141, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %138, i32* %147, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @TEMP_MAX_REG(i32 %148)
  %150 = call i32 @adt7475_read(i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %136
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %2, align 4
  br label %359

155:                                              ; preds = %136
  %156 = load i32, i32* %6, align 4
  %157 = shl i32 %156, 2
  %158 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %159 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %158, i32 0, i32 4
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @MAX, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %157, i32* %166, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @TEMP_TMIN_REG(i32 %167)
  %169 = call i32 @adt7475_read(i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %155
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %359

174:                                              ; preds = %155
  %175 = load i32, i32* %6, align 4
  %176 = shl i32 %175, 2
  %177 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %178 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %177, i32 0, i32 4
  %179 = load i32**, i32*** %178, align 8
  %180 = load i64, i64* @AUTOMIN, align 8
  %181 = getelementptr inbounds i32*, i32** %179, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %176, i32* %185, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @TEMP_THERM_REG(i32 %186)
  %188 = call i32 @adt7475_read(i32 %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %174
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %2, align 4
  br label %359

193:                                              ; preds = %174
  %194 = load i32, i32* %6, align 4
  %195 = shl i32 %194, 2
  %196 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %197 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %196, i32 0, i32 4
  %198 = load i32**, i32*** %197, align 8
  %199 = load i64, i64* @THERM, align 8
  %200 = getelementptr inbounds i32*, i32** %198, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %195, i32* %204, align 4
  %205 = load i32, i32* %5, align 4
  %206 = call i32 @TEMP_OFFSET_REG(i32 %205)
  %207 = call i32 @adt7475_read(i32 %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %193
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %2, align 4
  br label %359

212:                                              ; preds = %193
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %215 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %214, i32 0, i32 4
  %216 = load i32**, i32*** %215, align 8
  %217 = load i64, i64* @OFFSET, align 8
  %218 = getelementptr inbounds i32*, i32** %216, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %213, i32* %222, align 4
  br label %223

223:                                              ; preds = %212
  %224 = load i32, i32* %5, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  br label %124

226:                                              ; preds = %124
  %227 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %228 = call i32 @adt7475_read_hystersis(%struct.i2c_client* %227)
  store i32 0, i32* %5, align 4
  br label %229

229:                                              ; preds = %262, %226
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @ADT7475_TACH_COUNT, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %265

233:                                              ; preds = %229
  %234 = load i32, i32* %5, align 4
  %235 = icmp eq i32 %234, 3
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %238 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %237, i32 0, i32 9
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  br label %262

242:                                              ; preds = %236, %233
  %243 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @TACH_MIN_REG(i32 %244)
  %246 = call i32 @adt7475_read_word(%struct.i2c_client* %243, i32 %245)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %2, align 4
  br label %359

251:                                              ; preds = %242
  %252 = load i32, i32* %6, align 4
  %253 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %254 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %253, i32 0, i32 5
  %255 = load i32**, i32*** %254, align 8
  %256 = load i64, i64* @MIN, align 8
  %257 = getelementptr inbounds i32*, i32** %255, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %5, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 %252, i32* %261, align 4
  br label %262

262:                                              ; preds = %251, %241
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %229

265:                                              ; preds = %229
  store i32 0, i32* %5, align 4
  br label %266

266:                                              ; preds = %319, %265
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* @ADT7475_PWM_COUNT, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %322

270:                                              ; preds = %266
  %271 = load i32, i32* %5, align 4
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %275 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %274, i32 0, i32 8
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %273
  br label %319

279:                                              ; preds = %273, %270
  %280 = load i32, i32* %5, align 4
  %281 = call i32 @PWM_MAX_REG(i32 %280)
  %282 = call i32 @adt7475_read(i32 %281)
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* %6, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %279
  %286 = load i32, i32* %6, align 4
  store i32 %286, i32* %2, align 4
  br label %359

287:                                              ; preds = %279
  %288 = load i32, i32* %6, align 4
  %289 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %290 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %289, i32 0, i32 6
  %291 = load i32**, i32*** %290, align 8
  %292 = load i64, i64* @MAX, align 8
  %293 = getelementptr inbounds i32*, i32** %291, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  store i32 %288, i32* %297, align 4
  %298 = load i32, i32* %5, align 4
  %299 = call i32 @PWM_MIN_REG(i32 %298)
  %300 = call i32 @adt7475_read(i32 %299)
  store i32 %300, i32* %6, align 4
  %301 = load i32, i32* %6, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %287
  %304 = load i32, i32* %6, align 4
  store i32 %304, i32* %2, align 4
  br label %359

305:                                              ; preds = %287
  %306 = load i32, i32* %6, align 4
  %307 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %308 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %307, i32 0, i32 6
  %309 = load i32**, i32*** %308, align 8
  %310 = load i64, i64* @MIN, align 8
  %311 = getelementptr inbounds i32*, i32** %309, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %5, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %306, i32* %315, align 4
  %316 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %317 = load i32, i32* %5, align 4
  %318 = call i32 @adt7475_read_pwm(%struct.i2c_client* %316, i32 %317)
  br label %319

319:                                              ; preds = %305, %278
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %5, align 4
  br label %266

322:                                              ; preds = %266
  %323 = call i32 @TEMP_TRANGE_REG(i32 0)
  %324 = call i32 @adt7475_read(i32 %323)
  store i32 %324, i32* %6, align 4
  %325 = load i32, i32* %6, align 4
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = load i32, i32* %6, align 4
  store i32 %328, i32* %2, align 4
  br label %359

329:                                              ; preds = %322
  %330 = load i32, i32* %6, align 4
  %331 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %332 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %331, i32 0, i32 7
  %333 = load i32*, i32** %332, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  store i32 %330, i32* %334, align 4
  %335 = call i32 @TEMP_TRANGE_REG(i32 1)
  %336 = call i32 @adt7475_read(i32 %335)
  store i32 %336, i32* %6, align 4
  %337 = load i32, i32* %6, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %329
  %340 = load i32, i32* %6, align 4
  store i32 %340, i32* %2, align 4
  br label %359

341:                                              ; preds = %329
  %342 = load i32, i32* %6, align 4
  %343 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %344 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %343, i32 0, i32 7
  %345 = load i32*, i32** %344, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 1
  store i32 %342, i32* %346, align 4
  %347 = call i32 @TEMP_TRANGE_REG(i32 2)
  %348 = call i32 @adt7475_read(i32 %347)
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* %6, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %341
  %352 = load i32, i32* %6, align 4
  store i32 %352, i32* %2, align 4
  br label %359

353:                                              ; preds = %341
  %354 = load i32, i32* %6, align 4
  %355 = load %struct.adt7475_data*, %struct.adt7475_data** %4, align 8
  %356 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %355, i32 0, i32 7
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 2
  store i32 %354, i32* %358, align 4
  store i32 0, i32* %2, align 4
  br label %359

359:                                              ; preds = %353, %351, %339, %327, %303, %285, %249, %210, %191, %172, %153, %134, %111, %95, %67, %48, %23, %13
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @adt7475_read(i32) #1

declare dso_local i32 @VOLTAGE_MIN_REG(i32) #1

declare dso_local i32 @VOLTAGE_MAX_REG(i32) #1

declare dso_local i32 @TEMP_MIN_REG(i32) #1

declare dso_local i32 @TEMP_MAX_REG(i32) #1

declare dso_local i32 @TEMP_TMIN_REG(i32) #1

declare dso_local i32 @TEMP_THERM_REG(i32) #1

declare dso_local i32 @TEMP_OFFSET_REG(i32) #1

declare dso_local i32 @adt7475_read_hystersis(%struct.i2c_client*) #1

declare dso_local i32 @adt7475_read_word(%struct.i2c_client*, i32) #1

declare dso_local i32 @TACH_MIN_REG(i32) #1

declare dso_local i32 @PWM_MAX_REG(i32) #1

declare dso_local i32 @PWM_MIN_REG(i32) #1

declare dso_local i32 @adt7475_read_pwm(%struct.i2c_client*, i32) #1

declare dso_local i32 @TEMP_TRANGE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
