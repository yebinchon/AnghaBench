; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_plane_extras.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_fill_plane_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32**, i32**, i64, i32**, %struct.TYPE_2__, i64, i64, i64, i64, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }
%struct.tpg_draw_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@TPG_QUAL_NOISE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpg_data*, %struct.tpg_draw_params*, i32, i32, i32*)* @tpg_fill_plane_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpg_fill_plane_extras(%struct.tpg_data* %0, %struct.tpg_draw_params* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.tpg_data*, align 8
  %7 = alloca %struct.tpg_draw_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.v4l2_rect*, align 8
  %15 = alloca %struct.v4l2_rect*, align 8
  %16 = alloca %struct.v4l2_rect*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %6, align 8
  store %struct.tpg_draw_params* %1, %struct.tpg_draw_params** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %31 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %32 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %35 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %38 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %41 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %40, i32 0, i32 11
  store %struct.v4l2_rect* %41, %struct.v4l2_rect** %14, align 8
  %42 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %43 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %42, i32 0, i32 10
  store %struct.v4l2_rect* %43, %struct.v4l2_rect** %15, align 8
  %44 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %45 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %44, i32 0, i32 9
  store %struct.v4l2_rect* %45, %struct.v4l2_rect** %16, align 8
  %46 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %47 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %5
  %51 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %52 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %60 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %65 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %64, i32 0, i32 0
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %72 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32* %75, i32** %17, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %17, align 8
  %78 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %79 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32* %76, i32* %77, i32 %80)
  br label %82

82:                                               ; preds = %63, %58, %55, %50, %5
  %83 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %84 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %237

87:                                               ; preds = %82
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %90 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp uge i32 %88, %91
  br i1 %92, label %93, label %237

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %96 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %97, %100
  %102 = icmp ult i32 %94, %101
  br i1 %102, label %103, label %237

103:                                              ; preds = %93
  %104 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %105 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %108 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add i32 %106, %109
  %111 = sub i32 %110, 1
  store i32 %111, i32* %18, align 4
  %112 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %113 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %19, align 4
  %115 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %116 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %120 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %139, label %123

123:                                              ; preds = %103
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %126 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add i32 %127, 1
  %129 = icmp eq i32 %124, %128
  br i1 %129, label %139, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %18, align 4
  %137 = sub i32 %136, 1
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %134, %130, %123, %103
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %19, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %145 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %144, i32 0, i32 1
  %146 = load i32**, i32*** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %146, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* %19, align 4
  %153 = sub i32 %151, %152
  %154 = call i32 @memcpy(i32* %143, i32* %150, i32 %153)
  br label %236

155:                                              ; preds = %134
  %156 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %157 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %160 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp sge i64 %158, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %155
  %164 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %165 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %168 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %171 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %169, %172
  %174 = icmp slt i64 %166, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %163
  %176 = load i32*, i32** %10, align 8
  %177 = load i32, i32* %19, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %181 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %180, i32 0, i32 1
  %182 = load i32**, i32*** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @memcpy(i32* %179, i32* %186, i32 %187)
  br label %189

189:                                              ; preds = %175, %163, %155
  %190 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %191 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %194 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %198 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp sgt i64 %196, %199
  br i1 %200, label %201, label %235

201:                                              ; preds = %189
  %202 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %203 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %206 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %204, %207
  %209 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %210 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %213 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %211, %214
  %216 = icmp sle i64 %208, %215
  br i1 %216, label %217, label %235

217:                                              ; preds = %201
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %20, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %11, align 4
  %223 = zext i32 %222 to i64
  %224 = sub i64 0, %223
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %227 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %226, i32 0, i32 1
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @memcpy(i32* %225, i32* %232, i32 %233)
  br label %235

235:                                              ; preds = %217, %201, %189
  br label %236

236:                                              ; preds = %235, %139
  br label %237

237:                                              ; preds = %236, %93, %87, %82
  %238 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %239 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @TPG_QUAL_NOISE, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %291

243:                                              ; preds = %237
  %244 = load i32, i32* %13, align 4
  %245 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %246 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp uge i32 %244, %247
  br i1 %248, label %249, label %291

249:                                              ; preds = %243
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %252 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.v4l2_rect*, %struct.v4l2_rect** %15, align 8
  %255 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add i32 %253, %256
  %258 = icmp ult i32 %250, %257
  br i1 %258, label %259, label %291

259:                                              ; preds = %249
  %260 = load i32*, i32** %10, align 8
  %261 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %262 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %261, i32 0, i32 3
  %263 = load i32**, i32*** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %269 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @memcpy(i32* %260, i32* %267, i32 %270)
  %272 = load i32*, i32** %10, align 8
  %273 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %274 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %273, i32 0, i32 6
  %275 = load i32, i32* %274, align 8
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  %278 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %279 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %278, i32 0, i32 3
  %280 = load i32**, i32*** %279, align 8
  %281 = load i32, i32* %8, align 4
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %12, align 4
  %286 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %287 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = sub i32 %285, %288
  %290 = call i32 @memcpy(i32* %277, i32* %284, i32 %289)
  br label %291

