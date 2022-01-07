; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateVMAndRowBytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_CalculateVMAndRowBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dm_horz = common dso_local global i32 0, align 4
@dm_sw_linear = common dso_local global i32 0, align 4
@dm_sw_gfx7_2d_thin_gl = common dso_local global i32 0, align 4
@dm_sw_gfx7_2d_thin_lvp = common dso_local global i32 0, align 4
@dm_sw_4kb_s = common dso_local global i32 0, align 4
@dm_sw_4kb_s_x = common dso_local global i32 0, align 4
@dm_sw_4kb_d = common dso_local global i32 0, align 4
@dm_sw_4kb_d_x = common dso_local global i32 0, align 4
@dm_sw_64kb_s = common dso_local global i32 0, align 4
@dm_sw_64kb_s_t = common dso_local global i32 0, align 4
@dm_sw_64kb_s_x = common dso_local global i32 0, align 4
@dm_sw_64kb_d = common dso_local global i32 0, align 4
@dm_sw_64kb_d_t = common dso_local global i32 0, align 4
@dm_sw_64kb_d_x = common dso_local global i32 0, align 4
@dm_sw_64kb_r_x = common dso_local global i32 0, align 4
@dm_420_8 = common dso_local global i32 0, align 4
@dm_420_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_mode_lib*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @CalculateVMAndRowBytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CalculateVMAndRowBytes(%struct.display_mode_lib* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22) #0 {
  %24 = alloca %struct.display_mode_lib*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca double, align 8
  %63 = alloca i32, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %24, align 8
  store i32 %1, i32* %25, align 4
  store i32 %2, i32* %26, align 4
  store i32 %3, i32* %27, align 4
  store i32 %4, i32* %28, align 4
  store i32 %5, i32* %29, align 4
  store i32 %6, i32* %30, align 4
  store i32 %7, i32* %31, align 4
  store i32 %8, i32* %32, align 4
  store i32 %9, i32* %33, align 4
  store i32 %10, i32* %34, align 4
  store i32 %11, i32* %35, align 4
  store i32 %12, i32* %36, align 4
  store i32 %13, i32* %37, align 4
  store i32 %14, i32* %38, align 4
  store i32 %15, i32* %39, align 4
  store i32 %16, i32* %40, align 4
  store i32* %17, i32** %41, align 8
  store i32* %18, i32** %42, align 8
  store i32* %19, i32** %43, align 8
  store i32* %20, i32** %44, align 8
  store i32* %21, i32** %45, align 8
  store i32* %22, i32** %46, align 8
  %64 = load i32, i32* %25, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %169

66:                                               ; preds = %23
  %67 = load i32, i32* %26, align 4
  %68 = mul i32 8, %67
  store i32 %68, i32* %47, align 4
  %69 = load i32, i32* %27, align 4
  %70 = mul i32 8, %69
  store i32 %70, i32* %48, align 4
  %71 = load i32, i32* %31, align 4
  %72 = load i32, i32* @dm_horz, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %66
  %75 = load i32, i32* %47, align 4
  %76 = load i32*, i32** %46, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %34, align 4
  %78 = uitofp i32 %77 to double
  %79 = fsub double %78, 1.000000e+00
  %80 = load i32, i32* %48, align 4
  %81 = call i32 @dml_ceil(double %79, i32 %80)
  %82 = load i32, i32* %48, align 4
  %83 = add i32 %81, %82
  store i32 %83, i32* %49, align 4
  %84 = load i32, i32* %49, align 4
  %85 = load i32, i32* %47, align 4
  %86 = mul i32 %84, %85
  %87 = load i32, i32* %30, align 4
  %88 = mul i32 %86, %87
  %89 = uitofp i32 %88 to double
  %90 = fdiv double %89, 2.560000e+02
  %91 = fptoui double %90 to i32
  %92 = load i32*, i32** %42, align 8
  store i32 %91, i32* %92, align 4
  br label %112

