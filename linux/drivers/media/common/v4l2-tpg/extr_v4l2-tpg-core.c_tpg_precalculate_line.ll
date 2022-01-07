; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_precalculate_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_precalculate_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32, i32, i32, i32*, i32*, i32***, i32*, i32***, i32**, i32**, i32**, i32**, i32**, i64 }

@TPG_MAX_PLANES = common dso_local global i32 0, align 4
@TPG_COLOR_100_RED = common dso_local global i32 0, align 4
@TPG_COLOR_CSC_GREEN = common dso_local global i32 0, align 4
@TPG_COLOR_100_GREEN = common dso_local global i32 0, align 4
@TPG_COLOR_100_BLACK = common dso_local global i32 0, align 4
@TPG_COLOR_RANDOM = common dso_local global i32 0, align 4
@TPG_COLOR_TEXTBG = common dso_local global i32 0, align 4
@TPG_COLOR_TEXTFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*)* @tpg_precalculate_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpg_precalculate_line(%struct.tpg_data* %0) #0 {
  %2 = alloca %struct.tpg_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
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
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  store %struct.tpg_data* %0, %struct.tpg_data** %2, align 8
  %31 = load i32, i32* @TPG_MAX_PLANES, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %4, align 8
  %34 = alloca [8 x i32], i64 %32, align 16
  store i64 %32, i64* %5, align 8
  %35 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %36 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %42 [
    i32 128, label %38
    i32 129, label %40
  ]

38:                                               ; preds = %1
  %39 = load i32, i32* @TPG_COLOR_100_RED, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @TPG_COLOR_CSC_GREEN, align 4
  store i32 %41, i32* %3, align 4
  br label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @TPG_COLOR_100_GREEN, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %40, %38
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %236, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %48 = call i32 @tpg_get_pat_lines(%struct.tpg_data* %47)
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %239

50:                                               ; preds = %45
  %51 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %52 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %55 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = udiv i32 %53, %56
  store i32 %57, i32* %9, align 4
  %58 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %59 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %62 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = urem i32 %60, %63
  store i32 %64, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %232, %50
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %68 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul i32 %69, 2
  %71 = icmp ult i32 %66, %70
  br i1 %71, label %72, label %235

72:                                               ; preds = %65
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %13, align 4
  %74 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %75 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %74, i32 0, i32 14
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %80 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul i32 %81, 2
  %83 = load i32, i32* %13, align 4
  %84 = sub i32 %82, %83
  %85 = sub i32 %84, 2
  br label %88

