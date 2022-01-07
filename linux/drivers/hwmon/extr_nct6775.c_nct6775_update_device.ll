; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32, i32, i32, i32**, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32, i32, i32, i64, i64*, i64*, i64*, i64**, i32**, i64*, i64*, i32*, i64* (i32, i32)*, i64**, i64*, i64**, i64* }
%struct.device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@NUM_TEMP = common dso_local global i32 0, align 4
@NUM_TEMP_FIXED = common dso_local global i32 0, align 4
@NUM_REG_ALARM = common dso_local global i32 0, align 4
@NUM_REG_BEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nct6775_data* (%struct.device*)* @nct6775_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nct6775_data* @nct6775_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nct6775_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.nct6775_data* %10, %struct.nct6775_data** %3, align 8
  %11 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %12 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %11, i32 0, i32 14
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %16 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %15, i32 0, i32 15
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %14, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %29 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %401, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %34 = call i32 @nct6775_update_fan_div_common(%struct.nct6775_data* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %106, %32
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %38 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %35
  %42 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %43 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %106

50:                                               ; preds = %41
  %51 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %52 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %53 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %52, i32 0, i32 28
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @nct6775_read_value(%struct.nct6775_data* %51, i64 %58)
  %60 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %61 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %60, i32 0, i32 3
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %59, i32* %67, align 4
  %68 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %69 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %70 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %69, i32 0, i32 27
  %71 = load i64**, i64*** %70, align 8
  %72 = getelementptr inbounds i64*, i64** %71, i64 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @nct6775_read_value(%struct.nct6775_data* %68, i64 %77)
  %79 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %80 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %78, i32* %86, align 4
  %87 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %88 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %89 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %88, i32 0, i32 27
  %90 = load i64**, i64*** %89, align 8
  %91 = getelementptr inbounds i64*, i64** %90, i64 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @nct6775_read_value(%struct.nct6775_data* %87, i64 %96)
  %98 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %99 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %98, i32 0, i32 3
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 %97, i32* %105, align 4
  br label %106

106:                                              ; preds = %50, %49
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %35

109:                                              ; preds = %35
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %217, %109
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %113 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %112, i32 0, i32 25
  %114 = load i64**, i64*** %113, align 8
  %115 = call i32 @ARRAY_SIZE(i64** %114)
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %220

117:                                              ; preds = %110
  %118 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %119 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @BIT(i32 %121)
  %123 = and i32 %120, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117
  br label %217

126:                                              ; preds = %117
  %127 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %128 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %129 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %128, i32 0, i32 26
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @nct6775_read_value(%struct.nct6775_data* %127, i64 %134)
  store i32 %135, i32* %6, align 4
  %136 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %137 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %136, i32 0, i32 24
  %138 = load i64* (i32, i32)*, i64* (i32, i32)** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %141 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %140, i32 0, i32 23
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %4, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i64* %138(i32 %139, i32 %146)
  %148 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %149 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %148, i32 0, i32 25
  %150 = load i64**, i64*** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64*, i64** %150, i64 %152
  store i64* %147, i64** %153, align 8
  %154 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %155 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @BIT(i32 %157)
  %159 = and i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %126
  %162 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %163 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %164 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %163, i32 0, i32 22
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @nct6775_read_value(%struct.nct6775_data* %162, i64 %169)
  %171 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %172 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %170, i32* %176, align 4
  br label %177

177:                                              ; preds = %161, %126
  %178 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %179 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %178, i32 0, i32 21
  %180 = load i64*, i64** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %180, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %211

186:                                              ; preds = %177
  %187 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %188 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %189 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %188, i32 0, i32 21
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @nct6775_read_value(%struct.nct6775_data* %187, i64 %194)
  %196 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %197 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %196, i32 0, i32 8
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = ashr i32 %195, %202
  %204 = and i32 %203, 3
  %205 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %206 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %205, i32 0, i32 7
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  br label %211

211:                                              ; preds = %186, %177
  %212 = load %struct.device*, %struct.device** %2, align 8
  %213 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @nct6775_select_fan_div(%struct.device* %212, %struct.nct6775_data* %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %125
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %4, align 4
  br label %110

220:                                              ; preds = %110
  %221 = load %struct.device*, %struct.device** %2, align 8
  %222 = call i32 @nct6775_update_pwm(%struct.device* %221)
  %223 = load %struct.device*, %struct.device** %2, align 8
  %224 = call i32 @nct6775_update_pwm_limits(%struct.device* %223)
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %316, %220
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @NUM_TEMP, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %319

229:                                              ; preds = %225
  %230 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %231 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %230, i32 0, i32 9
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %4, align 4
  %234 = call i32 @BIT(i32 %233)
  %235 = and i32 %232, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %229
  br label %316

238:                                              ; preds = %229
  store i32 0, i32* %5, align 4
  br label %239

239:                                              ; preds = %284, %238
  %240 = load i32, i32* %5, align 4
  %241 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %242 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %241, i32 0, i32 19
  %243 = load i64**, i64*** %242, align 8
  %244 = call i32 @ARRAY_SIZE(i64** %243)
  %245 = icmp slt i32 %240, %244
  br i1 %245, label %246, label %287

246:                                              ; preds = %239
  %247 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %248 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %247, i32 0, i32 19
  %249 = load i64**, i64*** %248, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64*, i64** %249, i64 %251
  %253 = load i64*, i64** %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %253, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %283

259:                                              ; preds = %246
  %260 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %261 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %262 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %261, i32 0, i32 19
  %263 = load i64**, i64*** %262, align 8
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64*, i64** %263, i64 %265
  %267 = load i64*, i64** %266, align 8
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i64, i64* %267, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @nct6775_read_temp(%struct.nct6775_data* %260, i64 %271)
  %273 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %274 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %273, i32 0, i32 20
  %275 = load i32**, i32*** %274, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32*, i32** %275, i64 %277
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %4, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %272, i32* %282, align 4
  br label %283

283:                                              ; preds = %259, %246
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %5, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %5, align 4
  br label %239

287:                                              ; preds = %239
  %288 = load i32, i32* %4, align 4
  %289 = load i32, i32* @NUM_TEMP_FIXED, align 4
  %290 = icmp sge i32 %288, %289
  br i1 %290, label %299, label %291

291:                                              ; preds = %287
  %292 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %293 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %4, align 4
  %296 = call i32 @BIT(i32 %295)
  %297 = and i32 %294, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %291, %287
  br label %316

300:                                              ; preds = %291
  %301 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %302 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %303 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %302, i32 0, i32 18
  %304 = load i64*, i64** %303, align 8
  %305 = load i32, i32* %4, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = call i32 @nct6775_read_value(%struct.nct6775_data* %301, i64 %308)
  %310 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %311 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %310, i32 0, i32 11
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %4, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %309, i32* %315, align 4
  br label %316

316:                                              ; preds = %300, %299, %237
  %317 = load i32, i32* %4, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %4, align 4
  br label %225

319:                                              ; preds = %225
  %320 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %321 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %320, i32 0, i32 12
  store i32 0, i32* %321, align 8
  store i32 0, i32* %4, align 4
  br label %322

322:                                              ; preds = %354, %319
  %323 = load i32, i32* %4, align 4
  %324 = load i32, i32* @NUM_REG_ALARM, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %357

326:                                              ; preds = %322
  %327 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %328 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %327, i32 0, i32 17
  %329 = load i64*, i64** %328, align 8
  %330 = load i32, i32* %4, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %329, i64 %331
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %326
  br label %354

336:                                              ; preds = %326
  %337 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %338 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %339 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %338, i32 0, i32 17
  %340 = load i64*, i64** %339, align 8
  %341 = load i32, i32* %4, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i64, i64* %340, i64 %342
  %344 = load i64, i64* %343, align 8
  %345 = call i32 @nct6775_read_value(%struct.nct6775_data* %337, i64 %344)
  store i32 %345, i32* %7, align 4
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* %4, align 4
  %348 = shl i32 %347, 3
  %349 = shl i32 %346, %348
  %350 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %351 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %350, i32 0, i32 12
  %352 = load i32, i32* %351, align 8
  %353 = or i32 %352, %349
  store i32 %353, i32* %351, align 8
  br label %354

354:                                              ; preds = %336, %335
  %355 = load i32, i32* %4, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %4, align 4
  br label %322

357:                                              ; preds = %322
  %358 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %359 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %358, i32 0, i32 13
  store i32 0, i32* %359, align 4
  store i32 0, i32* %4, align 4
  br label %360

360:                                              ; preds = %392, %357
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* @NUM_REG_BEEP, align 4
  %363 = icmp slt i32 %361, %362
  br i1 %363, label %364, label %395

364:                                              ; preds = %360
  %365 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %366 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %365, i32 0, i32 16
  %367 = load i64*, i64** %366, align 8
  %368 = load i32, i32* %4, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %364
  br label %392

374:                                              ; preds = %364
  %375 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %376 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %377 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %376, i32 0, i32 16
  %378 = load i64*, i64** %377, align 8
  %379 = load i32, i32* %4, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i64, i64* %378, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = call i32 @nct6775_read_value(%struct.nct6775_data* %375, i64 %382)
  store i32 %383, i32* %8, align 4
  %384 = load i32, i32* %8, align 4
  %385 = load i32, i32* %4, align 4
  %386 = shl i32 %385, 3
  %387 = shl i32 %384, %386
  %388 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %389 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %388, i32 0, i32 13
  %390 = load i32, i32* %389, align 4
  %391 = or i32 %390, %387
  store i32 %391, i32* %389, align 4
  br label %392

392:                                              ; preds = %374, %373
  %393 = load i32, i32* %4, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %4, align 4
  br label %360

395:                                              ; preds = %360
  %396 = load i64, i64* @jiffies, align 8
  %397 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %398 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %397, i32 0, i32 15
  store i64 %396, i64* %398, align 8
  %399 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %400 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %399, i32 0, i32 0
  store i32 1, i32* %400, align 8
  br label %401

401:                                              ; preds = %395, %27
  %402 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %403 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %402, i32 0, i32 14
  %404 = call i32 @mutex_unlock(i32* %403)
  %405 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  ret %struct.nct6775_data* %405
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @nct6775_update_fan_div_common(%struct.nct6775_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i64) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @nct6775_select_fan_div(%struct.device*, %struct.nct6775_data*, i32, i32) #1

declare dso_local i32 @nct6775_update_pwm(%struct.device*) #1

declare dso_local i32 @nct6775_update_pwm_limits(%struct.device*) #1

declare dso_local i32 @nct6775_read_temp(%struct.nct6775_data*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
