; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vram_mgr.c_amdgpu_vram_mgr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_type_manager = type { i64, %struct.amdgpu_vram_mgr*, i32 }
%struct.amdgpu_vram_mgr = type { i32, i32, i32, %struct.drm_mm }
%struct.drm_mm = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_place = type { i64, i32, i32 }
%struct.ttm_mem_reg = type { i64, i64, %struct.drm_mm_node*, i64 }
%struct.drm_mm_node = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@TTM_PL_FLAG_CONTIGUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MM_INSERT_BEST = common dso_local global i32 0, align 4
@TTM_PL_FLAG_TOPDOWN = common dso_local global i32 0, align 4
@DRM_MM_INSERT_HIGH = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@HPAGE_PMD_NR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_type_manager*, %struct.ttm_buffer_object*, %struct.ttm_place*, %struct.ttm_mem_reg*)* @amdgpu_vram_mgr_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vram_mgr_new(%struct.ttm_mem_type_manager* %0, %struct.ttm_buffer_object* %1, %struct.ttm_place* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_mem_type_manager*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_place*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.amdgpu_vram_mgr*, align 8
  %12 = alloca %struct.drm_mm*, align 8
  %13 = alloca %struct.drm_mm_node*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.ttm_mem_type_manager* %0, %struct.ttm_mem_type_manager** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_place* %2, %struct.ttm_place** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %26 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %28)
  store %struct.amdgpu_device* %29, %struct.amdgpu_device** %10, align 8
  %30 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %30, i32 0, i32 1
  %32 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %31, align 8
  store %struct.amdgpu_vram_mgr* %32, %struct.amdgpu_vram_mgr** %11, align 8
  %33 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %33, i32 0, i32 3
  store %struct.drm_mm* %34, %struct.drm_mm** %12, align 8
  store i64 0, i64* %19, align 8
  %35 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %36 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %4
  %41 = load %struct.ttm_mem_type_manager*, %struct.ttm_mem_type_manager** %6, align 8
  %42 = getelementptr inbounds %struct.ttm_mem_type_manager, %struct.ttm_mem_type_manager* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %40, %4
  %45 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %46 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PAGE_SHIFT, align 8
  %49 = shl i64 %47, %48
  store i64 %49, i64* %20, align 8
  %50 = load i64, i64* %20, align 8
  %51 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %52 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %51, i32 0, i32 0
  %53 = call i64 @atomic64_add_return(i64 %50, i32* %52)
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %44
  %60 = load i64, i64* %20, align 8
  %61 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %62 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %61, i32 0, i32 0
  %63 = call i32 @atomic64_sub(i64 %60, i32* %62)
  %64 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %65 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %64, i32 0, i32 2
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %65, align 8
  store i32 0, i32* %5, align 4
  br label %267

66:                                               ; preds = %44
  %67 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %68 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TTM_PL_FLAG_CONTIGUOUS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i64 -1, i64* %17, align 8
  store i64 1, i64* %16, align 8
  br label %88

74:                                               ; preds = %66
  %75 = load i64, i64* @PAGE_SHIFT, align 8
  %76 = sub i64 20, %75
  %77 = shl i64 2, %76
  store i64 %77, i64* %17, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %80 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @max(i64 %78, i64 %81)
  store i64 %82, i64* %17, align 8
  %83 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %84 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i64 @DIV_ROUND_UP(i64 %85, i64 %86)
  store i64 %87, i64* %16, align 8
  br label %88

88:                                               ; preds = %74, %73
  %89 = load i64, i64* %16, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = load i32, i32* @__GFP_ZERO, align 4
  %92 = or i32 %90, %91
  %93 = call %struct.drm_mm_node* @kvmalloc_array(i64 %89, i32 4, i32 %92)
  store %struct.drm_mm_node* %93, %struct.drm_mm_node** %13, align 8
  %94 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %95 = icmp ne %struct.drm_mm_node* %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %88
  %97 = load i64, i64* %20, align 8
  %98 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %99 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %98, i32 0, i32 0
  %100 = call i32 @atomic64_sub(i64 %97, i32* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %267

103:                                              ; preds = %88
  %104 = load i32, i32* @DRM_MM_INSERT_BEST, align 4
  store i32 %104, i32* %14, align 4
  %105 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %106 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @TTM_PL_FLAG_TOPDOWN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @DRM_MM_INSERT_HIGH, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %103
  %114 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %115 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %117 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %18, align 8
  %119 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %120 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %119, i32 0, i32 1
  %121 = call i32 @spin_lock(i32* %120)
  store i32 0, i32* %21, align 4
  br label %122

122:                                              ; preds = %164, %113
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* %17, align 8
  %125 = icmp uge i64 %123, %124
  br i1 %125, label %126, label %167

126:                                              ; preds = %122
  %127 = load i64, i64* %18, align 8
  %128 = call i64 @rounddown_pow_of_two(i64 %127)
  store i64 %128, i64* %23, align 8
  %129 = load %struct.drm_mm*, %struct.drm_mm** %12, align 8
  %130 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %131 = load i32, i32* %21, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %130, i64 %132
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* %17, align 8
  %136 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %137 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %15, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %129, %struct.drm_mm_node* %133, i64 %134, i64 %135, i32 0, i32 %138, i64 %139, i32 %140)
  store i32 %141, i32* %22, align 4
  %142 = load i32, i32* %22, align 4
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %126
  br label %167