93:                                               ; preds = %66
  %94 = load i32, i32* %48, align 4
  %95 = load i32*, i32** %46, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %34, align 4
  %97 = uitofp i32 %96 to double
  %98 = fsub double %97, 1.000000e+00
  %99 = load i32, i32* %47, align 4
  %100 = call i32 @dml_ceil(double %98, i32 %99)
  %101 = load i32, i32* %47, align 4
  %102 = add i32 %100, %101
  store i32 %102, i32* %50, align 4
  %103 = load i32, i32* %50, align 4
  %104 = load i32, i32* %48, align 4
  %105 = mul i32 %103, %104
  %106 = load i32, i32* %30, align 4
  %107 = mul i32 %105, %106
  %108 = uitofp i32 %107 to double
  %109 = fdiv double %108, 2.560000e+02
  %110 = fptoui double %109 to i32
  %111 = load i32*, i32** %42, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %93, %74
  %113 = load i32, i32* %31, align 4
  %114 = load i32, i32* @dm_horz, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load i32, i32* %40, align 4
  %118 = load i32, i32* %33, align 4
  %119 = sub i32 %118, 1
  %120 = uitofp i32 %119 to double
  %121 = load i32, i32* %26, align 4
  %122 = mul i32 64, %121
  %123 = call i32 @dml_ceil(double %120, i32 %122)
  %124 = load i32, i32* %26, align 4
  %125 = mul i32 64, %124
  %126 = add i32 %123, %125
  %127 = mul i32 %117, %126
  %128 = load i32, i32* %30, align 4
  %129 = mul i32 %127, %128
  %130 = udiv i32 %129, 256
  store i32 %130, i32* %53, align 4
  br label %146

131:                                              ; preds = %112
  %132 = load i32, i32* %40, align 4
  %133 = load i32, i32* %33, align 4
  %134 = uitofp i32 %133 to double
  %135 = fsub double %134, 1.000000e+00
  %136 = load i32, i32* %26, align 4
  %137 = mul i32 64, %136
  %138 = call i32 @dml_ceil(double %135, i32 %137)
  %139 = load i32, i32* %26, align 4
  %140 = mul i32 64, %139
  %141 = add i32 %138, %140
  %142 = mul i32 %132, %141
  %143 = load i32, i32* %30, align 4
  %144 = mul i32 %142, %143
  %145 = udiv i32 %144, 256
  store i32 %145, i32* %53, align 4
  br label %146

146:                                              ; preds = %131, %116
  %147 = load i32, i32* %35, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load i32, i32* %53, align 4
  %151 = load i32, i32* %36, align 4
  %152 = sub i32 %150, %151
  %153 = uitofp i32 %152 to double
  %154 = load i32, i32* %36, align 4
  %155 = mul i32 8, %154
  %156 = uitofp i32 %155 to double
  %157 = fdiv double %153, %156
  %158 = call i32 @dml_ceil(double %157, i32 1)
  %159 = add nsw i32 %158, 1
  %160 = mul nsw i32 %159, 64
  store i32 %160, i32* %52, align 4
  %161 = load %struct.display_mode_lib*, %struct.display_mode_lib** %24, align 8
  %162 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, 1
  %166 = mul nsw i32 128, %165
  store i32 %166, i32* %51, align 4
  br label %168

167:                                              ; preds = %146
  store i32 0, i32* %52, align 4
  store i32 0, i32* %51, align 4
  br label %168

168:                                              ; preds = %167, %149
  br label %171

169:                                              ; preds = %23
  store i32 0, i32* %52, align 4
  store i32 0, i32* %51, align 4
  %170 = load i32*, i32** %42, align 8
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %169, %168
  %172 = load i32, i32* %29, align 4
  %173 = load i32, i32* @dm_sw_linear, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %183, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %29, align 4
  %177 = load i32, i32* @dm_sw_gfx7_2d_thin_gl, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %29, align 4
  %181 = load i32, i32* @dm_sw_gfx7_2d_thin_lvp, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179, %175, %171
  store i32 256, i32* %54, align 4
  %184 = load i32, i32* %26, align 4
  store i32 %184, i32* %55, align 4
  br label %240

185:                                              ; preds = %179
  %186 = load i32, i32* %29, align 4
  %187 = load i32, i32* @dm_sw_4kb_s, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %29, align 4
  %191 = load i32, i32* @dm_sw_4kb_s_x, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %201, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %29, align 4
  %195 = load i32, i32* @dm_sw_4kb_d, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %29, align 4
  %199 = load i32, i32* @dm_sw_4kb_d_x, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197, %193, %189, %185
  store i32 4096, i32* %54, align 4
  %202 = load i32, i32* %26, align 4
  %203 = mul i32 4, %202
  store i32 %203, i32* %55, align 4
  br label %239

