; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_pin_restricted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_pin_restricted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_8__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_12__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.amdgpu_device = type { i32, i32, i32, i32 }
%struct.ttm_operation_ctx = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_NO_CPU_ACCESS = common dso_local global i32 0, align 4
@AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@TTM_PL_FLAG_NO_EVICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%p pin failed\0A\00", align 1
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_bo_pin_restricted(%struct.amdgpu_bo* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.amdgpu_device*, align 8
  %11 = alloca %struct.ttm_operation_ctx, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.amdgpu_bo* %0, %struct.amdgpu_bo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = call %struct.amdgpu_device* @amdgpu_ttm_adev(%struct.TYPE_12__* %21)
  store %struct.amdgpu_device* %22, %struct.amdgpu_device** %10, align 8
  %23 = bitcast %struct.ttm_operation_ctx* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @amdgpu_ttm_tt_get_usermm(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %264

33:                                               ; preds = %4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON_ONCE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %264

43:                                               ; preds = %33
  %44 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  store i32 %54, i32* %7, align 4
  br label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %264

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @amdgpu_bo_get_preferred_pin_domain(%struct.amdgpu_device* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %64 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %108

67:                                               ; preds = %59
  %68 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %69 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %14, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @amdgpu_mem_type_to_domain(i64 %74)
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %264

81:                                               ; preds = %67
  %82 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %83 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %81
  %89 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %90 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %15, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %101 = call i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %100)
  %102 = load i64, i64* %15, align 8
  %103 = sub nsw i64 %101, %102
  %104 = icmp slt i64 %99, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @WARN_ON_ONCE(i32 %105)
  br label %107

107:                                              ; preds = %88, %81
  store i32 0, i32* %5, align 4
  br label %264

108:                                              ; preds = %59
  %109 = load i32, i32* @AMDGPU_GEM_CREATE_VRAM_CONTIGUOUS, align 4
  %110 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %111 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %115 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AMDGPU_GEM_CREATE_NO_CPU_ACCESS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %108
  %121 = load i32, i32* @AMDGPU_GEM_CREATE_CPU_ACCESS_REQUIRED, align 4
  %122 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %123 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %108
  %127 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo* %127, i32 %128)
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %209, %126
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %133 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %131, %135
  br i1 %136, label %137, label %212

137:                                              ; preds = %130
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* @PAGE_SHIFT, align 8
  %140 = ashr i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %16, align 4
  %142 = load i64, i64* %9, align 8
  %143 = load i64, i64* @PAGE_SHIFT, align 8
  %144 = ashr i64 %142, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %148 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %147, i32 0, i32 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ugt i32 %146, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %137
  %157 = load i32, i32* %16, align 4
  %158 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %159 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %158, i32 0, i32 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32 %157, i32* %164, align 4
  br label %165

165:                                              ; preds = %156, %137
  %166 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %167 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %166, i32 0, i32 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %165
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %175
  %179 = load i32, i32* %17, align 4
  %180 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %181 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %180, i32 0, i32 4
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ult i32 %179, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %178, %165
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %192 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %191, i32 0, i32 4
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  store i32 %190, i32* %197, align 4
  br label %198

198:                                              ; preds = %189, %178, %175
  %199 = load i32, i32* @TTM_PL_FLAG_NO_EVICT, align 4
  %200 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %201 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %200, i32 0, i32 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %199
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %130

212:                                              ; preds = %130
  %213 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %214 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %213, i32 0, i32 2
  %215 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %216 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %215, i32 0, i32 3
  %217 = call i32 @ttm_bo_validate(%struct.TYPE_10__* %214, %struct.TYPE_11__* %216, %struct.ttm_operation_ctx* %11)
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = call i64 @unlikely(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %212
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %226 = call i32 @dev_err(i32 %224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.amdgpu_bo* %225)
  br label %262

227:                                              ; preds = %212
  %228 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %229 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %228, i32 0, i32 0
  store i32 1, i32* %229, align 8
  %230 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %231 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @amdgpu_mem_type_to_domain(i64 %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %227
  %240 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %241 = call i32 @amdgpu_bo_size(%struct.amdgpu_bo* %240)
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 2
  %244 = call i32 @atomic64_add(i32 %241, i32* %243)
  %245 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %246 = call i32 @amdgpu_vram_mgr_bo_visible_size(%struct.amdgpu_bo* %245)
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %248 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %247, i32 0, i32 1
  %249 = call i32 @atomic64_add(i32 %246, i32* %248)
  br label %261

250:                                              ; preds = %227
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %256 = call i32 @amdgpu_bo_size(%struct.amdgpu_bo* %255)
  %257 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  %258 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %257, i32 0, i32 0
  %259 = call i32 @atomic64_add(i32 %256, i32* %258)
  br label %260

260:                                              ; preds = %254, %250
  br label %261

261:                                              ; preds = %260, %239
  br label %262

262:                                              ; preds = %261, %221
  %263 = load i32, i32* %12, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %262, %107, %78, %55, %40, %30
  %265 = load i32, i32* %5, align 4
  ret i32 %265
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @amdgpu_bo_get_preferred_pin_domain(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_mem_type_to_domain(i64) #1

declare dso_local i64 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_placement_from_domain(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @ttm_bo_validate(%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.ttm_operation_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.amdgpu_bo*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @amdgpu_bo_size(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_vram_mgr_bo_visible_size(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
