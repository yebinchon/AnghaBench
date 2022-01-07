; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_split_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_split_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_bo_va_mapping = type { i64, i64, i64, i64 }
%struct.amdgpu_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.drm_mm_node = type { i64, i64 }

@AMDGPU_PTE_READABLE = common dso_local global i64 0, align 8
@AMDGPU_PTE_WRITEABLE = common dso_local global i64 0, align 8
@AMDGPU_PTE_EXECUTABLE = common dso_local global i64 0, align 8
@CHIP_NAVI10 = common dso_local global i64 0, align 8
@AMDGPU_PTE_MTYPE_NV10_MASK = common dso_local global i64 0, align 8
@AMDGPU_PTE_MTYPE_VG10_MASK = common dso_local global i64 0, align 8
@AMDGPU_PTE_PRT = common dso_local global i64 0, align 8
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@AMDGPU_PTE_SNOOPED = common dso_local global i64 0, align 8
@AMDGPU_PTE_LOG = common dso_local global i64 0, align 8
@AMDGPU_PTE_SYSTEM = common dso_local global i64 0, align 8
@AMDGPU_PTE_VALID = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@AMDGPU_GPU_PAGES_IN_CPU_PAGE = common dso_local global i64 0, align 8
@S64_MAX = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.dma_fence*, i64*, %struct.amdgpu_vm*, %struct.amdgpu_bo_va_mapping*, i64, %struct.amdgpu_device*, %struct.drm_mm_node*, %struct.dma_fence**)* @amdgpu_vm_bo_split_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_bo_split_mapping(%struct.amdgpu_device* %0, %struct.dma_fence* %1, i64* %2, %struct.amdgpu_vm* %3, %struct.amdgpu_bo_va_mapping* %4, i64 %5, %struct.amdgpu_device* %6, %struct.drm_mm_node* %7, %struct.dma_fence** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca %struct.dma_fence*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.amdgpu_vm*, align 8
  %15 = alloca %struct.amdgpu_bo_va_mapping*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.amdgpu_device*, align 8
  %18 = alloca %struct.drm_mm_node*, align 8
  %19 = alloca %struct.dma_fence**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %11, align 8
  store %struct.dma_fence* %1, %struct.dma_fence** %12, align 8
  store i64* %2, i64** %13, align 8
  store %struct.amdgpu_vm* %3, %struct.amdgpu_vm** %14, align 8
  store %struct.amdgpu_bo_va_mapping* %4, %struct.amdgpu_bo_va_mapping** %15, align 8
  store i64 %5, i64* %16, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %17, align 8
  store %struct.drm_mm_node* %7, %struct.drm_mm_node** %18, align 8
  store %struct.dma_fence** %8, %struct.dma_fence*** %19, align 8
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  store i32 %34, i32* %20, align 4
  %35 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %36 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %22, align 8
  %38 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %39 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AMDGPU_PTE_READABLE, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %9
  %45 = load i64, i64* @AMDGPU_PTE_READABLE, align 8
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %16, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %16, align 8
  br label %49

49:                                               ; preds = %44, %9
  %50 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %51 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AMDGPU_PTE_WRITEABLE, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = load i64, i64* @AMDGPU_PTE_WRITEABLE, align 8
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %16, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %16, align 8
  br label %61

61:                                               ; preds = %56, %49
  %62 = load i64, i64* @AMDGPU_PTE_EXECUTABLE, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %16, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %16, align 8
  %66 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %67 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AMDGPU_PTE_EXECUTABLE, align 8
  %70 = and i64 %68, %69
  %71 = load i64, i64* %16, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %16, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHIP_NAVI10, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %61
  %79 = load i64, i64* @AMDGPU_PTE_MTYPE_NV10_MASK, align 8
  %80 = xor i64 %79, -1
  %81 = load i64, i64* %16, align 8
  %82 = and i64 %81, %80
  store i64 %82, i64* %16, align 8
  %83 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %84 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AMDGPU_PTE_MTYPE_NV10_MASK, align 8
  %87 = and i64 %85, %86
  %88 = load i64, i64* %16, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %16, align 8
  br label %102

90:                                               ; preds = %61
  %91 = load i64, i64* @AMDGPU_PTE_MTYPE_VG10_MASK, align 8
  %92 = xor i64 %91, -1
  %93 = load i64, i64* %16, align 8
  %94 = and i64 %93, %92
  store i64 %94, i64* %16, align 8
  %95 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %96 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AMDGPU_PTE_MTYPE_VG10_MASK, align 8
  %99 = and i64 %97, %98
  %100 = load i64, i64* %16, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %16, align 8
  br label %102

102:                                              ; preds = %90, %78
  %103 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %104 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AMDGPU_PTE_PRT, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %139

109:                                              ; preds = %102
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CHIP_VEGA10, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %139

115:                                              ; preds = %109
  %116 = load i64, i64* @AMDGPU_PTE_PRT, align 8
  %117 = load i64, i64* %16, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* %16, align 8
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CHIP_NAVI10, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %115
  %125 = load i64, i64* @AMDGPU_PTE_SNOOPED, align 8
  %126 = load i64, i64* %16, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %16, align 8
  %128 = load i64, i64* @AMDGPU_PTE_LOG, align 8
  %129 = load i64, i64* %16, align 8
  %130 = or i64 %129, %128
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* @AMDGPU_PTE_SYSTEM, align 8
  %132 = load i64, i64* %16, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %16, align 8
  br label %134

134:                                              ; preds = %124, %115
  %135 = load i64, i64* @AMDGPU_PTE_VALID, align 8
  %136 = xor i64 %135, -1
  %137 = load i64, i64* %16, align 8
  %138 = and i64 %137, %136
  store i64 %138, i64* %16, align 8
  br label %139

139:                                              ; preds = %134, %109, %102
  %140 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %141 = call i32 @trace_amdgpu_vm_bo_update(%struct.amdgpu_bo_va_mapping* %140)
  %142 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %143 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @PAGE_SHIFT, align 8
  %146 = ashr i64 %144, %145
  store i64 %146, i64* %21, align 8
  %147 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %148 = icmp ne %struct.drm_mm_node* %147, null
  br i1 %148, label %149, label %165

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %156, %149
  %151 = load i64, i64* %21, align 8
  %152 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %153 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %151, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %158 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %21, align 8
  %161 = sub nsw i64 %160, %159
  store i64 %161, i64* %21, align 8
  %162 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %163 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %162, i32 1
  store %struct.drm_mm_node* %163, %struct.drm_mm_node** %18, align 8
  br label %150

164:                                              ; preds = %150
  br label %165

165:                                              ; preds = %164, %139
  br label %166

166:                                              ; preds = %298, %165
  store i64* null, i64** %24, align 8
  %167 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %168 = icmp ne %struct.drm_mm_node* %167, null
  br i1 %168, label %169, label %182

169:                                              ; preds = %166
  %170 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %171 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @PAGE_SHIFT, align 8
  %174 = shl i64 %172, %173
  store i64 %174, i64* %26, align 8
  %175 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %176 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %21, align 8
  %179 = sub nsw i64 %177, %178
  %180 = load i64, i64* @AMDGPU_GPU_PAGES_IN_CPU_PAGE, align 8
  %181 = mul nsw i64 %179, %180
  store i64 %181, i64* %25, align 8
  br label %184

182:                                              ; preds = %166
  store i64 0, i64* %26, align 8
  %183 = load i64, i64* @S64_MAX, align 8
  store i64 %183, i64* %25, align 8
  br label %184

184:                                              ; preds = %182, %169
  %185 = load i64*, i64** %13, align 8
  %186 = icmp ne i64* %185, null
  br i1 %186, label %187, label %234

187:                                              ; preds = %184
  store i64 1, i64* %28, align 8
  br label %188

188:                                              ; preds = %212, %187
  %189 = load i64, i64* %28, align 8
  %190 = load i64, i64* %25, align 8
  %191 = load i64, i64* @AMDGPU_GPU_PAGES_IN_CPU_PAGE, align 8
  %192 = sdiv i64 %190, %191
  %193 = icmp slt i64 %189, %192
  br i1 %193, label %194, label %215

194:                                              ; preds = %188
  %195 = load i64, i64* %21, align 8
  %196 = load i64, i64* %28, align 8
  %197 = add nsw i64 %195, %196
  store i64 %197, i64* %29, align 8
  %198 = load i64*, i64** %13, align 8
  %199 = load i64, i64* %29, align 8
  %200 = getelementptr inbounds i64, i64* %198, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %13, align 8
  %203 = load i64, i64* %29, align 8
  %204 = sub nsw i64 %203, 1
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @PAGE_SIZE, align 8
  %208 = add nsw i64 %206, %207
  %209 = icmp ne i64 %201, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %194
  br label %215

211:                                              ; preds = %194
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %28, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %28, align 8
  br label %188

215:                                              ; preds = %210, %188
  %216 = load i64, i64* %28, align 8
  %217 = load i32, i32* %20, align 4
  %218 = zext i32 %217 to i64
  %219 = icmp slt i64 %216, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i64, i64* %21, align 8
  %222 = load i64, i64* @PAGE_SHIFT, align 8
  %223 = shl i64 %221, %222
  store i64 %223, i64* %26, align 8
  %224 = load i64*, i64** %13, align 8
  store i64* %224, i64** %24, align 8
  br label %233

225:                                              ; preds = %215
  %226 = load i64*, i64** %13, align 8
  %227 = load i64, i64* %21, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %26, align 8
  %230 = load i64, i64* %28, align 8
  %231 = load i64, i64* @AMDGPU_GPU_PAGES_IN_CPU_PAGE, align 8
  %232 = mul nsw i64 %230, %231
  store i64 %232, i64* %25, align 8
  br label %233

233:                                              ; preds = %225, %220
  br label %252

234:                                              ; preds = %184
  %235 = load i64, i64* %16, align 8
  %236 = load i64, i64* @AMDGPU_PTE_VALID, align 8
  %237 = and i64 %235, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %234
  %240 = load %struct.amdgpu_device*, %struct.amdgpu_device** %17, align 8
  %241 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %26, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %26, align 8
  %246 = load i64, i64* %21, align 8
  %247 = load i64, i64* @PAGE_SHIFT, align 8
  %248 = shl i64 %246, %247
  %249 = load i64, i64* %26, align 8
  %250 = add nsw i64 %249, %248
  store i64 %250, i64* %26, align 8
  br label %251

251:                                              ; preds = %239, %234
  br label %252

252:                                              ; preds = %251, %233
  %253 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %254 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %22, align 8
  %257 = load i64, i64* %25, align 8
  %258 = add nsw i64 %256, %257
  %259 = sub nsw i64 %258, 1
  %260 = call i64 @min(i64 %255, i64 %259)
  store i64 %260, i64* %27, align 8
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  %262 = load %struct.dma_fence*, %struct.dma_fence** %12, align 8
  %263 = load i64*, i64** %24, align 8
  %264 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %14, align 8
  %265 = load i64, i64* %22, align 8
  %266 = load i64, i64* %27, align 8
  %267 = load i64, i64* %16, align 8
  %268 = load i64, i64* %26, align 8
  %269 = load %struct.dma_fence**, %struct.dma_fence*** %19, align 8
  %270 = call i32 @amdgpu_vm_bo_update_mapping(%struct.amdgpu_device* %261, %struct.dma_fence* %262, i64* %263, %struct.amdgpu_vm* %264, i64 %265, i64 %266, i64 %267, i64 %268, %struct.dma_fence** %269)
  store i32 %270, i32* %23, align 4
  %271 = load i32, i32* %23, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %252
  %274 = load i32, i32* %23, align 4
  store i32 %274, i32* %10, align 4
  br label %309

275:                                              ; preds = %252
  %276 = load i64, i64* %27, align 8
  %277 = load i64, i64* %22, align 8
  %278 = sub nsw i64 %276, %277
  %279 = add nsw i64 %278, 1
  %280 = load i64, i64* @AMDGPU_GPU_PAGES_IN_CPU_PAGE, align 8
  %281 = sdiv i64 %279, %280
  %282 = load i64, i64* %21, align 8
  %283 = add nsw i64 %282, %281
  store i64 %283, i64* %21, align 8
  %284 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %285 = icmp ne %struct.drm_mm_node* %284, null
  br i1 %285, label %286, label %295

286:                                              ; preds = %275
  %287 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %288 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %21, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %286
  store i64 0, i64* %21, align 8
  %293 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %294 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %293, i32 1
  store %struct.drm_mm_node* %294, %struct.drm_mm_node** %18, align 8
  br label %295

295:                                              ; preds = %292, %286, %275
  %296 = load i64, i64* %27, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %22, align 8
  br label %298

298:                                              ; preds = %295
  %299 = load i64, i64* %22, align 8
  %300 = load %struct.amdgpu_bo_va_mapping*, %struct.amdgpu_bo_va_mapping** %15, align 8
  %301 = getelementptr inbounds %struct.amdgpu_bo_va_mapping, %struct.amdgpu_bo_va_mapping* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, 1
  %304 = icmp ne i64 %299, %303
  %305 = zext i1 %304 to i32
  %306 = call i64 @unlikely(i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %166, label %308

308:                                              ; preds = %298
  store i32 0, i32* %10, align 4
  br label %309

309:                                              ; preds = %308, %273
  %310 = load i32, i32* %10, align 4
  ret i32 %310
}

declare dso_local i32 @trace_amdgpu_vm_bo_update(%struct.amdgpu_bo_va_mapping*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @amdgpu_vm_bo_update_mapping(%struct.amdgpu_device*, %struct.dma_fence*, i64*, %struct.amdgpu_vm*, i64, i64, i64, i64, %struct.dma_fence**) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