291:                                              ; preds = %259, %249, %243, %237
  %292 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %293 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %292, i32 0, i32 7
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %425

296:                                              ; preds = %291
  %297 = load i32, i32* %13, align 4
  %298 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %299 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp uge i32 %297, %300
  br i1 %301, label %302, label %425

302:                                              ; preds = %296
  %303 = load i32, i32* %13, align 4
  %304 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %305 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %308 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %306, %309
  %311 = icmp ult i32 %303, %310
  br i1 %311, label %312, label %425

312:                                              ; preds = %302
  %313 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %314 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %317 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %320 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %318, %321
  %323 = icmp slt i64 %315, %322
  br i1 %323, label %324, label %425

324:                                              ; preds = %312
  %325 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %326 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %329 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = add nsw i64 %327, %330
  %332 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %333 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = icmp sge i64 %331, %334
  br i1 %335, label %336, label %425

336:                                              ; preds = %324
  %337 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %338 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = trunc i64 %339 to i32
  store i32 %340, i32* %21, align 4
  %341 = load %struct.v4l2_rect*, %struct.v4l2_rect** %14, align 8
  %342 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %341, i32 0, i32 3
  %343 = load i64, i64* %342, align 8
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %22, align 4
  %345 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %346 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* %21, align 4
  %349 = zext i32 %348 to i64
  %350 = icmp sgt i64 %347, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %336
  %352 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %353 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* %21, align 4
  %356 = zext i32 %355 to i64
  %357 = sub nsw i64 %354, %356
  %358 = load i32, i32* %22, align 4
  %359 = zext i32 %358 to i64
  %360 = sub nsw i64 %359, %357
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %22, align 4
  %362 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %363 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = trunc i64 %364 to i32
  store i32 %365, i32* %21, align 4
  br label %366

366:                                              ; preds = %351, %336
  %367 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %368 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %371 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %370, i32 0, i32 3
  %372 = load i64, i64* %371, align 8
  %373 = add nsw i64 %369, %372
  %374 = load i32, i32* %21, align 4
  %375 = load i32, i32* %22, align 4
  %376 = add i32 %374, %375
  %377 = zext i32 %376 to i64
  %378 = icmp slt i64 %373, %377
  br i1 %378, label %379, label %396

379:                                              ; preds = %366
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* %22, align 4
  %382 = add i32 %380, %381
  %383 = zext i32 %382 to i64
  %384 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %385 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %384, i32 0, i32 2
  %386 = load i64, i64* %385, align 8
  %387 = sub nsw i64 %383, %386
  %388 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %389 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %388, i32 0, i32 3
  %390 = load i64, i64* %389, align 8
  %391 = sub nsw i64 %387, %390
  %392 = load i32, i32* %22, align 4
  %393 = zext i32 %392 to i64
  %394 = sub nsw i64 %393, %391
  %395 = trunc i64 %394 to i32
  store i32 %395, i32* %22, align 4
  br label %396

396:                                              ; preds = %379, %366
  %397 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %398 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = load i32, i32* %21, align 4
  %401 = zext i32 %400 to i64
  %402 = sub nsw i64 %401, %399
  %403 = trunc i64 %402 to i32
  store i32 %403, i32* %21, align 4
  %404 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %405 = load i32, i32* %8, align 4
  %406 = load i32, i32* %21, align 4
  %407 = call i32 @tpg_hscale_div(%struct.tpg_data* %404, i32 %405, i32 %406)
  store i32 %407, i32* %21, align 4
  %408 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %409 = load i32, i32* %8, align 4
  %410 = load i32, i32* %22, align 4
  %411 = call i32 @tpg_hscale_div(%struct.tpg_data* %408, i32 %409, i32 %410)
  store i32 %411, i32* %22, align 4
  %412 = load i32*, i32** %10, align 8
  %413 = load i32, i32* %21, align 4
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %412, i64 %414
  %416 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %417 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %416, i32 0, i32 1
  %418 = load i32**, i32*** %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i32*, i32** %418, i64 %420
  %422 = load i32*, i32** %421, align 8
  %423 = load i32, i32* %22, align 4
  %424 = call i32 @memcpy(i32* %415, i32* %422, i32 %423)
  br label %425

425:                                              ; preds = %396, %324, %312, %302, %296, %291
  %426 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %427 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %426, i32 0, i32 6
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %489

