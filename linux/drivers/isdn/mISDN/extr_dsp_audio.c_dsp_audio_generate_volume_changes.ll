; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_volume_changes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_dsp_audio.c_dsp_audio_generate_volume_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.dsp_audio_generate_volume_changes.num = private unnamed_addr constant [8 x i32] [i32 110, i32 125, i32 150, i32 175, i32 200, i32 300, i32 400, i32 500], align 16
@__const.dsp_audio_generate_volume_changes.denum = private unnamed_addr constant [8 x i32] [i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100, i32 100], align 16
@dsp_audio_s16_to_law = common dso_local global i8** null, align 8
@dsp_audio_law_to_s32 = common dso_local global i32* null, align 8
@dsp_audio_reduce8 = common dso_local global i8** null, align 8
@dsp_audio_reduce7 = common dso_local global i8** null, align 8
@dsp_audio_reduce6 = common dso_local global i8** null, align 8
@dsp_audio_reduce5 = common dso_local global i8** null, align 8
@dsp_audio_reduce4 = common dso_local global i8** null, align 8
@dsp_audio_reduce3 = common dso_local global i8** null, align 8
@dsp_audio_reduce2 = common dso_local global i8** null, align 8
@dsp_audio_reduce1 = common dso_local global i8** null, align 8
@dsp_audio_increase1 = common dso_local global i8** null, align 8
@dsp_audio_increase2 = common dso_local global i8** null, align 8
@dsp_audio_increase3 = common dso_local global i8** null, align 8
@dsp_audio_increase4 = common dso_local global i8** null, align 8
@dsp_audio_increase5 = common dso_local global i8** null, align 8
@dsp_audio_increase6 = common dso_local global i8** null, align 8
@dsp_audio_increase7 = common dso_local global i8** null, align 8
@dsp_audio_increase8 = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsp_audio_generate_volume_changes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [8 x i32], align 16
  %4 = alloca [8 x i32], align 16
  %5 = bitcast [8 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([8 x i32]* @__const.dsp_audio_generate_volume_changes.num to i8*), i64 32, i1 false)
  %6 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([8 x i32]* @__const.dsp_audio_generate_volume_changes.denum to i8*), i64 32, i1 false)
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %400, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %413

10:                                               ; preds = %7
  %11 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %12 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %16, %18
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 7
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %19, %21
  %23 = and i32 %22, 65535
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %11, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** @dsp_audio_reduce8, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %26, i8** %30, align 8
  %31 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %32 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %36, %38
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 6
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %39, %41
  %43 = and i32 %42, 65535
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %31, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** @dsp_audio_reduce7, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %46, i8** %50, align 8
  %51 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %52 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %59, %61
  %63 = and i32 %62, 65535
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %51, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** @dsp_audio_reduce6, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %66, i8** %70, align 8
  %71 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %72 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %78 = load i32, i32* %77, align 16
  %79 = mul nsw i32 %76, %78
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %81 = load i32, i32* %80, align 16
  %82 = sdiv i32 %79, %81
  %83 = and i32 %82, 65535
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %71, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = load i8**, i8*** @dsp_audio_reduce5, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %86, i8** %90, align 8
  %91 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %92 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %96, %98
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %99, %101
  %103 = and i32 %102, 65535
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %91, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** @dsp_audio_reduce4, align 8
  %108 = load i32, i32* %2, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %106, i8** %110, align 8
  %111 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %112 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %113 = load i32, i32* %2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = mul nsw i32 %116, %118
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %119, %121
  %123 = and i32 %122, 65535
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %111, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i8**, i8*** @dsp_audio_reduce3, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %126, i8** %130, align 8
  %131 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %132 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %136, %138
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %139, %141
  %143 = and i32 %142, 65535
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %131, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = load i8**, i8*** @dsp_audio_reduce2, align 8
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %146, i8** %150, align 8
  %151 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %152 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %153 = load i32, i32* %2, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %158 = load i32, i32* %157, align 16
  %159 = mul nsw i32 %156, %158
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %161 = load i32, i32* %160, align 16
  %162 = sdiv i32 %159, %161
  %163 = and i32 %162, 65535
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %151, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = load i8**, i8*** @dsp_audio_reduce1, align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  store i8* %166, i8** %170, align 8
  %171 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %177 = load i32, i32* %176, align 16
  %178 = mul nsw i32 %175, %177
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %180 = load i32, i32* %179, align 16
  %181 = sdiv i32 %178, %180
  store i32 %181, i32* %1, align 4
  %182 = load i32, i32* %1, align 4
  %183 = icmp slt i32 %182, -32768
  br i1 %183, label %184, label %185