86:                                               ; preds = %72
  %87 = load i32, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %78
  %89 = phi i32 [ %85, %78 ], [ %87, %86 ]
  store i32 %89, i32* %13, align 4
  %90 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @tpg_get_color(%struct.tpg_data* %90, i32 %91, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, %94
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %102 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp uge i32 %100, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %88
  %106 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %107 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sub i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %105, %88
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %13, align 4
  %115 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %116 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %115, i32 0, i32 14
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %113
  %120 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %121 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = mul i32 %122, 2
  %124 = load i32, i32* %13, align 4
  %125 = sub i32 %123, %124
  %126 = sub i32 %125, 2
  br label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %13, align 4
  br label %129

129:                                              ; preds = %127, %119
  %130 = phi i32 [ %126, %119 ], [ %128, %127 ]
  store i32 %130, i32* %13, align 4
  %131 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @tpg_get_color(%struct.tpg_data* %131, i32 %132, i32 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %143 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp uge i32 %141, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %129
  %147 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %148 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %146, %129
  %155 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %156 = bitcast [8 x i32]* %34 to i32**
  %157 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %158 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %157, i32 0, i32 14
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = load i32, i32* %15, align 4
  br label %165

163:                                              ; preds = %154
  %164 = load i32, i32* %14, align 4
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi i32 [ %162, %161 ], [ %164, %163 ]
  %167 = call i32 @gen_twopix(%struct.tpg_data* %155, i32** %156, i32 %166, i32 0)
  %168 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %169 = bitcast [8 x i32]* %34 to i32**
  %170 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %171 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %170, i32 0, i32 14
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = load i32, i32* %14, align 4
  br label %178

176:                                              ; preds = %165
  %177 = load i32, i32* %15, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = call i32 @gen_twopix(%struct.tpg_data* %168, i32** %169, i32 %179, i32 1)
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %228, %178
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %184 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp ult i32 %182, %185
  br i1 %186, label %187, label %231

187:                                              ; preds = %181
  %188 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %189 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %16, align 4
  %195 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %196 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %195, i32 0, i32 5
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %17, align 4
  %202 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %203 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %202, i32 0, i32 6
  %204 = load i32***, i32**** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32**, i32*** %204, i64 %206
  %208 = load i32**, i32*** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @tpg_hdiv(%struct.tpg_data* %213, i32 %214, i32 %215)
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %212, i64 %217
  store i32* %218, i32** %18, align 8
  %219 = load i32*, i32** %18, align 8
  %220 = load i32, i32* %7, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 %221
  %223 = getelementptr inbounds [8 x i32], [8 x i32]* %222, i64 0, i64 0
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %17, align 4
  %226 = udiv i32 %224, %225
  %227 = call i32 @memcpy(i32* %219, i32* %223, i32 %226)
  br label %228

228:                                              ; preds = %187
  %229 = load i32, i32* %7, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %7, align 4
  br label %181

231:                                              ; preds = %181
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %8, align 4
  %234 = add i32 %233, 2
  store i32 %234, i32* %8, align 4
  br label %65

235:                                              ; preds = %65
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %6, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %45

239:                                              ; preds = %45
  %240 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %241 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %240, i32 0, i32 7
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %244 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = sub i32 %245, 1
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %242, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp sgt i32 %249, 1
  br i1 %250, label %251, label %340

251:                                              ; preds = %239
  %252 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %253 = call i32 @tpg_get_pat_lines(%struct.tpg_data* %252)
  store i32 %253, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %254

254:                                              ; preds = %336, %251
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %19, align 4
  %257 = icmp ult i32 %255, %256
  br i1 %257, label %258, label %339

258:                                              ; preds = %254
  %259 = load i32, i32* %6, align 4
  %260 = add i32 %259, 1
  %261 = load i32, i32* %19, align 4
  %262 = urem i32 %260, %261
  store i32 %262, i32* %20, align 4
  store i32 1, i32* %7, align 4
  br label %263

263:                                              ; preds = %332, %258
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %266 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = icmp ult i32 %264, %267
  br i1 %268, label %269, label %335

269:                                              ; preds = %263
  %270 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %271 = load i32, i32* %7, align 4
  %272 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %273 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = mul i32 %274, 2
  %276 = call i32 @tpg_hdiv(%struct.tpg_data* %270, i32 %271, i32 %275)
  store i32 %276, i32* %21, align 4
  %277 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %278 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %277, i32 0, i32 6
  %279 = load i32***, i32**** %278, align 8
  %280 = load i32, i32* %6, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32**, i32*** %279, i64 %281
  %283 = load i32**, i32*** %282, align 8
  %284 = load i32, i32* %7, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32*, i32** %283, i64 %285
  %287 = load i32*, i32** %286, align 8
  store i32* %287, i32** %22, align 8
  %288 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %289 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %288, i32 0, i32 6
  %290 = load i32***, i32**** %289, align 8
  %291 = load i32, i32* %20, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i32**, i32*** %290, i64 %292
  %294 = load i32**, i32*** %293, align 8
  %295 = load i32, i32* %7, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %294, i64 %296
  %298 = load i32*, i32** %297, align 8
  store i32* %298, i32** %23, align 8
  %299 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %300 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %299, i32 0, i32 8
  %301 = load i32***, i32**** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i32**, i32*** %301, i64 %303
  %305 = load i32**, i32*** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  store i32* %309, i32** %24, align 8
  store i32 0, i32* %8, align 4
  br label %310

310:                                              ; preds = %322, %269
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %21, align 4
  %313 = icmp ult i32 %311, %312
  br i1 %313, label %314, label %331

314:                                              ; preds = %310
  %315 = load i32*, i32** %22, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %23, align 8
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %316, %318
  %320 = sdiv i32 %319, 2
  %321 = load i32*, i32** %24, align 8
  store i32 %320, i32* %321, align 4
  br label %322

322:                                              ; preds = %314
  %323 = load i32, i32* %8, align 4
  %324 = add i32 %323, 1
  store i32 %324, i32* %8, align 4
  %325 = load i32*, i32** %22, align 8
  %326 = getelementptr inbounds i32, i32* %325, i32 1
  store i32* %326, i32** %22, align 8
  %327 = load i32*, i32** %23, align 8
  %328 = getelementptr inbounds i32, i32* %327, i32 1
  store i32* %328, i32** %23, align 8
  %329 = load i32*, i32** %24, align 8
  %330 = getelementptr inbounds i32, i32* %329, i32 1
  store i32* %330, i32** %24, align 8
  br label %310

331:                                              ; preds = %310
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %7, align 4
  %334 = add i32 %333, 1
  store i32 %334, i32* %7, align 4
  br label %263

335:                                              ; preds = %263
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %6, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %6, align 4
  br label %254

339:                                              ; preds = %254
  br label %340

340:                                              ; preds = %339, %239
  %341 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %342 = bitcast [8 x i32]* %34 to i32**
  %343 = load i32, i32* %3, align 4
  %344 = call i32 @gen_twopix(%struct.tpg_data* %341, i32** %342, i32 %343, i32 0)
  %345 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %346 = bitcast [8 x i32]* %34 to i32**
  %347 = load i32, i32* %3, align 4
  %348 = call i32 @gen_twopix(%struct.tpg_data* %345, i32** %346, i32 %347, i32 1)
  store i32 0, i32* %7, align 4
  br label %349

349:                                              ; preds = %392, %340
  %350 = load i32, i32* %7, align 4
  %351 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %352 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  %354 = icmp ult i32 %350, %353
  br i1 %354, label %355, label %395

355:                                              ; preds = %349
  %356 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %357 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %356, i32 0, i32 4
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %7, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %25, align 4
  %363 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %364 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %363, i32 0, i32 9
  %365 = load i32**, i32*** %364, align 8
  %366 = load i32, i32* %7, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds i32*, i32** %365, i64 %367
  %369 = load i32*, i32** %368, align 8
  store i32* %369, i32** %26, align 8
  store i32 0, i32* %8, align 4
  br label %370

370:                                              ; preds = %384, %355
  %371 = load i32, i32* %8, align 4
  %372 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %373 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = icmp ult i32 %371, %374
  br i1 %375, label %376, label %391

376:                                              ; preds = %370
  %377 = load i32*, i32** %26, align 8
  %378 = load i32, i32* %7, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 %379
  %381 = getelementptr inbounds [8 x i32], [8 x i32]* %380, i64 0, i64 0
  %382 = load i32, i32* %25, align 4
  %383 = call i32 @memcpy(i32* %377, i32* %381, i32 %382)
  br label %384

384:                                              ; preds = %376
  %385 = load i32, i32* %8, align 4
  %386 = add i32 %385, 2
  store i32 %386, i32* %8, align 4
  %387 = load i32, i32* %25, align 4
  %388 = load i32*, i32** %26, align 8
  %389 = zext i32 %387 to i64
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  store i32* %390, i32** %26, align 8
  br label %370

391:                                              ; preds = %370
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %7, align 4
  %394 = add i32 %393, 1
  store i32 %394, i32* %7, align 4
  br label %349

395:                                              ; preds = %349
  %396 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %397 = bitcast [8 x i32]* %34 to i32**
  %398 = load i32, i32* @TPG_COLOR_100_BLACK, align 4
  %399 = call i32 @gen_twopix(%struct.tpg_data* %396, i32** %397, i32 %398, i32 0)
  %400 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %401 = bitcast [8 x i32]* %34 to i32**
  %402 = load i32, i32* @TPG_COLOR_100_BLACK, align 4
  %403 = call i32 @gen_twopix(%struct.tpg_data* %400, i32** %401, i32 %402, i32 1)
  store i32 0, i32* %7, align 4
  br label %404

404:                                              ; preds = %447, %395
  %405 = load i32, i32* %7, align 4
  %406 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %407 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = icmp ult i32 %405, %408
  br i1 %409, label %410, label %450

410:                                              ; preds = %404
  %411 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %412 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %411, i32 0, i32 4
  %413 = load i32*, i32** %412, align 8
  %414 = load i32, i32* %7, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %27, align 4
  %418 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %419 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %418, i32 0, i32 10
  %420 = load i32**, i32*** %419, align 8
  %421 = load i32, i32* %7, align 4
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds i32*, i32** %420, i64 %422
  %424 = load i32*, i32** %423, align 8
  store i32* %424, i32** %28, align 8
  store i32 0, i32* %8, align 4
  br label %425

425:                                              ; preds = %439, %410
  %426 = load i32, i32* %8, align 4
  %427 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %428 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = icmp ult i32 %426, %429
  br i1 %430, label %431, label %446

431:                                              ; preds = %425
  %432 = load i32*, i32** %28, align 8
  %433 = load i32, i32* %7, align 4
  %434 = zext i32 %433 to i64
  %435 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 %434
  %436 = getelementptr inbounds [8 x i32], [8 x i32]* %435, i64 0, i64 0
  %437 = load i32, i32* %27, align 4
  %438 = call i32 @memcpy(i32* %432, i32* %436, i32 %437)
  br label %439

439:                                              ; preds = %431
  %440 = load i32, i32* %8, align 4
  %441 = add i32 %440, 2
  store i32 %441, i32* %8, align 4
  %442 = load i32, i32* %27, align 4
  %443 = load i32*, i32** %28, align 8
  %444 = zext i32 %442 to i64
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  store i32* %445, i32** %28, align 8
  br label %425

446:                                              ; preds = %425
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %7, align 4
  %449 = add i32 %448, 1
  store i32 %449, i32* %7, align 4
  br label %404

450:                                              ; preds = %404
  store i32 0, i32* %8, align 4
  br label %451

451:                                              ; preds = %505, %450
  %452 = load i32, i32* %8, align 4
  %453 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %454 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = mul i32 %455, 2
  %457 = icmp ult i32 %452, %456
  br i1 %457, label %458, label %508

458:                                              ; preds = %451
  %459 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %460 = bitcast [8 x i32]* %34 to i32**
  %461 = load i32, i32* @TPG_COLOR_RANDOM, align 4
  %462 = call i32 @gen_twopix(%struct.tpg_data* %459, i32** %460, i32 %461, i32 0)
  %463 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %464 = bitcast [8 x i32]* %34 to i32**
  %465 = load i32, i32* @TPG_COLOR_RANDOM, align 4
  %466 = call i32 @gen_twopix(%struct.tpg_data* %463, i32** %464, i32 %465, i32 1)
  store i32 0, i32* %7, align 4
  br label %467

467:                                              ; preds = %501, %458
  %468 = load i32, i32* %7, align 4
  %469 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %470 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 4
  %472 = icmp ult i32 %468, %471
  br i1 %472, label %473, label %504

473:                                              ; preds = %467
  %474 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %475 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %474, i32 0, i32 4
  %476 = load i32*, i32** %475, align 8
  %477 = load i32, i32* %7, align 4
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds i32, i32* %476, i64 %478
  %480 = load i32, i32* %479, align 4
  store i32 %480, i32* %29, align 4
  %481 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %482 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %481, i32 0, i32 11
  %483 = load i32**, i32*** %482, align 8
  %484 = load i32, i32* %7, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds i32*, i32** %483, i64 %485
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %8, align 4
  %489 = load i32, i32* %29, align 4
  %490 = mul i32 %488, %489
  %491 = udiv i32 %490, 2
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %487, i64 %492
  store i32* %493, i32** %30, align 8
  %494 = load i32*, i32** %30, align 8
  %495 = load i32, i32* %7, align 4
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds [8 x i32], [8 x i32]* %34, i64 %496
  %498 = getelementptr inbounds [8 x i32], [8 x i32]* %497, i64 0, i64 0
  %499 = load i32, i32* %29, align 4
  %500 = call i32 @memcpy(i32* %494, i32* %498, i32 %499)
  br label %501

501:                                              ; preds = %473
  %502 = load i32, i32* %7, align 4
  %503 = add i32 %502, 1
  store i32 %503, i32* %7, align 4
  br label %467

504:                                              ; preds = %467
  br label %505

505:                                              ; preds = %504
  %506 = load i32, i32* %8, align 4
  %507 = add i32 %506, 2
  store i32 %507, i32* %8, align 4
  br label %451

508:                                              ; preds = %451
  %509 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %510 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %511 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %510, i32 0, i32 12
  %512 = load i32**, i32*** %511, align 8
  %513 = load i32, i32* @TPG_COLOR_TEXTBG, align 4
  %514 = call i32 @gen_twopix(%struct.tpg_data* %509, i32** %512, i32 %513, i32 0)
  %515 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %516 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %517 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %516, i32 0, i32 12
  %518 = load i32**, i32*** %517, align 8
  %519 = load i32, i32* @TPG_COLOR_TEXTBG, align 4
  %520 = call i32 @gen_twopix(%struct.tpg_data* %515, i32** %518, i32 %519, i32 1)
  %521 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %522 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %523 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %522, i32 0, i32 13
  %524 = load i32**, i32*** %523, align 8
  %525 = load i32, i32* @TPG_COLOR_TEXTFG, align 4
  %526 = call i32 @gen_twopix(%struct.tpg_data* %521, i32** %524, i32 %525, i32 0)
  %527 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %528 = load %struct.tpg_data*, %struct.tpg_data** %2, align 8
  %529 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %528, i32 0, i32 13
  %530 = load i32**, i32*** %529, align 8
  %531 = load i32, i32* @TPG_COLOR_TEXTFG, align 4
  %532 = call i32 @gen_twopix(%struct.tpg_data* %527, i32** %530, i32 %531, i32 1)
  %533 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %533)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tpg_get_pat_lines(%struct.tpg_data*) #2

declare dso_local i32 @tpg_get_color(%struct.tpg_data*, i32, i32) #2

declare dso_local i32 @gen_twopix(%struct.tpg_data*, i32**, i32, i32) #2

declare dso_local i32 @tpg_hdiv(%struct.tpg_data*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