204:                                              ; preds = %197
  %205 = load i32, i32* %29, align 4
  %206 = load i32, i32* @dm_sw_64kb_s, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %232, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* @dm_sw_64kb_s_t, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %232, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %29, align 4
  %214 = load i32, i32* @dm_sw_64kb_s_x, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %232, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %29, align 4
  %218 = load i32, i32* @dm_sw_64kb_d, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %232, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %29, align 4
  %222 = load i32, i32* @dm_sw_64kb_d_t, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %232, label %224

224:                                              ; preds = %220
  %225 = load i32, i32* %29, align 4
  %226 = load i32, i32* @dm_sw_64kb_d_x, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %232, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %29, align 4
  %230 = load i32, i32* @dm_sw_64kb_r_x, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %228, %224, %220, %216, %212, %208, %204
  store i32 65536, i32* %54, align 4
  %233 = load i32, i32* %26, align 4
  %234 = mul i32 16, %233
  store i32 %234, i32* %55, align 4
  br label %238

235:                                              ; preds = %228
  store i32 262144, i32* %54, align 4
  %236 = load i32, i32* %26, align 4
  %237 = mul i32 32, %236
  store i32 %237, i32* %55, align 4
  br label %238

238:                                              ; preds = %235, %232
  br label %239

239:                                              ; preds = %238, %201
  br label %240

240:                                              ; preds = %239, %183
  %241 = load i32, i32* %54, align 4
  %242 = load i32, i32* %30, align 4
  %243 = udiv i32 %241, %242
  %244 = load i32, i32* %55, align 4
  %245 = udiv i32 %243, %244
  %246 = load i32*, i32** %41, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %35, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %304

249:                                              ; preds = %240
  %250 = load %struct.display_mode_lib*, %struct.display_mode_lib** %24, align 8
  %251 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp sgt i32 %253, 1
  br i1 %254, label %255, label %304

255:                                              ; preds = %249
  %256 = load i32, i32* %31, align 4
  %257 = load i32, i32* @dm_horz, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %278

259:                                              ; preds = %255
  %260 = load i32, i32* %39, align 4
  %261 = load i32, i32* %33, align 4
  %262 = sub i32 %261, 1
  %263 = uitofp i32 %262 to double
  %264 = load i32, i32* %55, align 4
  %265 = call i32 @dml_ceil(double %263, i32 %264)
  %266 = load i32, i32* %55, align 4
  %267 = add i32 %265, %266
  %268 = mul i32 %260, %267
  %269 = load i32, i32* %30, align 4
  %270 = mul i32 %268, %269
  %271 = load i32, i32* %54, align 4
  %272 = sub i32 %270, %271
  %273 = udiv i32 %272, 16777216
  %274 = uitofp i32 %273 to double
  %275 = call i32 @dml_ceil(double %274, i32 1)
  %276 = add nsw i32 %275, 1
  %277 = mul nsw i32 64, %276
  store i32 %277, i32* %56, align 4
  br label %297

278:                                              ; preds = %255
  %279 = load i32, i32* %39, align 4
  %280 = load i32, i32* %34, align 4
  %281 = uitofp i32 %280 to double
  %282 = fsub double %281, 1.000000e+00
  %283 = load i32, i32* %55, align 4
  %284 = call i32 @dml_ceil(double %282, i32 %283)
  %285 = load i32, i32* %55, align 4
  %286 = add i32 %284, %285
  %287 = mul i32 %279, %286
  %288 = load i32, i32* %30, align 4
  %289 = mul i32 %287, %288
  %290 = load i32, i32* %54, align 4
  %291 = sub i32 %289, %290
  %292 = udiv i32 %291, 16777216
  %293 = uitofp i32 %292 to double
  %294 = call i32 @dml_ceil(double %293, i32 1)
  %295 = add nsw i32 %294, 1
  %296 = mul nsw i32 64, %295
  store i32 %296, i32* %56, align 4
  br label %297

297:                                              ; preds = %278, %259
  %298 = load %struct.display_mode_lib*, %struct.display_mode_lib** %24, align 8
  %299 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = sub nsw i32 %301, 2
  %303 = mul nsw i32 128, %302
  store i32 %303, i32* %57, align 4
  br label %305

304:                                              ; preds = %249, %240
  store i32 0, i32* %56, align 4
  store i32 0, i32* %57, align 4
  br label %305

305:                                              ; preds = %304, %297
  %306 = load i32, i32* %52, align 4
  %307 = load i32, i32* %51, align 4
  %308 = add i32 %306, %307
  %309 = load i32, i32* %56, align 4
  %310 = add i32 %308, %309
  %311 = load i32, i32* %57, align 4
  %312 = add i32 %310, %311
  store i32 %312, i32* %58, align 4
  %313 = load i32, i32* %35, align 4
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %465

