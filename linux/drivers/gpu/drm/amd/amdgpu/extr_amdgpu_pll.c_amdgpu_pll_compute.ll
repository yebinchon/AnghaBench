; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pll.c_amdgpu_pll_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pll.c_amdgpu_pll_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_pll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@AMDGPU_PLL_USE_FRAC_FB_DIV = common dso_local global i32 0, align 4
@AMDGPU_PLL_USE_REF_DIV = common dso_local global i32 0, align 4
@AMDGPU_PLL_USE_POST_DIV = common dso_local global i32 0, align 4
@AMDGPU_PLL_IS_LCD = common dso_local global i32 0, align 4
@AMDGPU_PLL_PREFER_MINM_OVER_MAXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%d - %d, pll dividers - fb: %d.%d ref: %d, post %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_pll_compute(%struct.amdgpu_pll* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.amdgpu_pll*, align 8
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
  store %struct.amdgpu_pll* %0, %struct.amdgpu_pll** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %33 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %34 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
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
  %46 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %47 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %16, align 4
  %49 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %50 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %53 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
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
  %64 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %65 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AMDGPU_PLL_USE_REF_DIV, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %72 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %22, align 4
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %76 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %22, align 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %80 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %87 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AMDGPU_PLL_USE_REF_DIV, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %94 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %23, align 4
  br label %100

96:                                               ; preds = %85, %78
  %97 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %98 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %23, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %102 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AMDGPU_PLL_USE_POST_DIV, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %109 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %19, align 4
  %111 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %112 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %20, align 4
  br label %192

114:                                              ; preds = %100
  %115 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %116 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AMDGPU_PLL_IS_LCD, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %123 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %29, align 4
  %125 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %126 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %30, align 4
  br label %135

128:                                              ; preds = %114
  %129 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %130 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %29, align 4
  %132 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %133 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %30, align 4
  br label %135

135:                                              ; preds = %128, %121
  %136 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %137 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load i32, i32* %29, align 4
  %144 = mul i32 %143, 10
  store i32 %144, i32* %29, align 4
  %145 = load i32, i32* %30, align 4
  %146 = mul i32 %145, 10
  store i32 %146, i32* %30, align 4
  br label %147

147:                                              ; preds = %142, %135
  %148 = load i32, i32* %29, align 4
  %149 = load i32, i32* %15, align 4
  %150 = udiv i32 %148, %149
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %19, align 4
  %153 = mul i32 %151, %152
  %154 = load i32, i32* %29, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i32, i32* %19, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %19, align 4
  br label %159

159:                                              ; preds = %156, %147
  %160 = load i32, i32* %19, align 4
  %161 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %162 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 4
  %164 = icmp ult i32 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %167 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %19, align 4
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i32, i32* %30, align 4
  %171 = load i32, i32* %15, align 4
  %172 = udiv i32 %170, %171
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %15, align 4
  %174 = load i32, i32* %20, align 4
  %175 = mul i32 %173, %174
  %176 = load i32, i32* %30, align 4
  %177 = icmp ugt i32 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load i32, i32* %20, align 4
  %180 = add i32 %179, -1
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %178, %169
  %182 = load i32, i32* %20, align 4
  %183 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %184 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %183, i32 0, i32 12
  %185 = load i32, i32* %184, align 4
  %186 = icmp ugt i32 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %189 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %20, align 4
  br label %191

191:                                              ; preds = %187, %181
  br label %192

192:                                              ; preds = %191, %107
  %193 = load i32, i32* %15, align 4
  store i32 %193, i32* %27, align 4
  %194 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %195 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %194, i32 0, i32 13
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %28, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %19, align 4
  %199 = call i32 @amdgpu_pll_reduce_ratio(i32* %27, i32* %28, i32 %197, i32 %198)
  %200 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %201 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @AMDGPU_PLL_PREFER_MINM_OVER_MAXP, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %192
  %207 = load i32, i32* %19, align 4
  store i32 %207, i32* %25, align 4
  br label %210

208:                                              ; preds = %192
  %209 = load i32, i32* %20, align 4
  store i32 %209, i32* %25, align 4
  br label %210

210:                                              ; preds = %208, %206
  store i32 -1, i32* %26, align 4
  %211 = load i32, i32* %19, align 4
  store i32 %211, i32* %21, align 4
  br label %212

212:                                              ; preds = %253, %210
  %213 = load i32, i32* %21, align 4
  %214 = load i32, i32* %20, align 4
  %215 = icmp ule i32 %213, %214
  br i1 %215, label %216, label %256

216:                                              ; preds = %212
  %217 = load i32, i32* %27, align 4
  %218 = load i32, i32* %28, align 4
  %219 = load i32, i32* %21, align 4
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %23, align 4
  %222 = call i32 @amdgpu_pll_get_fb_ref_div(i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32* %18, i32* %24)
  %223 = load i32, i32* %15, align 4
  %224 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %225 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %224, i32 0, i32 13
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %18, align 4
  %228 = mul i32 %226, %227
  %229 = load i32, i32* %24, align 4
  %230 = load i32, i32* %21, align 4
  %231 = mul i32 %229, %230
  %232 = udiv i32 %228, %231
  %233 = sub i32 %223, %232
  %234 = call i32 @abs(i32 %233)
  store i32 %234, i32* %31, align 4
  %235 = load i32, i32* %31, align 4
  %236 = load i32, i32* %26, align 4
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %249, label %238

238:                                              ; preds = %216
  %239 = load i32, i32* %31, align 4
  %240 = load i32, i32* %26, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %244 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @AMDGPU_PLL_PREFER_MINM_OVER_MAXP, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %242, %216
  %250 = load i32, i32* %21, align 4
  store i32 %250, i32* %25, align 4
  %251 = load i32, i32* %31, align 4
  store i32 %251, i32* %26, align 4
  br label %252

252:                                              ; preds = %249, %242, %238
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %21, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %21, align 4
  br label %212

256:                                              ; preds = %212
  %257 = load i32, i32* %25, align 4
  store i32 %257, i32* %21, align 4
  %258 = load i32, i32* %27, align 4
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %21, align 4
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %23, align 4
  %263 = call i32 @amdgpu_pll_get_fb_ref_div(i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32* %18, i32* %24)
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %22, align 4
  %266 = call i32 @amdgpu_pll_reduce_ratio(i32* %18, i32* %24, i32 %264, i32 %265)
  %267 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %268 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %299

273:                                              ; preds = %256
  %274 = load i32, i32* %18, align 4
  %275 = urem i32 %274, 10
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %299

277:                                              ; preds = %273
  %278 = load i32, i32* %16, align 4
  %279 = load i32, i32* %18, align 4
  %280 = urem i32 %279, 10
  %281 = sub i32 9, %280
  %282 = mul i32 %281, 20
  %283 = add i32 %282, 60
  %284 = call i32 @max(i32 %278, i32 %283)
  store i32 %284, i32* %16, align 4
  %285 = load i32, i32* %18, align 4
  %286 = load i32, i32* %16, align 4
  %287 = icmp ult i32 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %277
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %18, align 4
  %291 = call i32 @DIV_ROUND_UP(i32 %289, i32 %290)
  store i32 %291, i32* %32, align 4
  %292 = load i32, i32* %32, align 4
  %293 = load i32, i32* %18, align 4
  %294 = mul i32 %293, %292
  store i32 %294, i32* %18, align 4
  %295 = load i32, i32* %32, align 4
  %296 = load i32, i32* %24, align 4
  %297 = mul i32 %296, %295
  store i32 %297, i32* %24, align 4
  br label %298

298:                                              ; preds = %288, %277
  br label %299

299:                                              ; preds = %298, %273, %256
  %300 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %301 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @AMDGPU_PLL_USE_FRAC_FB_DIV, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %299
  %307 = load i32, i32* %18, align 4
  %308 = udiv i32 %307, 10
  %309 = load i32*, i32** %11, align 8
  store i32 %308, i32* %309, align 4
  %310 = load i32, i32* %18, align 4
  %311 = urem i32 %310, 10
  %312 = load i32*, i32** %12, align 8
  store i32 %311, i32* %312, align 4
  br label %317

313:                                              ; preds = %299
  %314 = load i32, i32* %18, align 4
  %315 = load i32*, i32** %11, align 8
  store i32 %314, i32* %315, align 4
  %316 = load i32*, i32** %12, align 8
  store i32 0, i32* %316, align 4
  br label %317

317:                                              ; preds = %313, %306
  %318 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %319 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %318, i32 0, i32 13
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %11, align 8
  %322 = load i32, i32* %321, align 4
  %323 = mul i32 %320, %322
  %324 = mul i32 %323, 10
  %325 = load %struct.amdgpu_pll*, %struct.amdgpu_pll** %8, align 8
  %326 = getelementptr inbounds %struct.amdgpu_pll, %struct.amdgpu_pll* %325, i32 0, i32 13
  %327 = load i32, i32* %326, align 4
  %328 = load i32*, i32** %12, align 8
  %329 = load i32, i32* %328, align 4
  %330 = mul i32 %327, %329
  %331 = add i32 %324, %330
  %332 = load i32, i32* %24, align 4
  %333 = load i32, i32* %21, align 4
  %334 = mul i32 %332, %333
  %335 = mul i32 %334, 10
  %336 = udiv i32 %331, %335
  %337 = load i32*, i32** %10, align 8
  store i32 %336, i32* %337, align 4
  %338 = load i32, i32* %24, align 4
  %339 = load i32*, i32** %13, align 8
  store i32 %338, i32* %339, align 4
  %340 = load i32, i32* %21, align 4
  %341 = load i32*, i32** %14, align 8
  store i32 %340, i32* %341, align 4
  %342 = load i32, i32* %9, align 4
  %343 = load i32*, i32** %10, align 8
  %344 = load i32, i32* %343, align 4
  %345 = mul nsw i32 %344, 10
  %346 = load i32*, i32** %11, align 8
  %347 = load i32, i32* %346, align 4
  %348 = load i32*, i32** %12, align 8
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %24, align 4
  %351 = load i32, i32* %21, align 4
  %352 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %342, i32 %345, i32 %347, i32 %349, i32 %350, i32 %351)
  ret void
}

declare dso_local i32 @amdgpu_pll_reduce_ratio(i32*, i32*, i32, i32) #1

declare dso_local i32 @amdgpu_pll_get_fb_ref_div(i32, i32, i32, i32, i32, i32*, i32*) #1

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