184:                                              ; preds = %10
  store i32 -32768, i32* %1, align 4
  br label %190

185:                                              ; preds = %10
  %186 = load i32, i32* %1, align 4
  %187 = icmp sgt i32 %186, 32767
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 32767, i32* %1, align 4
  br label %189

189:                                              ; preds = %188, %185
  br label %190

190:                                              ; preds = %189, %184
  %191 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %192 = load i32, i32* %1, align 4
  %193 = and i32 %192, 65535
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %191, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = load i8**, i8*** @dsp_audio_increase1, align 8
  %198 = load i32, i32* %2, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  store i8* %196, i8** %200, align 8
  %201 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %205, %207
  %209 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = sdiv i32 %208, %210
  store i32 %211, i32* %1, align 4
  %212 = load i32, i32* %1, align 4
  %213 = icmp slt i32 %212, -32768
  br i1 %213, label %214, label %215

214:                                              ; preds = %190
  store i32 -32768, i32* %1, align 4
  br label %220

215:                                              ; preds = %190
  %216 = load i32, i32* %1, align 4
  %217 = icmp sgt i32 %216, 32767
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 32767, i32* %1, align 4
  br label %219

219:                                              ; preds = %218, %215
  br label %220

220:                                              ; preds = %219, %214
  %221 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %222 = load i32, i32* %1, align 4
  %223 = and i32 %222, 65535
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %221, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** @dsp_audio_increase2, align 8
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  store i8* %226, i8** %230, align 8
  %231 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %232 = load i32, i32* %2, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %237 = load i32, i32* %236, align 8
  %238 = mul nsw i32 %235, %237
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  %240 = load i32, i32* %239, align 8
  %241 = sdiv i32 %238, %240
  store i32 %241, i32* %1, align 4
  %242 = load i32, i32* %1, align 4
  %243 = icmp slt i32 %242, -32768
  br i1 %243, label %244, label %245

244:                                              ; preds = %220
  store i32 -32768, i32* %1, align 4
  br label %250

245:                                              ; preds = %220
  %246 = load i32, i32* %1, align 4
  %247 = icmp sgt i32 %246, 32767
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 32767, i32* %1, align 4
  br label %249

249:                                              ; preds = %248, %245
  br label %250

250:                                              ; preds = %249, %244
  %251 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %252 = load i32, i32* %1, align 4
  %253 = and i32 %252, 65535
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %251, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load i8**, i8*** @dsp_audio_increase3, align 8
  %258 = load i32, i32* %2, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  store i8* %256, i8** %260, align 8
  %261 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %262 = load i32, i32* %2, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %265, %267
  %269 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  %270 = load i32, i32* %269, align 4
  %271 = sdiv i32 %268, %270
  store i32 %271, i32* %1, align 4
  %272 = load i32, i32* %1, align 4
  %273 = icmp slt i32 %272, -32768
  br i1 %273, label %274, label %275

274:                                              ; preds = %250
  store i32 -32768, i32* %1, align 4
  br label %280

275:                                              ; preds = %250
  %276 = load i32, i32* %1, align 4
  %277 = icmp sgt i32 %276, 32767
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 32767, i32* %1, align 4
  br label %279

279:                                              ; preds = %278, %275
  br label %280

280:                                              ; preds = %279, %274
  %281 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %282 = load i32, i32* %1, align 4
  %283 = and i32 %282, 65535
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %281, i64 %284
  %286 = load i8*, i8** %285, align 8
  %287 = load i8**, i8*** @dsp_audio_increase4, align 8
  %288 = load i32, i32* %2, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %287, i64 %289
  store i8* %286, i8** %290, align 8
  %291 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %292 = load i32, i32* %2, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %297 = load i32, i32* %296, align 16
  %298 = mul nsw i32 %295, %297
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  %300 = load i32, i32* %299, align 16
  %301 = sdiv i32 %298, %300
  store i32 %301, i32* %1, align 4
  %302 = load i32, i32* %1, align 4
  %303 = icmp slt i32 %302, -32768
  br i1 %303, label %304, label %305

304:                                              ; preds = %280
  store i32 -32768, i32* %1, align 4
  br label %310

