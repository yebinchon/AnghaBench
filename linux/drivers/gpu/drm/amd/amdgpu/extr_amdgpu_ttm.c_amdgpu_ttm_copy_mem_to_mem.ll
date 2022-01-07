; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_copy_mem_to_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_copy_mem_to_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_copy_mem = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.dma_resv = type { i32 }
%struct.dma_fence = type { i32 }
%struct.drm_mm_node = type { i32 }

@AMDGPU_GTT_MAX_TRANSFER_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Trying to move memory with ring turned off.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_BO_INVALID_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ttm_copy_mem_to_mem(%struct.amdgpu_device* %0, %struct.amdgpu_copy_mem* %1, %struct.amdgpu_copy_mem* %2, i32 %3, %struct.dma_resv* %4, %struct.dma_fence** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %struct.amdgpu_copy_mem*, align 8
  %10 = alloca %struct.amdgpu_copy_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_resv*, align 8
  %13 = alloca %struct.dma_fence**, align 8
  %14 = alloca %struct.amdgpu_ring*, align 8
  %15 = alloca %struct.drm_mm_node*, align 8
  %16 = alloca %struct.drm_mm_node*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.dma_fence*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %8, align 8
  store %struct.amdgpu_copy_mem* %1, %struct.amdgpu_copy_mem** %9, align 8
  store %struct.amdgpu_copy_mem* %2, %struct.amdgpu_copy_mem** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.dma_resv* %4, %struct.dma_resv** %12, align 8
  store %struct.dma_fence** %5, %struct.dma_fence*** %13, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %32, align 8
  store %struct.amdgpu_ring* %33, %struct.amdgpu_ring** %14, align 8
  store %struct.dma_fence* null, %struct.dma_fence** %23, align 8
  store i32 0, i32* %24, align 4
  %34 = load i32, i32* @AMDGPU_GTT_MAX_TRANSFER_SIZE, align 4
  %35 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %25, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %6
  %43 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %313

46:                                               ; preds = %6
  %47 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %48 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %51 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %50, i32 0, i32 0
  %52 = call %struct.drm_mm_node* @amdgpu_find_mm_node(%struct.TYPE_6__* %49, i32* %51)
  store %struct.drm_mm_node* %52, %struct.drm_mm_node** %15, align 8
  %53 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %54 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.drm_mm_node*, %struct.drm_mm_node** %15, align 8
  %57 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %58 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 @amdgpu_mm_node_addr(i32 %55, %struct.drm_mm_node* %56, %struct.TYPE_6__* %59)
  %61 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %62 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  store i32 %64, i32* %17, align 4
  %65 = load %struct.drm_mm_node*, %struct.drm_mm_node** %15, align 8
  %66 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PAGE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %71 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %74, %76
  store i32 %77, i32* %21, align 4
  %78 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %79 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %82 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %81, i32 0, i32 0
  %83 = call %struct.drm_mm_node* @amdgpu_find_mm_node(%struct.TYPE_6__* %80, i32* %82)
  store %struct.drm_mm_node* %83, %struct.drm_mm_node** %16, align 8
  %84 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %85 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %88 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %89 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i32 @amdgpu_mm_node_addr(i32 %86, %struct.drm_mm_node* %87, %struct.TYPE_6__* %90)
  %92 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %93 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %91, %94
  store i32 %95, i32* %18, align 4
  %96 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %97 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PAGE_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %102 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = sub nsw i32 %106, 1
  %108 = and i32 %105, %107
  store i32 %108, i32* %22, align 4
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @mutex_lock(i32* %111)
  br label %113

113:                                              ; preds = %296, %46
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %297

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %27, align 4
  %118 = load i32, i32* %18, align 4
  store i32 %118, i32* %28, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %20, align 4
  %121 = call i32 @min(i32 %119, i32 %120)
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %25, align 4
  %124 = call i64 @min3(i32 %121, i32 %122, i32 %123)
  store i64 %124, i64* %26, align 8
  %125 = load i64, i64* %26, align 8
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = load i32, i32* %25, align 4
  %130 = sext i32 %129 to i64
  %131 = icmp ugt i64 %128, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %116
  %133 = load i64, i64* %26, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %133, %135
  %137 = load i32, i32* %25, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp ugt i64 %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132, %116
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %22, align 4
  %143 = call i64 @max(i32 %141, i32 %142)
  %144 = load i64, i64* %26, align 8
  %145 = sub i64 %144, %143
  store i64 %145, i64* %26, align 8
  br label %146

146:                                              ; preds = %140, %132
  %147 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %148 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @AMDGPU_BO_INVALID_OFFSET, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %146
  %155 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %156 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %159 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %158, i32 0, i32 1
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i64, i64* %26, align 8
  %162 = load i32, i32* %21, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 %161, %163
  %165 = trunc i64 %164 to i32
  %166 = call i32 @PFN_UP(i32 %165)
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %169 = call i32 @amdgpu_map_buffer(i32 %157, %struct.TYPE_6__* %160, i32 %166, i32 %167, i32 0, %struct.amdgpu_ring* %168, i32* %27)
  store i32 %169, i32* %24, align 4
  %170 = load i32, i32* %24, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %154
  br label %298

173:                                              ; preds = %154
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %27, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %27, align 4
  br label %177

177:                                              ; preds = %173, %146
  %178 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %179 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @AMDGPU_BO_INVALID_OFFSET, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %208

185:                                              ; preds = %177
  %186 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %187 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %190 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %189, i32 0, i32 1
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = load i64, i64* %26, align 8
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 %192, %194
  %196 = trunc i64 %195 to i32
  %197 = call i32 @PFN_UP(i32 %196)
  %198 = load i32, i32* %18, align 4
  %199 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %200 = call i32 @amdgpu_map_buffer(i32 %188, %struct.TYPE_6__* %191, i32 %197, i32 %198, i32 1, %struct.amdgpu_ring* %199, i32* %28)
  store i32 %200, i32* %24, align 4
  %201 = load i32, i32* %24, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %185
  br label %298

204:                                              ; preds = %185
  %205 = load i32, i32* %22, align 4
  %206 = load i32, i32* %28, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %28, align 4
  br label %208

208:                                              ; preds = %204, %177
  %209 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %14, align 8
  %210 = load i32, i32* %27, align 4
  %211 = load i32, i32* %28, align 4
  %212 = load i64, i64* %26, align 8
  %213 = load %struct.dma_resv*, %struct.dma_resv** %12, align 8
  %214 = call i32 @amdgpu_copy_buffer(%struct.amdgpu_ring* %209, i32 %210, i32 %211, i64 %212, %struct.dma_resv* %213, %struct.dma_fence** %29, i32 0, i32 1)
  store i32 %214, i32* %24, align 4
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %208
  br label %298

218:                                              ; preds = %208
  %219 = load %struct.dma_fence*, %struct.dma_fence** %23, align 8
  %220 = call i32 @dma_fence_put(%struct.dma_fence* %219)
  %221 = load %struct.dma_fence*, %struct.dma_fence** %29, align 8
  store %struct.dma_fence* %221, %struct.dma_fence** %23, align 8
  %222 = load i64, i64* %26, align 8
  %223 = load i32, i32* %11, align 4
  %224 = sext i32 %223 to i64
  %225 = sub i64 %224, %222
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %11, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %218
  br label %297

230:                                              ; preds = %218
  %231 = load i64, i64* %26, align 8
  %232 = load i32, i32* %19, align 4
  %233 = sext i32 %232 to i64
  %234 = sub i64 %233, %231
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %19, align 4
  %236 = load i32, i32* %19, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %253, label %238

238:                                              ; preds = %230
  %239 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %240 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.drm_mm_node*, %struct.drm_mm_node** %15, align 8
  %243 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %242, i32 1
  store %struct.drm_mm_node* %243, %struct.drm_mm_node** %15, align 8
  %244 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %9, align 8
  %245 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %244, i32 0, i32 1
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %245, align 8
  %247 = call i32 @amdgpu_mm_node_addr(i32 %241, %struct.drm_mm_node* %243, %struct.TYPE_6__* %246)
  store i32 %247, i32* %17, align 4
  %248 = load %struct.drm_mm_node*, %struct.drm_mm_node** %15, align 8
  %249 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @PAGE_SHIFT, align 4
  %252 = shl i32 %250, %251
  store i32 %252, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %263

253:                                              ; preds = %230
  %254 = load i64, i64* %26, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = add i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %17, align 4
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* @PAGE_SIZE, align 4
  %261 = sub nsw i32 %260, 1
  %262 = and i32 %259, %261
  store i32 %262, i32* %21, align 4
  br label %263

263:                                              ; preds = %253, %238
  %264 = load i64, i64* %26, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = sub i64 %266, %264
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %20, align 4
  %269 = load i32, i32* %20, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %286, label %271

271:                                              ; preds = %263
  %272 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %273 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %276 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %275, i32 1
  store %struct.drm_mm_node* %276, %struct.drm_mm_node** %16, align 8
  %277 = load %struct.amdgpu_copy_mem*, %struct.amdgpu_copy_mem** %10, align 8
  %278 = getelementptr inbounds %struct.amdgpu_copy_mem, %struct.amdgpu_copy_mem* %277, i32 0, i32 1
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = call i32 @amdgpu_mm_node_addr(i32 %274, %struct.drm_mm_node* %276, %struct.TYPE_6__* %279)
  store i32 %280, i32* %18, align 4
  %281 = load %struct.drm_mm_node*, %struct.drm_mm_node** %16, align 8
  %282 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @PAGE_SHIFT, align 4
  %285 = shl i32 %283, %284
  store i32 %285, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %296

286:                                              ; preds = %263
  %287 = load i64, i64* %26, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = add i64 %289, %287
  %291 = trunc i64 %290 to i32
  store i32 %291, i32* %18, align 4
  %292 = load i32, i32* %18, align 4
  %293 = load i32, i32* @PAGE_SIZE, align 4
  %294 = sub nsw i32 %293, 1
  %295 = and i32 %292, %294
  store i32 %295, i32* %22, align 4
  br label %296

296:                                              ; preds = %286, %271
  br label %113

297:                                              ; preds = %229, %113
  br label %298

298:                                              ; preds = %297, %217, %203, %172
  %299 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %300 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = call i32 @mutex_unlock(i32* %301)
  %303 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  %304 = icmp ne %struct.dma_fence** %303, null
  br i1 %304, label %305, label %309

305:                                              ; preds = %298
  %306 = load %struct.dma_fence*, %struct.dma_fence** %23, align 8
  %307 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %306)
  %308 = load %struct.dma_fence**, %struct.dma_fence*** %13, align 8
  store %struct.dma_fence* %307, %struct.dma_fence** %308, align 8
  br label %309

309:                                              ; preds = %305, %298
  %310 = load %struct.dma_fence*, %struct.dma_fence** %23, align 8
  %311 = call i32 @dma_fence_put(%struct.dma_fence* %310)
  %312 = load i32, i32* %24, align 4
  store i32 %312, i32* %7, align 4
  br label %313

313:                                              ; preds = %309, %42
  %314 = load i32, i32* %7, align 4
  ret i32 %314
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.drm_mm_node* @amdgpu_find_mm_node(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @amdgpu_mm_node_addr(i32, %struct.drm_mm_node*, %struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @min3(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @amdgpu_map_buffer(i32, %struct.TYPE_6__*, i32, i32, i32, %struct.amdgpu_ring*, i32*) #1

declare dso_local i32 @PFN_UP(i32) #1

declare dso_local i32 @amdgpu_copy_buffer(%struct.amdgpu_ring*, i32, i32, i64, %struct.dma_resv*, %struct.dma_fence**, i32, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
