; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_do_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_10__, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.amdgpu_bo_param = type { i64, i32, i64, i32, i32, i32, i32 }
%struct.amdgpu_bo = type { i32, i32, i32, %struct.TYPE_8__, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, %struct.dma_fence*, %struct.TYPE_7__, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.dma_fence = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.ttm_operation_ctx = type { i32, i32, i32, i32, i32 }

@ttm_bo_type_kernel = common dso_local global i32 0, align 4
@TTM_OPT_FLAG_ALLOW_RES_EVICT = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GWS = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_OA = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@AMDGPU_GEM_DOMAIN_GDS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_GTT_USWC = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_CPU = common dso_local global i32 0, align 4
@amdgpu_bo_destroy = common dso_local global i32 0, align 4
@TTM_PL_VRAM = common dso_local global i64 0, align 8
@AMDGPU_GEM_CREATE_VRAM_CLEARED = common dso_local global i32 0, align 4
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_bo_param*, %struct.amdgpu_bo**)* @amdgpu_bo_do_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_bo_do_create(%struct.amdgpu_device* %0, %struct.amdgpu_bo_param* %1, %struct.amdgpu_bo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_bo_param*, align 8
  %7 = alloca %struct.amdgpu_bo**, align 8
  %8 = alloca %struct.ttm_operation_ctx, align 4
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dma_fence*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_bo_param* %1, %struct.amdgpu_bo_param** %6, align 8
  store %struct.amdgpu_bo** %2, %struct.amdgpu_bo*** %7, align 8
  %15 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 0
  %16 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %17 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ttm_bo_type_kernel, align 4
  %20 = icmp ne i32 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 3
  %25 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ttm_bo_type_kernel, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @TTM_OPT_FLAG_ALLOW_RES_EVICT, align 4
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  store i32 %34, i32* %24, align 4
  %35 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 4
  %36 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %37 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %35, align 4
  %39 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %40 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %43 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AMDGPU_GEM_DOMAIN_GWS, align 4
  %46 = load i32, i32* @AMDGPU_GEM_DOMAIN_OA, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %52 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = load i64, i64* %11, align 8
  %56 = shl i64 %55, %54
  store i64 %56, i64* %11, align 8
  br label %85

57:                                               ; preds = %33
  %58 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %59 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @AMDGPU_GEM_DOMAIN_GDS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %66 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ALIGN(i64 %67, i32 4)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i64 @ALIGN(i64 %69, i32 4)
  %71 = load i64, i64* @PAGE_SHIFT, align 8
  %72 = shl i64 %70, %71
  store i64 %72, i64* %11, align 8
  br label %84

73:                                               ; preds = %57
  %74 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %75 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = call i64 @ALIGN(i64 %76, i32 %77)
  %79 = load i64, i64* @PAGE_SHIFT, align 8
  %80 = lshr i64 %78, %79
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = call i64 @ALIGN(i64 %81, i32 %82)
  store i64 %83, i64* %11, align 8
  br label %84

84:                                               ; preds = %73, %64
  br label %85

85:                                               ; preds = %84, %50
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %89 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @amdgpu_bo_validate_size(%struct.amdgpu_device* %86, i64 %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %365

96:                                               ; preds = %85
  %97 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %97, align 8
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %99 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @ttm_bo_dma_acc_size(i32* %100, i64 %101, i32 88)
  store i64 %102, i64* %12, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call %struct.amdgpu_bo* @kzalloc(i32 88, i32 %103)
  store %struct.amdgpu_bo* %104, %struct.amdgpu_bo** %9, align 8
  %105 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %106 = icmp eq %struct.amdgpu_bo* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %365

110:                                              ; preds = %96
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %115 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @drm_gem_private_object_init(i32 %113, %struct.TYPE_9__* %116, i64 %117)
  %119 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %120 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %119, i32 0, i32 6
  %121 = call i32 @INIT_LIST_HEAD(i32* %120)
  %122 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %123 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %122, i32 0, i32 5
  store i32* null, i32** %123, align 8
  %124 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %125 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %110
  %129 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %130 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  br label %136

132:                                              ; preds = %110
  %133 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %134 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i32 [ %131, %128 ], [ %135, %132 ]
  %138 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %139 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %141 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %144 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %146 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ttm_bo_type_kernel, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %136
  %151 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %152 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %158 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %159 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %150, %136
  %163 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %164 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %167 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  %168 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %169 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @amdgpu_bo_support_uswc(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %162
  %174 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_GTT_USWC, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %177 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %173, %162
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %185 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 4
  store i32* %183, i32** %186, align 8
  %187 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %188 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @AMDGPU_GEM_DOMAIN_GWS, align 4
  %191 = load i32, i32* @AMDGPU_GEM_DOMAIN_OA, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @AMDGPU_GEM_DOMAIN_GDS, align 4
  %194 = or i32 %192, %193
  %195 = and i32 %189, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %180
  %198 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %199 = load i32, i32* @AMDGPU_GEM_DOMAIN_CPU, align 4
  %200 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %198, i32 %199)
  br label %207

201:                                              ; preds = %180
  %202 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %203 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %204 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %202, i32 %205)
  br label %207

207:                                              ; preds = %201, %197
  %208 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %209 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @ttm_bo_type_kernel, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %215 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i32 1, i32* %216, align 8
  br label %217

217:                                              ; preds = %213, %207
  %218 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %219 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %222 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %221, i32 0, i32 3
  %223 = load i64, i64* %11, align 8
  %224 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %225 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %228 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %227, i32 0, i32 4
  %229 = load i64, i64* %10, align 8
  %230 = load i64, i64* %12, align 8
  %231 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %232 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @ttm_bo_init_reserved(i32* %220, %struct.TYPE_8__* %222, i64 %223, i32 %226, i32* %228, i64 %229, %struct.ttm_operation_ctx* %8, i64 %230, i32* null, i32 %233, i32* @amdgpu_bo_destroy)
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  %237 = zext i1 %236 to i32
  %238 = call i64 @unlikely(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %217
  %241 = load i32, i32* %13, align 4
  store i32 %241, i32* %4, align 4
  br label %365

242:                                              ; preds = %217
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %244 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %243, i32 0, i32 0
  %245 = call i32 @amdgpu_gmc_vram_full_visible(%struct.TYPE_10__* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %275, label %247

247:                                              ; preds = %242
  %248 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %249 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @TTM_PL_VRAM, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %275

255:                                              ; preds = %247
  %256 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %257 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @PAGE_SHIFT, align 8
  %266 = ashr i64 %264, %265
  %267 = icmp slt i64 %260, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %255
  %269 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %270 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @amdgpu_cs_report_moved_bytes(%struct.amdgpu_device* %269, i32 %271, i32 %273)
  br label %280

275:                                              ; preds = %255, %247, %242
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %277 = getelementptr inbounds %struct.ttm_operation_ctx, %struct.ttm_operation_ctx* %8, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @amdgpu_cs_report_moved_bytes(%struct.amdgpu_device* %276, i32 %278, i32 0)
  br label %280

280:                                              ; preds = %275, %268
  %281 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %282 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CLEARED, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %324

287:                                              ; preds = %280
  %288 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %289 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %324

296:                                              ; preds = %287
  %297 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %298 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %299 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @amdgpu_fill_buffer(%struct.amdgpu_bo* %297, i32 0, i32 %302, %struct.dma_fence** %14)
  store i32 %303, i32* %13, align 4
  %304 = load i32, i32* %13, align 4
  %305 = call i64 @unlikely(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %296
  br label %350

308:                                              ; preds = %296
  %309 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %310 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %311 = call i32 @amdgpu_bo_fence(%struct.amdgpu_bo* %309, %struct.dma_fence* %310, i32 0)
  %312 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %313 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 2
  %315 = load %struct.dma_fence*, %struct.dma_fence** %314, align 8
  %316 = call i32 @dma_fence_put(%struct.dma_fence* %315)
  %317 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %318 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %317)
  %319 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %320 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 2
  store %struct.dma_fence* %318, %struct.dma_fence** %321, align 8
  %322 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %323 = call i32 @dma_fence_put(%struct.dma_fence* %322)
  br label %324

324:                                              ; preds = %308, %287, %280
  %325 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %326 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %324
  %330 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %331 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %330)
  br label %332

332:                                              ; preds = %329, %324
  %333 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %334 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %7, align 8
  store %struct.amdgpu_bo* %333, %struct.amdgpu_bo** %334, align 8
  %335 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %336 = call i32 @trace_amdgpu_bo_create(%struct.amdgpu_bo* %335)
  %337 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %338 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %337, i32 0, i32 6
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @ttm_bo_type_device, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %332
  %343 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %344 = xor i32 %343, -1
  %345 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %346 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, %344
  store i32 %348, i32* %346, align 8
  br label %349

349:                                              ; preds = %342, %332
  store i32 0, i32* %4, align 4
  br label %365

350:                                              ; preds = %307
  %351 = load %struct.amdgpu_bo_param*, %struct.amdgpu_bo_param** %6, align 8
  %352 = getelementptr inbounds %struct.amdgpu_bo_param, %struct.amdgpu_bo_param* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %362, label %355

355:                                              ; preds = %350
  %356 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %357 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %356, i32 0, i32 3
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @dma_resv_unlock(i32 %360)
  br label %362

362:                                              ; preds = %355, %350
  %363 = call i32 @amdgpu_bo_unref(%struct.amdgpu_bo** %9)
  %364 = load i32, i32* %13, align 4
  store i32 %364, i32* %4, align 4
  br label %365

365:                                              ; preds = %362, %349, %240, %107, %93
  %366 = load i32, i32* %4, align 4
  ret i32 %366
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @amdgpu_bo_validate_size(%struct.amdgpu_device*, i64, i32) #1

declare dso_local i64 @ttm_bo_dma_acc_size(i32*, i64, i32) #1

declare dso_local %struct.amdgpu_bo* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_gem_private_object_init(i32, %struct.TYPE_9__*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @amdgpu_bo_support_uswc(i32) #1

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @ttm_bo_init_reserved(i32*, %struct.TYPE_8__*, i64, i32, i32*, i64, %struct.ttm_operation_ctx*, i64, i32*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @amdgpu_gmc_vram_full_visible(%struct.TYPE_10__*) #1

declare dso_local i32 @amdgpu_cs_report_moved_bytes(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @amdgpu_fill_buffer(%struct.amdgpu_bo*, i32, i32, %struct.dma_fence**) #1

declare dso_local i32 @amdgpu_bo_fence(%struct.amdgpu_bo*, %struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @trace_amdgpu_bo_create(%struct.amdgpu_bo*) #1

declare dso_local i32 @dma_resv_unlock(i32) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.amdgpu_bo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