430:                                              ; preds = %425
  %431 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %432 = load i32, i32* %8, align 4
  %433 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %434 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %433, i32 0, i32 4
  %435 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = sdiv i32 %436, 3
  %438 = call i32 @tpg_hdiv(%struct.tpg_data* %431, i32 %432, i32 %437)
  store i32 %438, i32* %23, align 4
  %439 = load i32*, i32** %10, align 8
  %440 = load i32, i32* %23, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %439, i64 %441
  store i32* %442, i32** %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %443 = load i32*, i32** %24, align 8
  %444 = getelementptr inbounds i32, i32* %443, i64 0
  store i32 255, i32* %444, align 4
  %445 = load i32*, i32** %24, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 1
  store i32 0, i32* %446, align 4
  %447 = load i32*, i32** %24, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 2
  store i32 0, i32* %448, align 4
  %449 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %450 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %449, i32 0, i32 7
  %451 = load i32, i32* %450, align 4
  %452 = shl i32 %451, 6
  %453 = or i32 128, %452
  %454 = load i32, i32* %25, align 4
  %455 = shl i32 %454, 5
  %456 = or i32 %453, %455
  %457 = load i32, i32* %26, align 4
  %458 = shl i32 %457, 4
  %459 = or i32 %456, %458
  %460 = load i32, i32* %26, align 4
  %461 = load i32, i32* %25, align 4
  %462 = xor i32 %460, %461
  %463 = shl i32 %462, 3
  %464 = or i32 %459, %463
  %465 = load i32, i32* %26, align 4
  %466 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %467 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %466, i32 0, i32 7
  %468 = load i32, i32* %467, align 4
  %469 = xor i32 %465, %468
  %470 = shl i32 %469, 2
  %471 = or i32 %464, %470
  %472 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %473 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %472, i32 0, i32 7
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %25, align 4
  %476 = xor i32 %474, %475
  %477 = shl i32 %476, 1
  %478 = or i32 %471, %477
  %479 = load i32, i32* %26, align 4
  %480 = load i32, i32* %25, align 4
  %481 = xor i32 %479, %480
  %482 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %483 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %482, i32 0, i32 7
  %484 = load i32, i32* %483, align 4
  %485 = xor i32 %481, %484
  %486 = or i32 %478, %485
  %487 = load i32*, i32** %24, align 8
  %488 = getelementptr inbounds i32, i32* %487, i64 3
  store i32 %486, i32* %488, align 4
  br label %489

489:                                              ; preds = %430, %425
  %490 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %491 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %490, i32 0, i32 5
  %492 = load i64, i64* %491, align 8
  %493 = icmp ne i64 %492, 0
  br i1 %493, label %494, label %554

494:                                              ; preds = %489
  %495 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %496 = load i32, i32* %8, align 4
  %497 = load %struct.tpg_data*, %struct.tpg_data** %6, align 8
  %498 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %497, i32 0, i32 4
  %499 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = mul nsw i32 %500, 2
  %502 = sdiv i32 %501, 3
  %503 = call i32 @tpg_hdiv(%struct.tpg_data* %495, i32 %496, i32 %502)
  store i32 %503, i32* %27, align 4
  %504 = load i32*, i32** %10, align 8
  %505 = load i32, i32* %27, align 4
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  store i32* %507, i32** %28, align 8
  store i32 0, i32* %29, align 4
  store i32 1, i32* %30, align 4
  %508 = load i32*, i32** %28, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 0
  store i32 255, i32* %509, align 4
  %510 = load i32*, i32** %28, align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 1
  store i32 0, i32* %511, align 4
  %512 = load i32*, i32** %28, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 2
  store i32 0, i32* %513, align 4
  %514 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %515 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %514, i32 0, i32 7
  %516 = load i32, i32* %515, align 4
  %517 = shl i32 %516, 6
  %518 = or i32 128, %517
  %519 = load i32, i32* %29, align 4
  %520 = shl i32 %519, 5
  %521 = or i32 %518, %520
  %522 = load i32, i32* %30, align 4
  %523 = shl i32 %522, 4
  %524 = or i32 %521, %523
  %525 = load i32, i32* %30, align 4
  %526 = load i32, i32* %29, align 4
  %527 = xor i32 %525, %526
  %528 = shl i32 %527, 3
  %529 = or i32 %524, %528
  %530 = load i32, i32* %30, align 4
  %531 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %532 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %531, i32 0, i32 7
  %533 = load i32, i32* %532, align 4
  %534 = xor i32 %530, %533
  %535 = shl i32 %534, 2
  %536 = or i32 %529, %535
  %537 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %538 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %537, i32 0, i32 7
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* %29, align 4
  %541 = xor i32 %539, %540
  %542 = shl i32 %541, 1
  %543 = or i32 %536, %542
  %544 = load i32, i32* %30, align 4
  %545 = load i32, i32* %29, align 4
  %546 = xor i32 %544, %545
  %547 = load %struct.tpg_draw_params*, %struct.tpg_draw_params** %7, align 8
  %548 = getelementptr inbounds %struct.tpg_draw_params, %struct.tpg_draw_params* %547, i32 0, i32 7
  %549 = load i32, i32* %548, align 4
  %550 = xor i32 %546, %549
  %551 = or i32 %543, %550
  %552 = load i32*, i32** %28, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 3
  store i32 %551, i32* %553, align 4
  br label %554

554:                                              ; preds = %494, %489
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @tpg_hscale_div(%struct.tpg_data*, i32, i32) #1

declare dso_local i32 @tpg_hdiv(%struct.tpg_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