305:                                              ; preds = %280
  %306 = load i32, i32* %1, align 4
  %307 = icmp sgt i32 %306, 32767
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store i32 32767, i32* %1, align 4
  br label %309

309:                                              ; preds = %308, %305
  br label %310

310:                                              ; preds = %309, %304
  %311 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %312 = load i32, i32* %1, align 4
  %313 = and i32 %312, 65535
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %311, i64 %314
  %316 = load i8*, i8** %315, align 8
  %317 = load i8**, i8*** @dsp_audio_increase5, align 8
  %318 = load i32, i32* %2, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8*, i8** %317, i64 %319
  store i8* %316, i8** %320, align 8
  %321 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %322 = load i32, i32* %2, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %325, %327
  %329 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  %330 = load i32, i32* %329, align 4
  %331 = sdiv i32 %328, %330
  store i32 %331, i32* %1, align 4
  %332 = load i32, i32* %1, align 4
  %333 = icmp slt i32 %332, -32768
  br i1 %333, label %334, label %335

334:                                              ; preds = %310
  store i32 -32768, i32* %1, align 4
  br label %340

335:                                              ; preds = %310
  %336 = load i32, i32* %1, align 4
  %337 = icmp sgt i32 %336, 32767
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  store i32 32767, i32* %1, align 4
  br label %339

339:                                              ; preds = %338, %335
  br label %340

340:                                              ; preds = %339, %334
  %341 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %342 = load i32, i32* %1, align 4
  %343 = and i32 %342, 65535
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %341, i64 %344
  %346 = load i8*, i8** %345, align 8
  %347 = load i8**, i8*** @dsp_audio_increase6, align 8
  %348 = load i32, i32* %2, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  store i8* %346, i8** %350, align 8
  %351 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %352 = load i32, i32* %2, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 6
  %357 = load i32, i32* %356, align 8
  %358 = mul nsw i32 %355, %357
  %359 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  %360 = load i32, i32* %359, align 8
  %361 = sdiv i32 %358, %360
  store i32 %361, i32* %1, align 4
  %362 = load i32, i32* %1, align 4
  %363 = icmp slt i32 %362, -32768
  br i1 %363, label %364, label %365

364:                                              ; preds = %340
  store i32 -32768, i32* %1, align 4
  br label %370

365:                                              ; preds = %340
  %366 = load i32, i32* %1, align 4
  %367 = icmp sgt i32 %366, 32767
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  store i32 32767, i32* %1, align 4
  br label %369

369:                                              ; preds = %368, %365
  br label %370

370:                                              ; preds = %369, %364
  %371 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %372 = load i32, i32* %1, align 4
  %373 = and i32 %372, 65535
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8*, i8** %371, i64 %374
  %376 = load i8*, i8** %375, align 8
  %377 = load i8**, i8*** @dsp_audio_increase7, align 8
  %378 = load i32, i32* %2, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i8*, i8** %377, i64 %379
  store i8* %376, i8** %380, align 8
  %381 = load i32*, i32** @dsp_audio_law_to_s32, align 8
  %382 = load i32, i32* %2, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 7
  %387 = load i32, i32* %386, align 4
  %388 = mul nsw i32 %385, %387
  %389 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  %390 = load i32, i32* %389, align 4
  %391 = sdiv i32 %388, %390
  store i32 %391, i32* %1, align 4
  %392 = load i32, i32* %1, align 4
  %393 = icmp slt i32 %392, -32768
  br i1 %393, label %394, label %395

394:                                              ; preds = %370
  store i32 -32768, i32* %1, align 4
  br label %400

395:                                              ; preds = %370
  %396 = load i32, i32* %1, align 4
  %397 = icmp sgt i32 %396, 32767
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  store i32 32767, i32* %1, align 4
  br label %399

399:                                              ; preds = %398, %395
  br label %400

400:                                              ; preds = %399, %394
  %401 = load i8**, i8*** @dsp_audio_s16_to_law, align 8
  %402 = load i32, i32* %1, align 4
  %403 = and i32 %402, 65535
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8*, i8** %401, i64 %404
  %406 = load i8*, i8** %405, align 8
  %407 = load i8**, i8*** @dsp_audio_increase8, align 8
  %408 = load i32, i32* %2, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %407, i64 %409
  store i8* %406, i8** %410, align 8
  %411 = load i32, i32* %2, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %2, align 4
  br label %7

413:                                              ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
