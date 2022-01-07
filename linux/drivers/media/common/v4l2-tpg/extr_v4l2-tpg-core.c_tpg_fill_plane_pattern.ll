; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_plane_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_plane_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i64, i64, i32, i32*, i32, i64, i32**, i32***, i32**, i32**, %struct.TYPE_6__, i32**, i64, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.tpg_draw_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@TPG_QUAL_NOISE = common dso_local global i64 0, align 8
@TPG_PAT_NOISE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*, %struct.tpg_draw_params*, i32, i32, i32*)* @tpg_fill_plane_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpg_fill_plane_pattern(%struct.tpg_data* %0, %struct.tpg_draw_params* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.tpg_data*, align 8
  %7 = alloca %struct.tpg_draw_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %6, align 8
  store %struct.tpg_draw_params* %1, %struct.tpg_draw_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %33 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %34 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  %36 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %37 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %40 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %43 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %46 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %49 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %52 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %17, align 4
  %54 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %55 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %18, align 4
  %57 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %60 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %59, i32 0, i32 16
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @tpg_hscale_div(%struct.tpg_data* %57, i32 %58, i32 %62)
  store i32 %63, i32* %19, align 4
  store i32 0, i32* %21, align 4
  %64 = load i32, i32* %17, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %71 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = icmp uge i32 %69, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %5
  %75 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %76 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %80 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %79, i32 0, i32 15
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %447

85:                                               ; preds = %74
  %86 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %87 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %447

91:                                               ; preds = %85
  store i32 1, i32* %21, align 4
  br label %92

92:                                               ; preds = %91, %5
  %93 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %94 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %93, i32 0, i32 13
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %99 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sub i32 %100, %101
  %103 = sub i32 %102, 1
  store i32 %103, i32* %17, align 4
  %104 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %105 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sub i32 %106, %107
  %109 = sub i32 %108, 1
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %97, %92
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %115 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %114, i32 0, i32 12
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %24, align 8
  %121 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %122 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %121, i32 0, i32 12
  %123 = load i32**, i32*** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  store i32* %127, i32** %25, align 8
  br label %380

128:                                              ; preds = %110
  %129 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %130 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TPG_QUAL_NOISE, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %168

134:                                              ; preds = %128
  %135 = load i32, i32* %17, align 4
  %136 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %137 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %136, i32 0, i32 11
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ult i32 %135, %139
  br i1 %140, label %153, label %141

141:                                              ; preds = %134
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %144 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %143, i32 0, i32 11
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %148 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %147, i32 0, i32 11
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add i32 %146, %150
  %152 = icmp uge i32 %142, %151
  br i1 %152, label %153, label %168

153:                                              ; preds = %141, %134
  %154 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %155 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %154, i32 0, i32 10
  %156 = load i32**, i32*** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %24, align 8
  %161 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %162 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %161, i32 0, i32 10
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %25, align 8
  br label %379

168:                                              ; preds = %141, %128
  %169 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %170 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @TPG_PAT_NOISE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %176 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TPG_QUAL_NOISE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %213

180:                                              ; preds = %174, %168
  %181 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %182 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %181, i32 0, i32 9
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %190 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = sdiv i32 %191, 2
  %193 = call i32 @prandom_u32_max(i32 %192)
  %194 = mul i32 %188, %193
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %187, i64 %195
  store i32* %196, i32** %24, align 8
  %197 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %198 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %197, i32 0, i32 9
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %206 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = sdiv i32 %207, 2
  %209 = call i32 @prandom_u32_max(i32 %208)
  %210 = mul i32 %204, %209
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %203, i64 %211
  store i32* %212, i32** %25, align 8
  br label %378

213:                                              ; preds = %174
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %15, align 4
  %216 = add i32 %214, %215
  %217 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %218 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = urem i32 %216, %219
  store i32 %220, i32* %28, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %16, align 4
  %223 = add i32 %221, %222
  %224 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %225 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = urem i32 %223, %226
  store i32 %227, i32* %29, align 4
  %228 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %229 = load i32, i32* %28, align 4
  %230 = call i32 @tpg_get_pat_line(%struct.tpg_data* %228, i32 %229)
  store i32 %230, i32* %22, align 4
  %231 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %232 = load i32, i32* %29, align 4
  %233 = call i32 @tpg_get_pat_line(%struct.tpg_data* %231, i32 %232)
  store i32 %233, i32* %23, align 4
  %234 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %235 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %234, i32 0, i32 8
  %236 = load i32***, i32**** %235, align 8
  %237 = load i32, i32* %22, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i32**, i32*** %236, i64 %238
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32* %247, i32** %24, align 8
  %248 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %249 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %248, i32 0, i32 8
  %250 = load i32***, i32**** %249, align 8
  %251 = load i32, i32* %23, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32**, i32*** %250, i64 %252
  %254 = load i32**, i32*** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32*, i32** %254, i64 %256
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %14, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32* %261, i32** %25, align 8
  %262 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %263 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp sgt i32 %268, 1
  br i1 %269, label %270, label %369

270:                                              ; preds = %213
  %271 = load i32, i32* %17, align 4
  %272 = load i32, i32* %18, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %369

274:                                              ; preds = %270
  %275 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %276 = load i32, i32* %18, align 4
  %277 = load i32, i32* %15, align 4
  %278 = add i32 %276, %277
  %279 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %280 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = urem i32 %278, %281
  %283 = call i32 @tpg_get_pat_line(%struct.tpg_data* %275, i32 %282)
  store i32 %283, i32* %30, align 4
  %284 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %285 = load i32, i32* %18, align 4
  %286 = load i32, i32* %16, align 4
  %287 = add i32 %285, %286
  %288 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %289 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = urem i32 %287, %290
  %292 = call i32 @tpg_get_pat_line(%struct.tpg_data* %284, i32 %291)
  store i32 %292, i32* %31, align 4
  %293 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %294 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 8
  switch i32 %295, label %368 [
    i32 134, label %296
    i32 133, label %296
    i32 132, label %296
    i32 131, label %321
    i32 128, label %321
    i32 135, label %321
    i32 130, label %321
    i32 129, label %321
  ]

296:                                              ; preds = %274, %274, %274
  %297 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %23, align 4
  %300 = call i32 @tpg_pattern_avg(%struct.tpg_data* %297, i32 %298, i32 %299)
  store i32 %300, i32* %32, align 4
  %301 = load i32, i32* %32, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  br label %368

304:                                              ; preds = %296
  %305 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %306 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %305, i32 0, i32 7
  %307 = load i32**, i32*** %306, align 8
  %308 = load i32, i32* %32, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %13, align 4
  %317 = add i32 %315, %316
  %318 = zext i32 %317 to i64
  %319 = inttoptr i64 %318 to i32*
  store i32* %319, i32** %24, align 8
  %320 = load i32*, i32** %24, align 8
  store i32* %320, i32** %25, align 8
  br label %368

321:                                              ; preds = %274, %274, %274, %274, %274
  %322 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %323 = load i32, i32* %22, align 4
  %324 = load i32, i32* %30, align 4
  %325 = call i32 @tpg_pattern_avg(%struct.tpg_data* %322, i32 %323, i32 %324)
  store i32 %325, i32* %32, align 4
  %326 = load i32, i32* %32, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %344

328:                                              ; preds = %321
  %329 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %330 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %329, i32 0, i32 7
  %331 = load i32**, i32*** %330, align 8
  %332 = load i32, i32* %32, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %331, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = load i32, i32* %8, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %13, align 4
  %341 = add i32 %339, %340
  %342 = zext i32 %341 to i64
  %343 = inttoptr i64 %342 to i32*
  store i32* %343, i32** %24, align 8
  br label %344

344:                                              ; preds = %328, %321
  %345 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %346 = load i32, i32* %23, align 4
  %347 = load i32, i32* %31, align 4
  %348 = call i32 @tpg_pattern_avg(%struct.tpg_data* %345, i32 %346, i32 %347)
  store i32 %348, i32* %32, align 4
  %349 = load i32, i32* %32, align 4
  %350 = icmp sge i32 %349, 0
  br i1 %350, label %351, label %367

351:                                              ; preds = %344
  %352 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %353 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %352, i32 0, i32 7
  %354 = load i32**, i32*** %353, align 8
  %355 = load i32, i32* %32, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %354, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %8, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %14, align 4
  %364 = add i32 %362, %363
  %365 = zext i32 %364 to i64
  %366 = inttoptr i64 %365 to i32*
  store i32* %366, i32** %25, align 8
  br label %367

367:                                              ; preds = %351, %344
  br label %368

368:                                              ; preds = %274, %367, %304, %303
  br label %369

369:                                              ; preds = %368, %270, %213
  %370 = load i32, i32* %19, align 4
  %371 = load i32*, i32** %24, align 8
  %372 = zext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32* %373, i32** %24, align 8
  %374 = load i32, i32* %19, align 4
  %375 = load i32*, i32** %25, align 8
  %376 = zext i32 %374 to i64
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  store i32* %377, i32** %25, align 8
  br label %378

378:                                              ; preds = %369, %180
  br label %379

379:                                              ; preds = %378, %153
  br label %380

380:                                              ; preds = %379, %113
  %381 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %382 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %381, i32 0, i32 6
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %380
  %386 = load i32*, i32** %24, align 8
  store i32* %386, i32** %27, align 8
  store i32* %386, i32** %26, align 8
  br label %399

387:                                              ; preds = %380
  %388 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %389 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %388, i32 0, i32 9
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %395

392:                                              ; preds = %387
  %393 = load i32*, i32** %25, align 8
  store i32* %393, i32** %26, align 8
  %394 = load i32*, i32** %24, align 8
  store i32* %394, i32** %27, align 8
  br label %398

395:                                              ; preds = %387
  %396 = load i32*, i32** %24, align 8
  store i32* %396, i32** %26, align 8
  %397 = load i32*, i32** %25, align 8
  store i32* %397, i32** %27, align 8
  br label %398

398:                                              ; preds = %395, %392
  br label %399

399:                                              ; preds = %398, %385
  %400 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %401 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 8
  switch i32 %402, label %442 [
    i32 134, label %403
    i32 132, label %403
    i32 129, label %403
    i32 130, label %403
    i32 133, label %417
    i32 128, label %431
    i32 135, label %436
    i32 131, label %441
  ]

403:                                              ; preds = %399, %399, %399, %399
  %404 = load i32, i32* %20, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %411

406:                                              ; preds = %403
  %407 = load i32*, i32** %10, align 8
  %408 = load i32*, i32** %26, align 8
  %409 = load i32, i32* %12, align 4
  %410 = call i32 @memcpy(i32* %407, i32* %408, i32 %409)
  br label %416

411:                                              ; preds = %403
  %412 = load i32*, i32** %10, align 8
  %413 = load i32*, i32** %27, align 8
  %414 = load i32, i32* %12, align 4
  %415 = call i32 @memcpy(i32* %412, i32* %413, i32 %414)
  br label %416

416:                                              ; preds = %411, %406
  br label %447

417:                                              ; preds = %399
  %418 = load i32, i32* %20, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %417
  %421 = load i32*, i32** %10, align 8
  %422 = load i32*, i32** %27, align 8
  %423 = load i32, i32* %12, align 4
  %424 = call i32 @memcpy(i32* %421, i32* %422, i32 %423)
  br label %430

425:                                              ; preds = %417
  %426 = load i32*, i32** %10, align 8
  %427 = load i32*, i32** %26, align 8
  %428 = load i32, i32* %12, align 4
  %429 = call i32 @memcpy(i32* %426, i32* %427, i32 %428)
  br label %430

430:                                              ; preds = %425, %420
  br label %447

431:                                              ; preds = %399
  %432 = load i32*, i32** %10, align 8
  %433 = load i32*, i32** %26, align 8
  %434 = load i32, i32* %12, align 4
  %435 = call i32 @memcpy(i32* %432, i32* %433, i32 %434)
  br label %447

436:                                              ; preds = %399
  %437 = load i32*, i32** %10, align 8
  %438 = load i32*, i32** %27, align 8
  %439 = load i32, i32* %12, align 4
  %440 = call i32 @memcpy(i32* %437, i32* %438, i32 %439)
  br label %447

441:                                              ; preds = %399
  br label %442

442:                                              ; preds = %399, %441
  %443 = load i32*, i32** %10, align 8
  %444 = load i32*, i32** %24, align 8
  %445 = load i32, i32* %12, align 4
  %446 = call i32 @memcpy(i32* %443, i32* %444, i32 %445)
  br label %447

447:                                              ; preds = %84, %90, %442, %436, %431, %430, %416
  ret void
}

declare dso_local i32 @tpg_hscale_div(%struct.tpg_data*, i32, i32) #1

declare dso_local i32 @prandom_u32_max(i32) #1

declare dso_local i32 @tpg_get_pat_line(%struct.tpg_data*, i32) #1

declare dso_local i32 @tpg_pattern_avg(%struct.tpg_data*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
