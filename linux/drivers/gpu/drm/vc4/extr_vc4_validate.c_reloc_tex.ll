; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_reloc_tex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_reloc_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { i32*, i32 }
%struct.vc4_texture_sample_info = type { i32*, i64 }
%struct.drm_gem_cma_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@VC4_TEX_P0_OFFSET_MASK = common dso_local global i32 0, align 4
@VC4_TEX_P0_MIPLVLS = common dso_local global i32 0, align 4
@VC4_TEX_P1_WIDTH = common dso_local global i32 0, align 4
@VC4_TEX_P1_HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"UBO offset greater than UBO size\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"UBO clamp would allow reads outside of UBO\0A\00", align 1
@VC4_TEX_P0_CMMODE_MASK = common dso_local global i32 0, align 4
@VC4_TEX_P2_PTYPE = common dso_local global i32 0, align 4
@VC4_TEX_P2_PTYPE_CUBE_MAP_STRIDE = common dso_local global i32 0, align 4
@VC4_TEX_P2_CMST_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cube map stride set twice\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cube map stride not set\0A\00", align 1
@VC4_TEX_P0_TYPE = common dso_local global i32 0, align 4
@VC4_TEX_P1_TYPE4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Texture format %d unsupported\0A\00", align 1
@VC4_TILING_FORMAT_LINEAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [73 x i8] c"Level %d (%dx%d -> %dx%d) size %db overflowed buffer bounds (offset %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Texture p0 at %d: 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Texture p1 at %d: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Texture p2 at %d: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Texture p3 at %d: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_exec_info*, i8*, %struct.vc4_texture_sample_info*, i32, i32)* @reloc_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reloc_tex(%struct.vc4_exec_info* %0, i8* %1, %struct.vc4_texture_sample_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc4_exec_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vc4_texture_sample_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_gem_cma_object*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
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
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.vc4_texture_sample_info* %2, %struct.vc4_texture_sample_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %37 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %35, i64 %41
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %47 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %45, i64 %51
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %56 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %72

61:                                               ; preds = %5
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %64 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %62, i64 %68
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %70, align 4
  br label %73

72:                                               ; preds = %5
  br label %73

73:                                               ; preds = %72, %61
  %74 = phi i32 [ %71, %61 ], [ 0, %72 ]
  store i32 %74, i32* %15, align 4
  %75 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %76 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %84 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %82, i64 %88
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  br label %93

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92, %81
  %94 = phi i32 [ %91, %81 ], [ 0, %92 ]
  store i32 %94, i32* %16, align 4
  %95 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %96 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %99 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %97, i64 %103
  store i32* %104, i32** %17, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @VC4_TEX_P0_OFFSET_MASK, align 4
  %107 = and i32 %105, %106
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @VC4_TEX_P0_MIPLVLS, align 4
  %110 = call i32 @VC4_GET_FIELD(i32 %108, i32 %109)
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @VC4_TEX_P1_WIDTH, align 4
  %113 = call i32 @VC4_GET_FIELD(i32 %111, i32 %112)
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @VC4_TEX_P1_HEIGHT, align 4
  %116 = call i32 @VC4_GET_FIELD(i32 %114, i32 %115)
  store i32 %116, i32* %21, align 4
  store i32 0, i32* %27, align 4
  %117 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info* %117, i32 %118)
  store %struct.drm_gem_cma_object* %119, %struct.drm_gem_cma_object** %12, align 8
  %120 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %121 = icmp ne %struct.drm_gem_cma_object* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %383

123:                                              ; preds = %93
  %124 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %125 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %158

128:                                              ; preds = %123
  %129 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %130 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %29, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %137 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 4
  %141 = icmp sgt i32 %135, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %354

144:                                              ; preds = %128
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %29, align 4
  %147 = sub nsw i32 %146, 4
  %148 = icmp sgt i32 %145, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %354

151:                                              ; preds = %144
  %152 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %153 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32*, i32** %17, align 8
  store i32 %156, i32* %157, align 4
  store i32 1, i32* %6, align 4
  br label %383

158:                                              ; preds = %123
  %159 = load i32, i32* %20, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 2048, i32* %20, align 4
  br label %162

162:                                              ; preds = %161, %158
  %163 = load i32, i32* %21, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 2048, i32* %21, align 4
  br label %166

166:                                              ; preds = %165, %162
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @VC4_TEX_P0_CMMODE_MASK, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %202

171:                                              ; preds = %166
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* @VC4_TEX_P2_PTYPE, align 4
  %174 = call i32 @VC4_GET_FIELD(i32 %172, i32 %173)
  %175 = load i32, i32* @VC4_TEX_P2_PTYPE_CUBE_MAP_STRIDE, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @VC4_TEX_P2_CMST_MASK, align 4
  %180 = and i32 %178, %179
  store i32 %180, i32* %27, align 4
  br label %181

