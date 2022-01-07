; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_monitor_mode_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_max1363.c_max1363_monitor_mode_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }
%struct.max1363_state = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32 (i32, i32*, i32)*, i32 }

@MAX1363_SETUP_MONITOR_SETUP = common dso_local global i32 0, align 4
@MAX1363_SCAN_MASK = common dso_local global i32 0, align 4
@MAX1363_CHANNEL_SEL_MASK = common dso_local global i32 0, align 4
@MAX1363_SE_DE_MASK = common dso_local global i32 0, align 4
@MAX1363_CONFIG_SCAN_MONITOR_MODE = common dso_local global i32 0, align 4
@max1363_mode_table = common dso_local global %struct.TYPE_2__* null, align 8
@s0to3 = common dso_local global i64 0, align 8
@d0m1to2m3 = common dso_local global i64 0, align 8
@d1m0to3m2 = common dso_local global i64 0, align 8
@MAX1363_MAX_CHANNELS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MAX1363_MON_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max1363_state*, i32)* @max1363_monitor_mode_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1363_monitor_mode_update(%struct.max1363_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max1363_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.max1363_state* %0, %struct.max1363_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 3, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX1363_SETUP_MONITOR_SETUP, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %19 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @MAX1363_SCAN_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %25 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %29 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %31 = call i32 @max1363_write_basic_config(%struct.max1363_state* %30)
  store i32 %31, i32* %3, align 4
  br label %353

32:                                               ; preds = %2
  %33 = load i32, i32* @MAX1363_SETUP_MONITOR_SETUP, align 4
  %34 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %35 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @MAX1363_CHANNEL_SEL_MASK, align 4
  %39 = load i32, i32* @MAX1363_SCAN_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAX1363_SE_DE_MASK, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %45 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @MAX1363_CONFIG_SCAN_MONITOR_MODE, align 4
  %49 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %50 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %54 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %57 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %55, %58
  %60 = and i32 %59, 15
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %32
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max1363_mode_table, align 8
  %64 = load i64, i64* @s0to3, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %69 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max1363_mode_table, align 8
  %73 = load i64, i64* @s0to3, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  store i64* %76, i64** %12, align 8
  br label %118

77:                                               ; preds = %32
  %78 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %79 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %82 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %80, %83
  %85 = and i32 %84, 48
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %77
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max1363_mode_table, align 8
  %89 = load i64, i64* @d0m1to2m3, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %94 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max1363_mode_table, align 8
  %98 = load i64, i64* @d0m1to2m3, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  store i64* %101, i64** %12, align 8
  br label %117

102:                                              ; preds = %77
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max1363_mode_table, align 8
  %104 = load i64, i64* @d1m0to3m2, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %109 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @max1363_mode_table, align 8
  %113 = load i64, i64* @d1m0to3m2, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  store i64* %116, i64** %12, align 8
  br label %117

117:                                              ; preds = %102, %87
  br label %118

118:                                              ; preds = %117, %62
  %119 = load i64*, i64** %12, align 8
  %120 = load i32, i32* @MAX1363_MAX_CHANNELS, align 4
  %121 = call i64 @bitmap_weight(i64* %119, i32 %120)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = mul i64 3, %122
  %124 = add i64 %123, 3
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i32* @kmalloc(i32 %126, i32 %127)
  store i32* %128, i32** %6, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %118
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %349

134:                                              ; preds = %118
  %135 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %136 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %6, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %141 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %146 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 1
  %149 = load i32*, i32** %6, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 %148, i32* %150, align 4
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %291, %134
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 8
  br i1 %153, label %154, label %294

154:                                              ; preds = %151
  %155 = load i32, i32* %9, align 4
  %156 = load i64*, i64** %12, align 8
  %157 = call i64 @test_bit(i32 %155, i64* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %290

159:                                              ; preds = %154
  %160 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %161 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = shl i32 1, %163
  %165 = and i32 %162, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %159
  %168 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %169 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %174, 4
  %176 = and i32 %175, 255
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %182 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %181, i32 0, i32 6
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 4
  %189 = and i32 %188, 240
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  br label %219

195:                                              ; preds = %159
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 4
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 0, i32* %202, align 4
  %203 = load i32*, i32** %6, align 8
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32 0, i32* %207, align 4
  br label %218

208:                                              ; preds = %195
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 128, i32* %212, align 4
  %213 = load i32*, i32** %6, align 8
  %214 = load i32, i32* %8, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 0, i32* %217, align 4
  br label %218

218:                                              ; preds = %208, %198
  br label %219

219:                                              ; preds = %218, %167
  %220 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %221 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %9, align 4
  %224 = shl i32 1, %223
  %225 = and i32 %222, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %219
  %228 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %229 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %228, i32 0, i32 7
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = ashr i32 %234, 8
  %236 = and i32 %235, 15
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %236
  store i32 %243, i32* %241, align 4
  %244 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %245 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %244, i32 0, i32 7
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 255
  %252 = load i32*, i32** %6, align 8
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, 2
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  store i32 %251, i32* %256, align 4
  br label %287

257:                                              ; preds = %219
  %258 = load i32, i32* %9, align 4
  %259 = icmp slt i32 %258, 4
  br i1 %259, label %260, label %273

260:                                              ; preds = %257
  %261 = load i32*, i32** %6, align 8
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, 15
  store i32 %267, i32* %265, align 4
  %268 = load i32*, i32** %6, align 8
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 %269, 2
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 255, i32* %272, align 4
  br label %286

273:                                              ; preds = %257
  %274 = load i32*, i32** %6, align 8
  %275 = load i32, i32* %8, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, 7
  store i32 %280, i32* %278, align 4
  %281 = load i32*, i32** %6, align 8
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %282, 2
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 255, i32* %285, align 4
  br label %286

286:                                              ; preds = %273, %260
  br label %287

287:                                              ; preds = %286, %227
  %288 = load i32, i32* %8, align 4
  %289 = add nsw i32 %288, 3
  store i32 %289, i32* %8, align 4
  br label %290

290:                                              ; preds = %287, %154
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %151

294:                                              ; preds = %151
  %295 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %296 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %295, i32 0, i32 8
  %297 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %296, align 8
  %298 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %299 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = load i32*, i32** %6, align 8
  %302 = load i32, i32* %11, align 4
  %303 = call i32 %297(i32 %300, i32* %301, i32 %302)
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* %7, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %294
  br label %349

307:                                              ; preds = %294
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %11, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %307
  %312 = load i32, i32* @EIO, align 4
  %313 = sub nsw i32 0, %312
  store i32 %313, i32* %7, align 4
  br label %349

314:                                              ; preds = %307
  %315 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %316 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32*, i32** %6, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* @MAX1363_MON_INT_ENABLE, align 4
  %321 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %322 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %321, i32 0, i32 5
  %323 = load i32, i32* %322, align 4
  %324 = shl i32 %323, 1
  %325 = or i32 %320, %324
  %326 = or i32 %325, 240
  %327 = load i32*, i32** %6, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  store i32 %326, i32* %328, align 4
  %329 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %330 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %329, i32 0, i32 8
  %331 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %330, align 8
  %332 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %333 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %332, i32 0, i32 9
  %334 = load i32, i32* %333, align 8
  %335 = load i32*, i32** %6, align 8
  %336 = call i32 %331(i32 %334, i32* %335, i32 2)
  store i32 %336, i32* %7, align 4
  %337 = load i32, i32* %7, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %314
  br label %349

340:                                              ; preds = %314
  %341 = load i32, i32* %7, align 4
  %342 = icmp ne i32 %341, 2
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load i32, i32* @EIO, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %7, align 4
  br label %349

346:                                              ; preds = %340
  store i32 0, i32* %7, align 4
  %347 = load %struct.max1363_state*, %struct.max1363_state** %4, align 8
  %348 = getelementptr inbounds %struct.max1363_state, %struct.max1363_state* %347, i32 0, i32 2
  store i32 1, i32* %348, align 8
  br label %349

349:                                              ; preds = %346, %343, %339, %311, %306, %131
  %350 = load i32*, i32** %6, align 8
  %351 = call i32 @kfree(i32* %350)
  %352 = load i32, i32* %7, align 4
  store i32 %352, i32* %3, align 4
  br label %353

353:                                              ; preds = %349, %15
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

declare dso_local i32 @max1363_write_basic_config(%struct.max1363_state*) #1

declare dso_local i64 @bitmap_weight(i64*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