146:                                              ; preds = %126
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %148 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %149 = load i32, i32* %21, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %148, i64 %150
  %152 = call i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device* %147, %struct.drm_mm_node* %151)
  %153 = load i64, i64* %19, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %19, align 8
  %155 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %156 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %157 = load i32, i32* %21, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %156, i64 %158
  %160 = call i32 @amdgpu_vram_mgr_virt_start(%struct.ttm_mem_reg* %155, %struct.drm_mm_node* %159)
  %161 = load i64, i64* %23, align 8
  %162 = load i64, i64* %18, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %18, align 8
  br label %164

164:                                              ; preds = %146
  %165 = load i32, i32* %21, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %21, align 4
  br label %122

167:                                              ; preds = %145, %122
  br label %168

168:                                              ; preds = %219, %167
  %169 = load i64, i64* %18, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %222

171:                                              ; preds = %168
  %172 = load i64, i64* %18, align 8
  %173 = load i64, i64* %17, align 8
  %174 = call i64 @min(i64 %172, i64 %173)
  store i64 %174, i64* %24, align 8
  %175 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %176 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %25, align 8
  %178 = load i64, i64* %24, align 8
  %179 = load i64, i64* %17, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %171
  %182 = load i64, i64* %17, align 8
  store i64 %182, i64* %25, align 8
  br label %183

183:                                              ; preds = %181, %171
  %184 = load %struct.drm_mm*, %struct.drm_mm** %12, align 8
  %185 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %186 = load i32, i32* %21, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %185, i64 %187
  %189 = load i64, i64* %24, align 8
  %190 = load i64, i64* %25, align 8
  %191 = load %struct.ttm_place*, %struct.ttm_place** %8, align 8
  %192 = getelementptr inbounds %struct.ttm_place, %struct.ttm_place* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i64, i64* %15, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %184, %struct.drm_mm_node* %188, i64 %189, i64 %190, i32 0, i32 %193, i64 %194, i32 %195)
  store i32 %196, i32* %22, align 4
  %197 = load i32, i32* %22, align 4
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %183
  br label %233

201:                                              ; preds = %183
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %203 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %204 = load i32, i32* %21, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %203, i64 %205
  %207 = call i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device* %202, %struct.drm_mm_node* %206)
  %208 = load i64, i64* %19, align 8
  %209 = add i64 %208, %207
  store i64 %209, i64* %19, align 8
  %210 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %211 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %212 = load i32, i32* %21, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %211, i64 %213
  %215 = call i32 @amdgpu_vram_mgr_virt_start(%struct.ttm_mem_reg* %210, %struct.drm_mm_node* %214)
  %216 = load i64, i64* %24, align 8
  %217 = load i64, i64* %18, align 8
  %218 = sub i64 %217, %216
  store i64 %218, i64* %18, align 8
  br label %219

219:                                              ; preds = %201
  %220 = load i32, i32* %21, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %21, align 4
  br label %168

222:                                              ; preds = %168
  %223 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %224 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %223, i32 0, i32 1
  %225 = call i32 @spin_unlock(i32* %224)
  %226 = load i64, i64* %19, align 8
  %227 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %228 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %227, i32 0, i32 2
  %229 = call i32 @atomic64_add(i64 %226, i32* %228)
  %230 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %231 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %232 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %231, i32 0, i32 2
  store %struct.drm_mm_node* %230, %struct.drm_mm_node** %232, align 8
  store i32 0, i32* %5, align 4
  br label %267

233:                                              ; preds = %200
  br label %234

234:                                              ; preds = %238, %233
  %235 = load i32, i32* %21, align 4
  %236 = add i32 %235, -1
  store i32 %236, i32* %21, align 4
  %237 = icmp ne i32 %235, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %240 = load i32, i32* %21, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %239, i64 %241
  %243 = call i32 @drm_mm_remove_node(%struct.drm_mm_node* %242)
  br label %234

244:                                              ; preds = %234
  %245 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %246 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %245, i32 0, i32 1
  %247 = call i32 @spin_unlock(i32* %246)
  %248 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %249 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @PAGE_SHIFT, align 8
  %252 = shl i64 %250, %251
  %253 = load %struct.amdgpu_vram_mgr*, %struct.amdgpu_vram_mgr** %11, align 8
  %254 = getelementptr inbounds %struct.amdgpu_vram_mgr, %struct.amdgpu_vram_mgr* %253, i32 0, i32 0
  %255 = call i32 @atomic64_sub(i64 %252, i32* %254)
  %256 = load %struct.drm_mm_node*, %struct.drm_mm_node** %13, align 8
  %257 = call i32 @kvfree(%struct.drm_mm_node* %256)
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* @ENOSPC, align 4
  %260 = sub nsw i32 0, %259
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %244
  br label %265

263:                                              ; preds = %244
  %264 = load i32, i32* %22, align 4
  br label %265

265:                                              ; preds = %263, %262
  %266 = phi i32 [ 0, %262 ], [ %264, %263 ]
  store i32 %266, i32* %5, align 4
  br label %267

267:                                              ; preds = %265, %222, %96, %59
  %268 = load i32, i32* %5, align 4
  ret i32 %268
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i64 @atomic64_add_return(i64, i32*) #1

declare dso_local i32 @atomic64_sub(i64, i32*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local %struct.drm_mm_node* @kvmalloc_array(i64, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @rounddown_pow_of_two(i64) #1

declare dso_local i32 @drm_mm_insert_node_in_range(%struct.drm_mm*, %struct.drm_mm_node*, i64, i64, i32, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @amdgpu_vram_mgr_vis_size(%struct.amdgpu_device*, %struct.drm_mm_node*) #1

declare dso_local i32 @amdgpu_vram_mgr_virt_start(%struct.ttm_mem_reg*, %struct.drm_mm_node*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic64_add(i64, i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.drm_mm_node*) #1

declare dso_local i32 @kvfree(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
