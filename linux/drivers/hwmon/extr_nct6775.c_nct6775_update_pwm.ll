; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_update_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nct6775_data = type { i32, i32, i32*, i32*, i32*, i32*, i32**, i32**, i64*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32** }

@speed_cruise = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @nct6775_update_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_update_pwm(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.nct6775_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call %struct.nct6775_data* @dev_get_drvdata(%struct.device* %10)
  store %struct.nct6775_data* %11, %struct.nct6775_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %354, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %15 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %357

18:                                               ; preds = %12
  %19 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %20 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  br label %354

27:                                               ; preds = %18
  %28 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %29 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %27
  %37 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %38 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %39 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nct6775_read_value(%struct.nct6775_data* %37, i32 %44)
  %46 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %47 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %45, %52
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %36, %27
  %56 = phi i1 [ false, %27 ], [ %54, %36 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %63 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %69 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %70 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nct6775_read_value(%struct.nct6775_data* %68, i32 %75)
  store i32 %76, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %131, %55
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %80 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %79, i32 0, i32 6
  %81 = load i32**, i32*** %80, align 8
  %82 = call i32 @ARRAY_SIZE(i32** %81)
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %134

84:                                               ; preds = %77
  %85 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %86 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %85, i32 0, i32 6
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %130

93:                                               ; preds = %84
  %94 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %95 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %94, i32 0, i32 6
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %93
  %107 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %108 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %109 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %108, i32 0, i32 6
  %110 = load i32**, i32*** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @nct6775_read_value(%struct.nct6775_data* %107, i32 %118)
  %120 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %121 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %120, i32 0, i32 7
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %119, i32* %129, align 4
  br label %130

130:                                              ; preds = %106, %93, %84
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %77

134:                                              ; preds = %77
  %135 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %136 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %135, i32 0, i32 7
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = ashr i32 %144, 4
  %146 = and i32 %145, 7
  %147 = call i64 @reg_to_pwm_enable(i32 %143, i32 %146)
  %148 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %149 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %148, i32 0, i32 8
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64 %147, i64* %153, align 8
  %154 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %155 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %154, i32 0, i32 9
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %134
  %165 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %166 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %165, i32 0, i32 8
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @speed_cruise, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %164, %134
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 15
  %177 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %178 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %177, i32 0, i32 9
  %179 = load i32**, i32*** %178, align 8
  %180 = getelementptr inbounds i32*, i32** %179, i64 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  store i32 %176, i32* %184, align 4
  br label %185

185:                                              ; preds = %174, %164
  %186 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %187 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %186, i32 0, i32 10
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %185
  %195 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %196 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %195, i32 0, i32 8
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %4, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @speed_cruise, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %233

204:                                              ; preds = %194, %185
  %205 = load i32, i32* %6, align 4
  %206 = and i32 %205, 15
  store i32 %206, i32* %9, align 4
  %207 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %208 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %207, i32 0, i32 11
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %225

211:                                              ; preds = %204
  %212 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %213 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %214 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %213, i32 0, i32 11
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @nct6775_read_value(%struct.nct6775_data* %212, i32 %219)
  %221 = and i32 %220, 112
  %222 = ashr i32 %221, 1
  %223 = load i32, i32* %9, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %9, align 4
  br label %225

225:                                              ; preds = %211, %204
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %228 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %227, i32 0, i32 10
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %226, i32* %232, align 4
  br label %233

233:                                              ; preds = %225, %194
  %234 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %235 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %236 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %235, i32 0, i32 12
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %4, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @nct6775_read_value(%struct.nct6775_data* %234, i32 %241)
  %243 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %244 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %243, i32 0, i32 9
  %245 = load i32**, i32*** %244, align 8
  %246 = getelementptr inbounds i32*, i32** %245, i64 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %4, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %242, i32* %250, align 4
  %251 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %252 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %253 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %252, i32 0, i32 13
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @nct6775_read_value(%struct.nct6775_data* %251, i32 %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = and i32 %260, 31
  %262 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %263 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %262, i32 0, i32 14
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  store i32 %261, i32* %267, align 4
  %268 = load i32, i32* %7, align 4
  %269 = and i32 %268, 128
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %233
  %272 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %273 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %272, i32 0, i32 7
  %274 = load i32**, i32*** %273, align 8
  %275 = getelementptr inbounds i32*, i32** %274, i64 2
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %4, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  store i32 0, i32* %279, align 4
  br label %280

280:                                              ; preds = %271, %233
  %281 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %282 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %281, i32 0, i32 15
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %4, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %280
  br label %354

290:                                              ; preds = %280
  %291 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %292 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %293 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %292, i32 0, i32 15
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %4, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @nct6775_read_value(%struct.nct6775_data* %291, i32 %298)
  store i32 %299, i32* %7, align 4
  %300 = load i32, i32* %7, align 4
  %301 = and i32 %300, 31
  %302 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %303 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %302, i32 0, i32 16
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %4, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 %301, i32* %307, align 4
  %308 = load i32, i32* %7, align 4
  %309 = and i32 %308, 128
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %318, label %311

311:                                              ; preds = %290
  %312 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %313 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %312, i32 0, i32 16
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 0, i32* %317, align 4
  br label %318

318:                                              ; preds = %311, %290
  store i32 0, i32* %5, align 4
  br label %319

319:                                              ; preds = %350, %318
  %320 = load i32, i32* %5, align 4
  %321 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %322 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %321, i32 0, i32 17
  %323 = load i32**, i32*** %322, align 8
  %324 = call i32 @ARRAY_SIZE(i32** %323)
  %325 = icmp slt i32 %320, %324
  br i1 %325, label %326, label %353

326:                                              ; preds = %319
  %327 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %328 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %329 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %328, i32 0, i32 18
  %330 = load i32**, i32*** %329, align 8
  %331 = load i32, i32* %5, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %330, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %4, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @nct6775_read_value(%struct.nct6775_data* %327, i32 %338)
  %340 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %341 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %340, i32 0, i32 17
  %342 = load i32**, i32*** %341, align 8
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32*, i32** %342, i64 %344
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %4, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  store i32 %339, i32* %349, align 4
  br label %350

350:                                              ; preds = %326
  %351 = load i32, i32* %5, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %5, align 4
  br label %319

353:                                              ; preds = %319
  br label %354

354:                                              ; preds = %353, %289, %26
  %355 = load i32, i32* %4, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %4, align 4
  br label %12

357:                                              ; preds = %12
  ret void
}

declare dso_local %struct.nct6775_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i64 @reg_to_pwm_enable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