181:                                              ; preds = %177, %171
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* @VC4_TEX_P2_PTYPE, align 4
  %184 = call i32 @VC4_GET_FIELD(i32 %182, i32 %183)
  %185 = load i32, i32* @VC4_TEX_P2_PTYPE_CUBE_MAP_STRIDE, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load i32, i32* %27, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %354

192:                                              ; preds = %187
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* @VC4_TEX_P2_CMST_MASK, align 4
  %195 = and i32 %193, %194
  store i32 %195, i32* %27, align 4
  br label %196

196:                                              ; preds = %192, %181
  %197 = load i32, i32* %27, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %196
  %200 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %354

201:                                              ; preds = %196
  br label %202

202:                                              ; preds = %201, %166
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @VC4_TEX_P0_TYPE, align 4
  %205 = call i32 @VC4_GET_FIELD(i32 %203, i32 %204)
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* @VC4_TEX_P1_TYPE4, align 4
  %208 = call i32 @VC4_GET_FIELD(i32 %206, i32 %207)
  %209 = shl i32 %208, 4
  %210 = or i32 %205, %209
  store i32 %210, i32* %28, align 4
  %211 = load i32, i32* %28, align 4
  switch i32 %211, label %223 [
    i32 135, label %212
    i32 134, label %212
    i32 139, label %212
    i32 138, label %213
    i32 137, label %213
    i32 140, label %213
    i32 142, label %213
    i32 132, label %213
    i32 133, label %213
    i32 141, label %214
    i32 145, label %214
    i32 131, label %214
    i32 143, label %215
    i32 144, label %222
    i32 146, label %222
    i32 147, label %222
    i32 136, label %222
    i32 130, label %222
  ]

212:                                              ; preds = %202, %202, %202
  store i32 4, i32* %22, align 4
  br label %226

213:                                              ; preds = %202, %202, %202, %202, %202, %202
  store i32 2, i32* %22, align 4
  br label %226

214:                                              ; preds = %202, %202, %202
  store i32 1, i32* %22, align 4
  br label %226

215:                                              ; preds = %202
  store i32 8, i32* %22, align 4
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %216, 3
  %218 = ashr i32 %217, 2
  store i32 %218, i32* %20, align 4
  %219 = load i32, i32* %21, align 4
  %220 = add nsw i32 %219, 3
  %221 = ashr i32 %220, 2
  store i32 %221, i32* %21, align 4
  br label %226

222:                                              ; preds = %202, %202, %202, %202, %202
  br label %223

223:                                              ; preds = %202, %222
  %224 = load i32, i32* %28, align 4
  %225 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  br label %354

226:                                              ; preds = %215, %214, %213, %212
  %227 = load i32, i32* %22, align 4
  %228 = call i32 @utile_width(i32 %227)
  store i32 %228, i32* %24, align 4
  %229 = load i32, i32* %22, align 4
  %230 = call i32 @utile_height(i32 %229)
  store i32 %230, i32* %25, align 4
  %231 = load i32, i32* %28, align 4
  %232 = icmp eq i32 %231, 139
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load i32, i32* @VC4_TILING_FORMAT_LINEAR, align 4
  store i32 %234, i32* %23, align 4
  br label %244

