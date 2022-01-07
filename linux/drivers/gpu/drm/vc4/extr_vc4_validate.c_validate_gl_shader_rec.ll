; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_validate_gl_shader_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_validate_gl_shader_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i32, i32*, i32, i64, i32*, i8*, i32, i32, %struct.drm_gem_cma_object**, i8* }
%struct.drm_gem_cma_object = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vc4_shader_state = type { i32, i32 }
%struct.vc4_validated_shader_info = type { i32, i64, i32, i32, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32, %struct.vc4_validated_shader_info* }

@validate_gl_shader_rec.shader_reloc_offsets = internal constant [3 x i32] [i32 4, i32 16, i32 28], align 4
@.str = private unnamed_addr constant [62 x i8] c"overflowed shader recs reading %d handles from %d bytes left\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"overflowed shader recs copying %db packet from %d bytes left\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Shader handle %d too big\0A\00", align 1
@VC4_SHADER_FLAG_FS_SINGLE_THREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Thread mode of CL and FS do not match\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cs and vs cannot be threaded\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Shaders must be at offset 0 of the BO.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Uniforms src buffer overflow\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"BO offset overflow (%d + %d > %zu)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"primitives use index %d out of supplied %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.vc4_exec_info*, %struct.vc4_shader_state*)* @validate_gl_shader_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_gl_shader_rec(%struct.drm_device* %0, %struct.vc4_exec_info* %1, %struct.vc4_shader_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.vc4_exec_info*, align 8
  %7 = alloca %struct.vc4_shader_state*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vc4_validated_shader_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.drm_gem_cma_object*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %6, align 8
  store %struct.vc4_shader_state* %2, %struct.vc4_shader_state** %7, align 8
  %33 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @validate_gl_shader_rec.shader_reloc_offsets, i64 0, i64 0))
  store i32 %33, i32* %11, align 4
  %34 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @validate_gl_shader_rec.shader_reloc_offsets, i64 0, i64 0))
  %35 = add nsw i32 %34, 8
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %12, align 8
  %38 = alloca %struct.drm_gem_cma_object*, i64 %36, align 16
  store i64 %36, i64* %13, align 8
  %39 = load %struct.vc4_shader_state*, %struct.vc4_shader_state** %7, align 8
  %40 = getelementptr inbounds %struct.vc4_shader_state, %struct.vc4_shader_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 7
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %3
  store i32 8, i32* %14, align 4
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.vc4_shader_state*, %struct.vc4_shader_state** %7, align 8
  %48 = getelementptr inbounds %struct.vc4_shader_state, %struct.vc4_shader_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @gl_shader_rec_size(i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @validate_gl_shader_rec.shader_reloc_offsets, i64 0, i64 0))
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = mul nsw i32 %54, 4
  %56 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %57 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %46
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %63 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

68:                                               ; preds = %46
  %69 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %70 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %8, align 8
  %72 = load i32, i32* %15, align 4
  %73 = mul nsw i32 %72, 4
  %74 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %75 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = sext i32 %73 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %75, align 8
  %79 = load i32, i32* %15, align 4
  %80 = mul nsw i32 %79, 4
  %81 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %82 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %87 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %68
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %93 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

98:                                               ; preds = %68
  %99 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %100 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to i8*
  store i8* %102, i8** %9, align 8
  %103 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %104 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @memcpy(i8* %106, i8* %107, i32 %108)
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %112 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = sext i32 %110 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %112, align 8
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @roundup(i32 %116, i32 16)
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %117, %118
  %120 = load i32, i32* %15, align 4
  %121 = mul nsw i32 %120, 4
  %122 = icmp sgt i32 %119, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @roundup(i32 %125, i32 16)
  %127 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %128 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %127, i32 0, i32 9
  %129 = load i8*, i8** %128, align 8
  %130 = sext i32 %126 to i64
  %131 = getelementptr i8, i8* %129, i64 %130
  store i8* %131, i8** %128, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %134 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, %132
  store i32 %136, i32* %134, align 8
  store i32 0, i32* %17, align 4
  br label %137

137:                                              ; preds = %184, %98
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %187

141:                                              ; preds = %137
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %148 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %141
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

