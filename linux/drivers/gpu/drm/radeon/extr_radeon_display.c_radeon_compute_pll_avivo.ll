; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_compute_pll_avivo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_compute_pll_avivo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RADEON_PLL_USE_FRAC_FB_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_USE_REF_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_PREFER_MINM_OVER_MAXP = common dso_local global i32 0, align 4
@RADEON_PLL_USE_POST_DIV = common dso_local global i32 0, align 4
@RADEON_PLL_IS_LCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%d - %d, pll dividers - fb: %d.%d ref: %d, post %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_compute_pll_avivo(%struct.radeon_pll* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.radeon_pll*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.radeon_pll* %0, %struct.radeon_pll** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %33 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %34 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %7
  %40 = load i32, i32* %9, align 4
  br label %44

41:                                               ; preds = %7
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 10
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  store i32 %45, i32* %15, align 4
  %46 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %47 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %50 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %53 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %44
  %59 = load i32, i32* %16, align 4
  %60 = mul i32 %59, 10
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %17, align 4
  %62 = mul i32 %61, 10
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %58, %44
  %64 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %65 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %72 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %22, align 4
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %76 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %22, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %80 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %87 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RADEON_PLL_USE_REF_DIV, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %94 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %23, align 4
  br label %113

96:                                               ; preds = %85, %78
  %97 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %98 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RADEON_PLL_PREFER_MINM_OVER_MAXP, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %105 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @min(i32 %106, i32 7)
  store i32 %107, i32* %23, align 4
  br label %112

108:                                              ; preds = %96
  %109 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %110 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %23, align 4
  br label %112

112:                                              ; preds = %108, %103
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %115 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @RADEON_PLL_USE_POST_DIV, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %122 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %19, align 4
  %124 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %125 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %20, align 4
  br label %205

127:                                              ; preds = %113
  %128 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %129 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @RADEON_PLL_IS_LCD, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %136 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %29, align 4
  %138 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %139 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %30, align 4
  br label %148

141:                                              ; preds = %127
  %142 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %143 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %29, align 4
  %145 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %146 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %30, align 4
  br label %148

148:                                              ; preds = %141, %134
  %149 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %150 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load i32, i32* %29, align 4
  %157 = mul i32 %156, 10
  store i32 %157, i32* %29, align 4
  %158 = load i32, i32* %30, align 4
  %159 = mul i32 %158, 10
  store i32 %159, i32* %30, align 4
  br label %160

160:                                              ; preds = %155, %148
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %15, align 4
  %163 = udiv i32 %161, %162
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %19, align 4
  %166 = mul i32 %164, %165
  %167 = load i32, i32* %29, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* %19, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %19, align 4
  br label %172

172:                                              ; preds = %169, %160
  %173 = load i32, i32* %19, align 4
  %174 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %175 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %180 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %179, i32 0, i32 11
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %19, align 4
  br label %182

182:                                              ; preds = %178, %172
  %183 = load i32, i32* %30, align 4
  %184 = load i32, i32* %15, align 4
  %185 = udiv i32 %183, %184
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %20, align 4
  %188 = mul i32 %186, %187
  %189 = load i32, i32* %30, align 4
  %190 = icmp ugt i32 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load i32, i32* %20, align 4
  %193 = add i32 %192, -1
  store i32 %193, i32* %20, align 4
  br label %194

194:                                              ; preds = %191, %182
  %195 = load i32, i32* %20, align 4
  %196 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %197 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 4
  %199 = icmp ugt i32 %195, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %202 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %201, i32 0, i32 12
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %20, align 4
  br label %204

204:                                              ; preds = %200, %194
  br label %205

205:                                              ; preds = %204, %120
  %206 = load i32, i32* %15, align 4
  store i32 %206, i32* %27, align 4
  %207 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %208 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %207, i32 0, i32 13
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %28, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %19, align 4
  %212 = call i32 @avivo_reduce_ratio(i32* %27, i32* %28, i32 %210, i32 %211)
  %213 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %214 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @RADEON_PLL_PREFER_MINM_OVER_MAXP, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %205
  %220 = load i32, i32* %19, align 4
  store i32 %220, i32* %25, align 4
  br label %223

221:                                              ; preds = %205
  %222 = load i32, i32* %20, align 4
  store i32 %222, i32* %25, align 4
  br label %223

223:                                              ; preds = %221, %219
  store i32 -1, i32* %26, align 4
  %224 = load i32, i32* %19, align 4
  store i32 %224, i32* %21, align 4
  br label %225

225:                                              ; preds = %266, %223
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %20, align 4
  %228 = icmp ule i32 %226, %227
  br i1 %228, label %229, label %269

229:                                              ; preds = %225
  %230 = load i32, i32* %27, align 4
  %231 = load i32, i32* %28, align 4
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %23, align 4
  %235 = call i32 @avivo_get_fb_ref_div(i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32* %18, i32* %24)
  %236 = load i32, i32* %15, align 4
  %237 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %238 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %237, i32 0, i32 13
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %18, align 4
  %241 = mul i32 %239, %240
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %21, align 4
  %244 = mul i32 %242, %243
  %245 = udiv i32 %241, %244
  %246 = sub i32 %236, %245
  %247 = call i32 @abs(i32 %246)
  store i32 %247, i32* %31, align 4
  %248 = load i32, i32* %31, align 4
  %249 = load i32, i32* %26, align 4
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %262, label %251

251:                                              ; preds = %229
  %252 = load i32, i32* %31, align 4
  %253 = load i32, i32* %26, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %251
  %256 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %257 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @RADEON_PLL_PREFER_MINM_OVER_MAXP, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %255, %229
  %263 = load i32, i32* %21, align 4
  store i32 %263, i32* %25, align 4
  %264 = load i32, i32* %31, align 4
  store i32 %264, i32* %26, align 4
  br label %265

265:                                              ; preds = %262, %255, %251
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %21, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %21, align 4
  br label %225

269:                                              ; preds = %225
  %270 = load i32, i32* %25, align 4
  store i32 %270, i32* %21, align 4
  %271 = load i32, i32* %27, align 4
  %272 = load i32, i32* %28, align 4
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* %17, align 4
  %275 = load i32, i32* %23, align 4
  %276 = call i32 @avivo_get_fb_ref_div(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32* %18, i32* %24)
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %22, align 4
  %279 = call i32 @avivo_reduce_ratio(i32* %18, i32* %24, i32 %277, i32 %278)
  %280 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %281 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %312

286:                                              ; preds = %269
  %287 = load i32, i32* %18, align 4
  %288 = urem i32 %287, 10
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %312

290:                                              ; preds = %286
  %291 = load i32, i32* %16, align 4
  %292 = load i32, i32* %18, align 4
  %293 = urem i32 %292, 10
  %294 = sub i32 9, %293
  %295 = mul i32 %294, 20
  %296 = add i32 %295, 50
  %297 = call i32 @max(i32 %291, i32 %296)
  store i32 %297, i32* %16, align 4
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %16, align 4
  %300 = icmp ult i32 %298, %299
  br i1 %300, label %301, label %311

301:                                              ; preds = %290
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* %18, align 4
  %304 = call i32 @DIV_ROUND_UP(i32 %302, i32 %303)
  store i32 %304, i32* %32, align 4
  %305 = load i32, i32* %32, align 4
  %306 = load i32, i32* %18, align 4
  %307 = mul i32 %306, %305
  store i32 %307, i32* %18, align 4
  %308 = load i32, i32* %32, align 4
  %309 = load i32, i32* %24, align 4
  %310 = mul i32 %309, %308
  store i32 %310, i32* %24, align 4
  br label %311

311:                                              ; preds = %301, %290
  br label %312

312:                                              ; preds = %311, %286, %269
  %313 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %314 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @RADEON_PLL_USE_FRAC_FB_DIV, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %312
  %320 = load i32, i32* %18, align 4
  %321 = udiv i32 %320, 10
  %322 = load i32*, i32** %11, align 8
  store i32 %321, i32* %322, align 4
  %323 = load i32, i32* %18, align 4
  %324 = urem i32 %323, 10
  %325 = load i32*, i32** %12, align 8
  store i32 %324, i32* %325, align 4
  br label %330

326:                                              ; preds = %312
  %327 = load i32, i32* %18, align 4
  %328 = load i32*, i32** %11, align 8
  store i32 %327, i32* %328, align 4
  %329 = load i32*, i32** %12, align 8
  store i32 0, i32* %329, align 4
  br label %330

330:                                              ; preds = %326, %319
  %331 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %332 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %331, i32 0, i32 13
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* %334, align 4
  %336 = mul i32 %333, %335
  %337 = mul i32 %336, 10
  %338 = load %struct.radeon_pll*, %struct.radeon_pll** %8, align 8
  %339 = getelementptr inbounds %struct.radeon_pll, %struct.radeon_pll* %338, i32 0, i32 13
  %340 = load i32, i32* %339, align 4
  %341 = load i32*, i32** %12, align 8
  %342 = load i32, i32* %341, align 4
  %343 = mul i32 %340, %342
  %344 = add i32 %337, %343
  %345 = load i32, i32* %24, align 4
  %346 = load i32, i32* %21, align 4
  %347 = mul i32 %345, %346
  %348 = mul i32 %347, 10
  %349 = udiv i32 %344, %348
  %350 = load i32*, i32** %10, align 8
  store i32 %349, i32* %350, align 4
  %351 = load i32, i32* %24, align 4
  %352 = load i32*, i32** %13, align 8
  store i32 %351, i32* %352, align 4
  %353 = load i32, i32* %21, align 4
  %354 = load i32*, i32** %14, align 8
  store i32 %353, i32* %354, align 4
  %355 = load i32, i32* %9, align 4
  %356 = load i32*, i32** %10, align 8
  %357 = load i32, i32* %356, align 4
  %358 = mul nsw i32 %357, 10
  %359 = load i32*, i32** %11, align 8
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %12, align 8
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %24, align 4
  %364 = load i32, i32* %21, align 4
  %365 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %355, i32 %358, i32 %360, i32 %362, i32 %363, i32 %364)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @avivo_reduce_ratio(i32*, i32*, i32, i32) #1

declare dso_local i32 @avivo_get_fb_ref_div(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