315:                                              ; preds = %305
  %316 = load i32, i32* %29, align 4
  %317 = load i32, i32* @dm_sw_linear, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %327

319:                                              ; preds = %315
  store i32 1, i32* %60, align 4
  %320 = load i32, i32* %36, align 4
  %321 = uitofp i32 %320 to double
  %322 = fmul double 8.000000e+00, %321
  %323 = load i32, i32* %30, align 4
  %324 = uitofp i32 %323 to double
  %325 = fdiv double %322, %324
  %326 = fptoui double %325 to i32
  store i32 %326, i32* %61, align 4
  store i32 64, i32* %59, align 4
  store double 0.000000e+00, double* %62, align 8
  br label %359

327:                                              ; preds = %315
  %328 = load i32, i32* %54, align 4
  %329 = icmp eq i32 %328, 4096
  br i1 %329, label %330, label %341

330:                                              ; preds = %327
  %331 = load i32, i32* %55, align 4
  store i32 %331, i32* %60, align 4
  %332 = load i32*, i32** %41, align 8
  %333 = load i32, i32* %332, align 4
  %334 = mul i32 8, %333
  store i32 %334, i32* %61, align 4
  store i32 64, i32* %59, align 4
  %335 = load i32, i32* %31, align 4
  %336 = load i32, i32* @dm_horz, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %330
  store double 0.000000e+00, double* %62, align 8
  br label %340

339:                                              ; preds = %330
  store double 0.000000e+00, double* %62, align 8
  br label %340

340:                                              ; preds = %339, %338
  br label %358

341:                                              ; preds = %327
  %342 = load i32, i32* %36, align 4
  %343 = icmp eq i32 %342, 4096
  br i1 %343, label %344, label %352

344:                                              ; preds = %341
  %345 = load i32, i32* %54, align 4
  %346 = icmp ugt i32 %345, 4096
  br i1 %346, label %347, label %352

347:                                              ; preds = %344
  %348 = load i32, i32* %26, align 4
  %349 = mul i32 16, %348
  store i32 %349, i32* %60, align 4
  %350 = load i32, i32* %27, align 4
  %351 = mul i32 16, %350
  store i32 %351, i32* %61, align 4
  store i32 128, i32* %59, align 4
  store double 0.000000e+00, double* %62, align 8
  br label %357

352:                                              ; preds = %344, %341
  %353 = load i32, i32* %55, align 4
  store i32 %353, i32* %60, align 4
  %354 = load i32*, i32** %41, align 8
  %355 = load i32, i32* %354, align 4
  %356 = mul i32 8, %355
  store i32 %356, i32* %61, align 4
  store i32 64, i32* %59, align 4
  store double 0.000000e+00, double* %62, align 8
  br label %357

357:                                              ; preds = %352, %347
  br label %358

358:                                              ; preds = %357, %340
  br label %359

359:                                              ; preds = %358, %319
  %360 = load i32, i32* %28, align 4
  %361 = load i32, i32* @dm_420_8, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load i32, i32* %28, align 4
  %365 = load i32, i32* @dm_420_10, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %363, %359
  %368 = load i32, i32* %38, align 4
  %369 = udiv i32 %368, 2
  store i32 %369, i32* %63, align 4
  br label %372

370:                                              ; preds = %363
  %371 = load i32, i32* %38, align 4
  store i32 %371, i32* %63, align 4
  br label %372

372:                                              ; preds = %370, %367
  %373 = load i32, i32* %29, align 4
  %374 = load i32, i32* @dm_sw_linear, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %413