160:                                              ; preds = %141
  %161 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %162 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %161, i32 0, i32 8
  %163 = load %struct.drm_gem_cma_object**, %struct.drm_gem_cma_object*** %162, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %163, i64 %169
  %171 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 %173
  store %struct.drm_gem_cma_object* %171, %struct.drm_gem_cma_object** %174, align 8
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 %176
  %178 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %177, align 8
  %179 = icmp ne %struct.drm_gem_cma_object* %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %160
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

183:                                              ; preds = %160
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %17, align 4
  br label %137

187:                                              ; preds = %137
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %17, align 4
  br label %189

189:                                              ; preds = %213, %187
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %216

193:                                              ; preds = %189
  %194 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info* %194, i32 %199)
  %201 = load i32, i32* %17, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 %202
  store %struct.drm_gem_cma_object* %200, %struct.drm_gem_cma_object** %203, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 %205
  %207 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %206, align 8
  %208 = icmp ne %struct.drm_gem_cma_object* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %193
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

212:                                              ; preds = %193
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %17, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %17, align 4
  br label %189

216:                                              ; preds = %189
  %217 = load i8*, i8** %9, align 8
  %218 = bitcast i8* %217 to i32*
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @VC4_SHADER_FLAG_FS_SINGLE_THREAD, align 4
  %221 = and i32 %219, %220
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 0
  %225 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %224, align 16
  %226 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %225, i32 0, i32 1
  %227 = call %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__* %226)
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %228, align 8
  %230 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp ne i32 %223, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %216
  %234 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

237:                                              ; preds = %216
  %238 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 1
  %239 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %238, align 8
  %240 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %239, i32 0, i32 1
  %241 = call %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__* %240)
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 1
  %243 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %242, align 8
  %244 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %237
  %248 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 2
  %249 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %248, align 16
  %250 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %249, i32 0, i32 1
  %251 = call %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__* %250)
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 1
  %253 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %252, align 8
  %254 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %247, %237
  %258 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %259 = load i32, i32* @EINVAL, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

261:                                              ; preds = %247
  store i32 0, i32* %17, align 4
  br label %262

262:                                              ; preds = %433, %261
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %11, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %436

266:                                              ; preds = %262
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* @validate_gl_shader_rec.shader_reloc_offsets, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  store i32 %270, i32* %20, align 4
  %271 = load i8*, i8** %9, align 8
  %272 = load i32, i32* %20, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr i8, i8* %271, i64 %273
  %275 = bitcast i8* %274 to i32*
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %21, align 4
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 %278
  %280 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %279, align 8
  %281 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %21, align 4
  %284 = add nsw i32 %282, %283
  %285 = load i8*, i8** %10, align 8
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr i8, i8* %285, i64 %287
  %289 = bitcast i8* %288 to i32*
  store i32 %284, i32* %289, align 4
  %290 = load i32, i32* %21, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %266
  %293 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %294 = load i32, i32* @EINVAL, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

296:                                              ; preds = %266
  %297 = load i32, i32* %17, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 %298
  %300 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %299, align 8
  %301 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %300, i32 0, i32 1
  %302 = call %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__* %301)
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 1
  %304 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %303, align 8
  store %struct.vc4_validated_shader_info* %304, %struct.vc4_validated_shader_info** %19, align 8
  %305 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %306 = icmp ne %struct.vc4_validated_shader_info* %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %296
  %308 = load i32, i32* @EINVAL, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

310:                                              ; preds = %296
  %311 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %312 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %315 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %314, i32 0, i32 3
  %316 = load i64, i64* %315, align 8
  %317 = icmp sgt i64 %313, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %310
  %319 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %320 = load i32, i32* @EINVAL, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

322:                                              ; preds = %310
  %323 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %324 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %323, i32 0, i32 4
  %325 = load i32*, i32** %324, align 8
  store i32* %325, i32** %22, align 8
  %326 = load i32*, i32** %22, align 8
  %327 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %328 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %326, i64 %330
  %332 = bitcast i32* %331 to i8*
  store i8* %332, i8** %23, align 8
  %333 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %334 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %333, i32 0, i32 5
  %335 = load i8*, i8** %334, align 8
  %336 = load i8*, i8** %23, align 8
  %337 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %338 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @memcpy(i8* %335, i8* %336, i32 %339)
  store i32 0, i32* %24, align 4
  br label %341

341:                                              ; preds = %370, %322
  %342 = load i32, i32* %24, align 4
  %343 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %344 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %373

