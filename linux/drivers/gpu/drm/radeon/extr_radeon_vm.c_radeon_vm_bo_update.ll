; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_bo_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_bo_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.radeon_bo_va = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_13__*, i32, %struct.radeon_vm* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.radeon_vm = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ttm_mem_reg = type { i64, i64 }
%struct.radeon_ib = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"bo %p don't has a mapping in vm %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_VALID = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SYSTEM = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_SNOOPED = common dso_local global i32 0, align 4
@RADEON_VM_PAGE_WRITEABLE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i64 0, align 8
@TTM_PL_TT = common dso_local global i64 0, align 8
@RADEON_GEM_GTT_WC = common dso_local global i32 0, align 4
@RADEON_GEM_GTT_UC = common dso_local global i32 0, align 4
@radeon_vm_block_size = common dso_local global i32 0, align 4
@R600_PTE_GART_MASK = common dso_local global i32 0, align 4
@R600_PTE_SYSTEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@R600_RING_TYPE_DMA_INDEX = common dso_local global i32 0, align 4
@RADEON_NUM_RINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vm_bo_update(%struct.radeon_device* %0, %struct.radeon_bo_va* %1, %struct.ttm_mem_reg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_bo_va*, align 8
  %7 = alloca %struct.ttm_mem_reg*, align 8
  %8 = alloca %struct.radeon_vm*, align 8
  %9 = alloca %struct.radeon_ib, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_bo_va* %1, %struct.radeon_bo_va** %6, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %7, align 8
  %17 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %18 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %17, i32 0, i32 5
  %19 = load %struct.radeon_vm*, %struct.radeon_vm** %18, align 8
  store %struct.radeon_vm* %19, %struct.radeon_vm** %8, align 8
  %20 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %3
  %26 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %29, i32 0, i32 3
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %31, %struct.radeon_vm* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %333

36:                                               ; preds = %3
  %37 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %38 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %37, i32 0, i32 1
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %41 = icmp ne %struct.ttm_mem_reg* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %44 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %43, i32 0, i32 4
  %45 = call i64 @list_empty(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %49 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  store i32 0, i32* %4, align 4
  br label %333

51:                                               ; preds = %42
  %52 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %52, i32 0, i32 4
  %54 = call i32 @list_del_init(i32* %53)
  br label %64

55:                                               ; preds = %36
  %56 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %57 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %56, i32 0, i32 4
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %59, i32 0, i32 4
  %61 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %62 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %61, i32 0, i32 2
  %63 = call i32 @list_add(i32* %60, i32* %62)
  br label %64

64:                                               ; preds = %55, %51
  %65 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %66 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %71 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %77 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @RADEON_VM_PAGE_SNOOPED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %83 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %87 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %86, i32 0, i32 3
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %90, label %106

90:                                               ; preds = %64
  %91 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %92 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %91, i32 0, i32 3
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @radeon_ttm_tt_is_readonly(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load i32, i32* @RADEON_VM_PAGE_WRITEABLE, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %103 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %90, %64
  %107 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %108 = icmp ne %struct.ttm_mem_reg* %107, null
  br i1 %108, label %109, label %166

109:                                              ; preds = %106
  %110 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %111 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @PAGE_SHIFT, align 4
  %115 = shl i32 %113, %114
  store i32 %115, i32* %13, align 4
  %116 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %117 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TTM_PL_SYSTEM, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %123 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %124 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %109
  %128 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %7, align 8
  %129 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TTM_PL_TT, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %156

133:                                              ; preds = %127
  %134 = load i32, i32* @RADEON_VM_PAGE_SYSTEM, align 4
  %135 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %136 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %140 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %139, i32 0, i32 3
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @RADEON_GEM_GTT_WC, align 4
  %145 = load i32, i32* @RADEON_GEM_GTT_UC, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %143, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %133
  %150 = load i32, i32* @RADEON_VM_PAGE_SNOOPED, align 4
  %151 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %152 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %149, %133
  br label %165

156:                                              ; preds = %127
  %157 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %158 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %156, %155
  br label %167

166:                                              ; preds = %106
  store i32 0, i32* %13, align 4
  br label %167

167:                                              ; preds = %166, %165
  %168 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %169 = call i32 @trace_radeon_vm_bo_update(%struct.radeon_bo_va* %168)
  %170 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %171 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %175 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %173, %177
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @radeon_vm_block_size, align 4
  %182 = call i32 @min(i32 %181, i32 11)
  %183 = lshr i32 %180, %182
  %184 = add i32 %183, 1
  store i32 %184, i32* %11, align 4
  store i32 64, i32* %12, align 4
  %185 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %186 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @radeon_vm_page_flags(i32 %187)
  store i32 %188, i32* %14, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* @R600_PTE_GART_MASK, align 4
  %191 = and i32 %189, %190
  %192 = load i32, i32* @R600_PTE_GART_MASK, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %167
  %195 = load i32, i32* %11, align 4
  %196 = mul i32 %195, 7
  %197 = load i32, i32* %12, align 4
  %198 = add i32 %197, %196
  store i32 %198, i32* %12, align 4
  br label %221

199:                                              ; preds = %167
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @R600_PTE_SYSTEM, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load i32, i32* %11, align 4
  %206 = mul i32 %205, 4
  %207 = load i32, i32* %12, align 4
  %208 = add i32 %207, %206
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %10, align 4
  %210 = mul i32 %209, 2
  %211 = load i32, i32* %12, align 4
  %212 = add i32 %211, %210
  store i32 %212, i32* %12, align 4
  br label %220

213:                                              ; preds = %199
  %214 = load i32, i32* %11, align 4
  %215 = mul i32 %214, 10
  %216 = load i32, i32* %12, align 4
  %217 = add i32 %216, %215
  store i32 %217, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = add i32 %218, 20
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %213, %204
  br label %221

221:                                              ; preds = %220, %194
  %222 = load i32, i32* %12, align 4
  %223 = icmp ugt i32 %222, 1048575
  br i1 %223, label %224, label %227

224:                                              ; preds = %221
  %225 = load i32, i32* @ENOMEM, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %4, align 4
  br label %333

227:                                              ; preds = %221
  %228 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %229 = load i32, i32* @R600_RING_TYPE_DMA_INDEX, align 4
  %230 = load i32, i32* %12, align 4
  %231 = mul i32 %230, 4
  %232 = call i32 @radeon_ib_get(%struct.radeon_device* %228, i32 %229, %struct.radeon_ib* %9, i32* null, i32 %231)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %227
  %236 = load i32, i32* %15, align 4
  store i32 %236, i32* %4, align 4
  br label %333

237:                                              ; preds = %227
  %238 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %9, i32 0, i32 0
  store i32 0, i32* %238, align 8
  %239 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %240 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @RADEON_VM_PAGE_VALID, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %265, label %245

245:                                              ; preds = %237
  store i32 0, i32* %16, align 4
  br label %246

246:                                              ; preds = %261, %245
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* @RADEON_NUM_RINGS, align 4
  %249 = icmp ult i32 %247, %248
  br i1 %249, label %250, label %264

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %9, i32 0, i32 2
  %252 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %253 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %252, i32 0, i32 0
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %253, align 8
  %255 = load i32, i32* %16, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @radeon_sync_fence(i32* %251, i32 %259)
  br label %261

261:                                              ; preds = %250
  %262 = load i32, i32* %16, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %16, align 4
  br label %246

264:                                              ; preds = %246
  br label %265

265:                                              ; preds = %264, %237
  %266 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %267 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %268 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %269 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %273 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %279 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @radeon_vm_page_flags(i32 %280)
  %282 = call i32 @radeon_vm_update_ptes(%struct.radeon_device* %266, %struct.radeon_vm* %267, %struct.radeon_ib* %9, i32 %271, i32 %276, i32 %277, i32 %281)
  store i32 %282, i32* %15, align 4
  %283 = load i32, i32* %15, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %265
  %286 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %287 = call i32 @radeon_ib_free(%struct.radeon_device* %286, %struct.radeon_ib* %9)
  %288 = load i32, i32* %15, align 4
  store i32 %288, i32* %4, align 4
  br label %333

289:                                              ; preds = %265
  %290 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %291 = call i32 @radeon_asic_vm_pad_ib(%struct.radeon_device* %290, %struct.radeon_ib* %9)
  %292 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %9, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = icmp ugt i32 %293, %294
  %296 = zext i1 %295 to i32
  %297 = call i32 @WARN_ON(i32 %296)
  %298 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %299 = call i32 @radeon_ib_schedule(%struct.radeon_device* %298, %struct.radeon_ib* %9, i32* null, i32 0)
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* %15, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %289
  %303 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %304 = call i32 @radeon_ib_free(%struct.radeon_device* %303, %struct.radeon_ib* %9)
  %305 = load i32, i32* %15, align 4
  store i32 %305, i32* %4, align 4
  br label %333

306:                                              ; preds = %289
  %307 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %9, i32 0, i32 1
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 0
  store i32 1, i32* %309, align 4
  %310 = load %struct.radeon_vm*, %struct.radeon_vm** %8, align 8
  %311 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %312 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %316 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 1
  %320 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %9, i32 0, i32 1
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %320, align 8
  %322 = call i32 @radeon_vm_fence_pts(%struct.radeon_vm* %310, i32 %314, i32 %319, %struct.TYPE_12__* %321)
  %323 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %324 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %323, i32 0, i32 1
  %325 = call i32 @radeon_fence_unref(i32* %324)
  %326 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %9, i32 0, i32 1
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %326, align 8
  %328 = call i32 @radeon_fence_ref(%struct.TYPE_12__* %327)
  %329 = load %struct.radeon_bo_va*, %struct.radeon_bo_va** %6, align 8
  %330 = getelementptr inbounds %struct.radeon_bo_va, %struct.radeon_bo_va* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 4
  %331 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %332 = call i32 @radeon_ib_free(%struct.radeon_device* %331, %struct.radeon_ib* %9)
  store i32 0, i32* %4, align 4
  br label %333

333:                                              ; preds = %306, %302, %285, %235, %224, %47, %25
  %334 = load i32, i32* %4, align 4
  ret i32 %334
}

declare dso_local i32 @dev_err(i32, i8*, %struct.TYPE_13__*, %struct.radeon_vm*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @radeon_ttm_tt_is_readonly(i32) #1

declare dso_local i32 @trace_radeon_vm_bo_update(%struct.radeon_bo_va*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @radeon_vm_page_flags(i32) #1

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_sync_fence(i32*, i32) #1

declare dso_local i32 @radeon_vm_update_ptes(%struct.radeon_device*, %struct.radeon_vm*, %struct.radeon_ib*, i32, i32, i32, i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @radeon_asic_vm_pad_ib(%struct.radeon_device*, %struct.radeon_ib*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @radeon_vm_fence_pts(%struct.radeon_vm*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @radeon_fence_unref(i32*) #1

declare dso_local i32 @radeon_fence_ref(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