376:                                              ; preds = %372
  %377 = load i32, i32* %37, align 4
  %378 = uitofp i32 %377 to double
  %379 = load i32, i32* %61, align 4
  %380 = uitofp i32 %379 to double
  %381 = fmul double %378, %380
  %382 = fptoui double %381 to i32
  %383 = load i32, i32* %63, align 4
  %384 = uitofp i32 %383 to double
  %385 = fmul double %384, 6.553600e+04
  %386 = load i32, i32* %30, align 4
  %387 = uitofp i32 %386 to double
  %388 = fdiv double %385, %387
  %389 = fptoui double %388 to i32
  %390 = call i32 @dml_min(i32 %382, i32 %389)
  %391 = load i32, i32* %39, align 4
  %392 = udiv i32 %390, %391
  %393 = call i32 @dml_log2(i32 %392)
  %394 = call i64 @dml_floor(i32 %393, i32 1)
  %395 = trunc i64 %394 to i32
  %396 = shl i32 1, %395
  %397 = call i32 @dml_min(i32 128, i32 %396)
  %398 = load i32*, i32** %45, align 8
  store i32 %397, i32* %398, align 4
  %399 = load i32, i32* %59, align 4
  %400 = load i32, i32* %39, align 4
  %401 = load i32*, i32** %45, align 8
  %402 = load i32, i32* %401, align 4
  %403 = mul i32 %400, %402
  %404 = sub i32 %403, 1
  %405 = uitofp i32 %404 to double
  %406 = load i32, i32* %61, align 4
  %407 = uitofp i32 %406 to double
  %408 = fdiv double %405, %407
  %409 = call i32 @dml_ceil(double %408, i32 1)
  %410 = add nsw i32 %409, 1
  %411 = mul i32 %399, %410
  %412 = load i32*, i32** %43, align 8
  store i32 %411, i32* %412, align 4
  br label %449

413:                                              ; preds = %372
  %414 = load i32, i32* %31, align 4
  %415 = load i32, i32* @dm_horz, align 4
  %416 = icmp eq i32 %414, %415
  br i1 %416, label %417, label %431

417:                                              ; preds = %413
  %418 = load i32, i32* %60, align 4
  %419 = load i32*, i32** %45, align 8
  store i32 %418, i32* %419, align 4
  %420 = load i32, i32* %59, align 4
  %421 = load i32, i32* %34, align 4
  %422 = uitofp i32 %421 to double
  %423 = fsub double %422, 1.000000e+00
  %424 = load i32, i32* %61, align 4
  %425 = uitofp i32 %424 to double
  %426 = fdiv double %423, %425
  %427 = call i32 @dml_ceil(double %426, i32 1)
  %428 = add nsw i32 %427, 1
  %429 = mul i32 %420, %428
  %430 = load i32*, i32** %43, align 8
  store i32 %429, i32* %430, align 4
  br label %448

431:                                              ; preds = %413
  %432 = load i32, i32* %61, align 4
  %433 = load i32*, i32** %41, align 8
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @dml_min(i32 %432, i32 %434)
  %436 = load i32*, i32** %45, align 8
  store i32 %435, i32* %436, align 4
  %437 = load i32, i32* %59, align 4
  %438 = load i32, i32* %34, align 4
  %439 = uitofp i32 %438 to double
  %440 = fsub double %439, 1.000000e+00
  %441 = load i32, i32* %60, align 4
  %442 = uitofp i32 %441 to double
  %443 = fdiv double %440, %442
  %444 = call i32 @dml_ceil(double %443, i32 1)
  %445 = add nsw i32 %444, 1
  %446 = mul i32 %437, %445
  %447 = load i32*, i32** %43, align 8
  store i32 %446, i32* %447, align 4
  br label %448

448:                                              ; preds = %431, %417
  br label %449

449:                                              ; preds = %448, %376
  %450 = load i32*, i32** %43, align 8
  %451 = load i32, i32* %450, align 4
  %452 = uitofp i32 %451 to double
  %453 = load double, double* %62, align 8
  %454 = fsub double 1.000000e+00, %453
  %455 = fmul double %452, %454
  %456 = load i32, i32* %37, align 4
  %457 = mul i32 64, %456
  %458 = uitofp i32 %457 to double
  %459 = fcmp ole double %455, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %449
  %461 = load i32*, i32** %44, align 8
  store i32 1, i32* %461, align 4
  br label %464

462:                                              ; preds = %449
  %463 = load i32*, i32** %44, align 8
  store i32 0, i32* %463, align 4
  br label %464

464:                                              ; preds = %462, %460
  br label %468

465:                                              ; preds = %305
  %466 = load i32*, i32** %43, align 8
  store i32 0, i32* %466, align 4
  %467 = load i32*, i32** %44, align 8
  store i32 1, i32* %467, align 4
  br label %468

468:                                              ; preds = %465, %464
  %469 = load i32, i32* %58, align 4
  ret i32 %469
}

declare dso_local i32 @dml_ceil(double, i32) #1

declare dso_local i32 @dml_min(i32, i32) #1

declare dso_local i64 @dml_floor(i32, i32) #1

declare dso_local i32 @dml_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