347:                                              ; preds = %341
  %348 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %349 = load i8*, i8** %23, align 8
  %350 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %351 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %350, i32 0, i32 6
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %24, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32*, i32** %22, align 8
  %357 = load i32, i32* %24, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %17, align 4
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i32
  %364 = call i32 @reloc_tex(%struct.vc4_exec_info* %348, i8* %349, i32* %355, i32 %360, i32 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %369, label %366

366:                                              ; preds = %347
  %367 = load i32, i32* @EINVAL, align 4
  %368 = sub nsw i32 0, %367
  store i32 %368, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

369:                                              ; preds = %347
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %24, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %24, align 4
  br label %341

373:                                              ; preds = %341
  store i32 0, i32* %25, align 4
  br label %374

374:                                              ; preds = %398, %373
  %375 = load i32, i32* %25, align 4
  %376 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %377 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = icmp slt i32 %375, %378
  br i1 %379, label %380, label %401

380:                                              ; preds = %374
  %381 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %382 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %381, i32 0, i32 5
  %383 = load i32*, i32** %382, align 8
  %384 = load i32, i32* %25, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %26, align 4
  %388 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %389 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %392 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %391, i32 0, i32 5
  %393 = load i8*, i8** %392, align 8
  %394 = bitcast i8* %393 to i32*
  %395 = load i32, i32* %26, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  store i32 %390, i32* %397, align 4
  br label %398

398:                                              ; preds = %380
  %399 = load i32, i32* %25, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %25, align 4
  br label %374

401:                                              ; preds = %374
  %402 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %403 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %402, i32 0, i32 6
  %404 = load i32, i32* %403, align 8
  %405 = load i8*, i8** %10, align 8
  %406 = load i32, i32* %20, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr i8, i8* %405, i64 %407
  %409 = getelementptr i8, i8* %408, i64 4
  %410 = bitcast i8* %409 to i32*
  store i32 %404, i32* %410, align 4
  %411 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %412 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %415 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %414, i32 0, i32 4
  %416 = load i32*, i32** %415, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 %413
  store i32* %417, i32** %415, align 8
  %418 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %419 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %422 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %421, i32 0, i32 5
  %423 = load i8*, i8** %422, align 8
  %424 = sext i32 %420 to i64
  %425 = getelementptr i8, i8* %423, i64 %424
  store i8* %425, i8** %422, align 8
  %426 = load %struct.vc4_validated_shader_info*, %struct.vc4_validated_shader_info** %19, align 8
  %427 = getelementptr inbounds %struct.vc4_validated_shader_info, %struct.vc4_validated_shader_info* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %430 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %429, i32 0, i32 6
  %431 = load i32, i32* %430, align 8
  %432 = add nsw i32 %431, %428
  store i32 %432, i32* %430, align 8
  br label %433

433:                                              ; preds = %401
  %434 = load i32, i32* %17, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %17, align 4
  br label %262

436:                                              ; preds = %262
  store i32 0, i32* %17, align 4
  br label %437

437:                                              ; preds = %566, %436
  %438 = load i32, i32* %17, align 4
  %439 = load i32, i32* %14, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %569

441:                                              ; preds = %437
  %442 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @validate_gl_shader_rec.shader_reloc_offsets, i64 0, i64 0))
  %443 = load i32, i32* %17, align 4
  %444 = add nsw i32 %442, %443
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %38, i64 %445
  %447 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %446, align 8
  store %struct.drm_gem_cma_object* %447, %struct.drm_gem_cma_object** %27, align 8
  %448 = load i32, i32* %17, align 4
  %449 = mul nsw i32 %448, 8
  %450 = add nsw i32 36, %449
  store i32 %450, i32* %28, align 4
  %451 = load i8*, i8** %9, align 8
  %452 = load i32, i32* %28, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr i8, i8* %451, i64 %453
  %455 = getelementptr i8, i8* %454, i64 0
  %456 = bitcast i8* %455 to i32*
  %457 = load i32, i32* %456, align 4
  store i32 %457, i32* %29, align 4
  %458 = load i8*, i8** %9, align 8
  %459 = load i32, i32* %28, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr i8, i8* %458, i64 %460
  %462 = getelementptr i8, i8* %461, i64 4
  %463 = bitcast i8* %462 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %30, align 4
  %466 = load i8*, i8** %9, align 8
  %467 = load i32, i32* %28, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr i8, i8* %466, i64 %468
  %470 = getelementptr i8, i8* %469, i64 5
  %471 = bitcast i8* %470 to i32*
  %472 = load i32, i32* %471, align 4
  store i32 %472, i32* %31, align 4
  %473 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %474 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %473, i32 0, i32 7
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %27, align 8
  %477 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %476, i32 0, i32 1
  %478 = call %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__* %477)
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @max(i32 %475, i32 %480)
  %482 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %483 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %482, i32 0, i32 7
  store i32 %481, i32* %483, align 4
  %484 = load %struct.vc4_shader_state*, %struct.vc4_shader_state** %7, align 8
  %485 = getelementptr inbounds %struct.vc4_shader_state, %struct.vc4_shader_state* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = and i32 %486, 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %501