235:                                              ; preds = %226
  %236 = load i32, i32* %20, align 4
  %237 = load i32, i32* %21, align 4
  %238 = load i32, i32* %22, align 4
  %239 = call i64 @size_is_lt(i32 %236, i32 %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  store i32 129, i32* %23, align 4
  br label %243

242:                                              ; preds = %235
  store i32 128, i32* %23, align 4
  br label %243

243:                                              ; preds = %242, %241
  br label %244

244:                                              ; preds = %243, %233
  %245 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %246 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %27, align 4
  %249 = mul nsw i32 %248, 5
  %250 = add nsw i32 %247, %249
  %251 = load i32, i32* %23, align 4
  %252 = load i32, i32* %20, align 4
  %253 = load i32, i32* %21, align 4
  %254 = load i32, i32* %22, align 4
  %255 = call i32 @vc4_check_tex_size(%struct.vc4_exec_info* %245, %struct.drm_gem_cma_object* %246, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %244
  br label %354

258:                                              ; preds = %244
  store i32 1, i32* %26, align 4
  br label %259

259:                                              ; preds = %328, %258
  %260 = load i32, i32* %26, align 4
  %261 = load i32, i32* %19, align 4
  %262 = icmp sle i32 %260, %261
  br i1 %262, label %263, label %331

263:                                              ; preds = %259
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* %26, align 4
  %266 = ashr i32 %264, %265
  %267 = call i8* @max(i32 %266, i32 1)
  %268 = ptrtoint i8* %267 to i32
  store i32 %268, i32* %30, align 4
  %269 = load i32, i32* %21, align 4
  %270 = load i32, i32* %26, align 4
  %271 = ashr i32 %269, %270
  %272 = call i8* @max(i32 %271, i32 1)
  %273 = ptrtoint i8* %272 to i32
  store i32 %273, i32* %31, align 4
  %274 = load i32, i32* %23, align 4
  %275 = icmp eq i32 %274, 128
  br i1 %275, label %276, label %283

276:                                              ; preds = %263
  %277 = load i32, i32* %30, align 4
  %278 = load i32, i32* %31, align 4
  %279 = load i32, i32* %22, align 4
  %280 = call i64 @size_is_lt(i32 %277, i32 %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %276
  store i32 129, i32* %23, align 4
  br label %283

283:                                              ; preds = %282, %276, %263
  %284 = load i32, i32* %23, align 4
  switch i32 %284, label %301 [
    i32 128, label %285
    i32 129, label %294
  ]

285:                                              ; preds = %283
  %286 = load i32, i32* %30, align 4
  %287 = load i32, i32* %24, align 4
  %288 = mul nsw i32 %287, 8
  %289 = call i32 @round_up(i32 %286, i32 %288)
  store i32 %289, i32* %32, align 4
  %290 = load i32, i32* %31, align 4
  %291 = load i32, i32* %25, align 4
  %292 = mul nsw i32 %291, 8
  %293 = call i32 @round_up(i32 %290, i32 %292)
  store i32 %293, i32* %33, align 4
  br label %306

294:                                              ; preds = %283
  %295 = load i32, i32* %30, align 4
  %296 = load i32, i32* %24, align 4
  %297 = call i32 @round_up(i32 %295, i32 %296)
  store i32 %297, i32* %32, align 4
  %298 = load i32, i32* %31, align 4
  %299 = load i32, i32* %25, align 4
  %300 = call i32 @round_up(i32 %298, i32 %299)
  store i32 %300, i32* %33, align 4
  br label %306

301:                                              ; preds = %283
  %302 = load i32, i32* %30, align 4
  %303 = load i32, i32* %24, align 4
  %304 = call i32 @round_up(i32 %302, i32 %303)
  store i32 %304, i32* %32, align 4
  %305 = load i32, i32* %31, align 4
  store i32 %305, i32* %33, align 4
  br label %306

306:                                              ; preds = %301, %294, %285
  %307 = load i32, i32* %32, align 4
  %308 = load i32, i32* %22, align 4
  %309 = mul nsw i32 %307, %308
  %310 = load i32, i32* %33, align 4
  %311 = mul nsw i32 %309, %310
  store i32 %311, i32* %34, align 4
  %312 = load i32, i32* %18, align 4
  %313 = load i32, i32* %34, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %324

315:                                              ; preds = %306
  %316 = load i32, i32* %26, align 4
  %317 = load i32, i32* %30, align 4
  %318 = load i32, i32* %31, align 4
  %319 = load i32, i32* %32, align 4
  %320 = load i32, i32* %33, align 4
  %321 = load i32, i32* %34, align 4
  %322 = load i32, i32* %18, align 4
  %323 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %316, i32 %317, i32 %318, i32 %319, i32 %320, i32 %321, i32 %322)
  br label %354

324:                                              ; preds = %306
  %325 = load i32, i32* %34, align 4
  %326 = load i32, i32* %18, align 4
  %327 = sub nsw i32 %326, %325
  store i32 %327, i32* %18, align 4
  br label %328

328:                                              ; preds = %324
  %329 = load i32, i32* %26, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %26, align 4
  br label %259

331:                                              ; preds = %259
  %332 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %333 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %334, %335
  %337 = load i32*, i32** %17, align 8
  store i32 %336, i32* %337, align 4
  %338 = load i32, i32* %11, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %331
  %341 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %342 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %345 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %344, i32 0, i32 1
  %346 = call %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__* %345)
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i8* @max(i32 %343, i32 %348)
  %350 = ptrtoint i8* %349 to i32
  %351 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %7, align 8
  %352 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %351, i32 0, i32 1
  store i32 %350, i32* %352, align 8
  br label %353

353:                                              ; preds = %340, %331
  store i32 1, i32* %6, align 4
  br label %383

354:                                              ; preds = %315, %257, %223, %199, %190, %149, %142
  %355 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %356 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %13, align 4
  %361 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %359, i32 %360)
  %362 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %363 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %14, align 4
  %368 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %366, i32 %367)
  %369 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %370 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 2
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %15, align 4
  %375 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %373, i32 %374)
  %376 = load %struct.vc4_texture_sample_info*, %struct.vc4_texture_sample_info** %9, align 8
  %377 = getelementptr inbounds %struct.vc4_texture_sample_info, %struct.vc4_texture_sample_info* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 3
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %16, align 4
  %382 = call i32 @DRM_INFO(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %380, i32 %381)
  store i32 0, i32* %6, align 4
  br label %383

383:                                              ; preds = %354, %353, %151, %122
  %384 = load i32, i32* %6, align 4
  ret i32 %384
}

declare dso_local i32 @VC4_GET_FIELD(i32, i32) #1

declare dso_local %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @utile_width(i32) #1

declare dso_local i32 @utile_height(i32) #1

declare dso_local i64 @size_is_lt(i32, i32, i32) #1

declare dso_local i32 @vc4_check_tex_size(%struct.vc4_exec_info*, %struct.drm_gem_cma_object*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