489:                                              ; preds = %441
  %490 = load i8*, i8** %9, align 8
  %491 = getelementptr i8, i8* %490, i64 100
  %492 = load i32, i32* %17, align 4
  %493 = mul nsw i32 %492, 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr i8, i8* %491, i64 %494
  %496 = bitcast i8* %495 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = and i32 %497, -256
  %499 = load i32, i32* %31, align 4
  %500 = or i32 %499, %498
  store i32 %500, i32* %31, align 4
  br label %501

501:                                              ; preds = %489, %441
  %502 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %27, align 8
  %503 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* %29, align 4
  %507 = icmp slt i32 %505, %506
  br i1 %507, label %517, label %508

508:                                              ; preds = %501
  %509 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %27, align 8
  %510 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %29, align 4
  %514 = sub nsw i32 %512, %513
  %515 = load i32, i32* %30, align 4
  %516 = icmp slt i32 %514, %515
  br i1 %516, label %517, label %527

517:                                              ; preds = %508, %501
  %518 = load i32, i32* %29, align 4
  %519 = load i32, i32* %30, align 4
  %520 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %27, align 8
  %521 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %518, i32 %519, i32 %523)
  %525 = load i32, i32* @EINVAL, align 4
  %526 = sub nsw i32 0, %525
  store i32 %526, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

527:                                              ; preds = %508
  %528 = load i32, i32* %31, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %555

530:                                              ; preds = %527
  %531 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %27, align 8
  %532 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %531, i32 0, i32 1
  %533 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %29, align 4
  %536 = sub nsw i32 %534, %535
  %537 = load i32, i32* %30, align 4
  %538 = sub nsw i32 %536, %537
  %539 = load i32, i32* %31, align 4
  %540 = sdiv i32 %538, %539
  store i32 %540, i32* %32, align 4
  %541 = load %struct.vc4_shader_state*, %struct.vc4_shader_state** %7, align 8
  %542 = getelementptr inbounds %struct.vc4_shader_state, %struct.vc4_shader_state* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = load i32, i32* %32, align 4
  %545 = icmp sgt i32 %543, %544
  br i1 %545, label %546, label %554

546:                                              ; preds = %530
  %547 = load %struct.vc4_shader_state*, %struct.vc4_shader_state** %7, align 8
  %548 = getelementptr inbounds %struct.vc4_shader_state, %struct.vc4_shader_state* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* %32, align 4
  %551 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 %549, i32 %550)
  %552 = load i32, i32* @EINVAL, align 4
  %553 = sub nsw i32 0, %552
  store i32 %553, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

554:                                              ; preds = %530
  br label %555

555:                                              ; preds = %554, %527
  %556 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %27, align 8
  %557 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 4
  %559 = load i32, i32* %29, align 4
  %560 = add nsw i32 %558, %559
  %561 = load i8*, i8** %10, align 8
  %562 = load i32, i32* %28, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr i8, i8* %561, i64 %563
  %565 = bitcast i8* %564 to i32*
  store i32 %560, i32* %565, align 4
  br label %566

566:                                              ; preds = %555
  %567 = load i32, i32* %17, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %17, align 4
  br label %437

569:                                              ; preds = %437
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %570

570:                                              ; preds = %569, %546, %517, %366, %318, %307, %292, %257, %233, %209, %180, %151, %90, %60
  %571 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %571)
  %572 = load i32, i32* %4, align 4
  ret i32 %572
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @gl_shader_rec_size(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.drm_gem_cma_object* @vc4_use_bo(%struct.vc4_exec_info*, i32) #1

declare dso_local %struct.TYPE_3__* @to_vc4_bo(%struct.TYPE_4__*) #1

declare dso_local i32 @reloc_tex(%struct.vc4_exec_info*, i8*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
