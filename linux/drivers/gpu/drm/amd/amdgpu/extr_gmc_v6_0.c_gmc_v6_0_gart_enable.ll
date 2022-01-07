; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmMC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL__ENABLE_L1_TLB_MASK = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL__ENABLE_L1_FRAGMENT_PROCESSING_MASK = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL__SYSTEM_ACCESS_MODE_MASK = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL__ENABLE_ADVANCED_DRIVER_MODEL_MASK = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL__SYSTEM_APERTURE_UNMAPPED_ACCESS__SHIFT = common dso_local global i64 0, align 8
@mmVM_L2_CNTL = common dso_local global i32 0, align 4
@VM_L2_CNTL__ENABLE_L2_CACHE_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL__ENABLE_L2_FRAGMENT_PROCESSING_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL__ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL__ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL__EFFECTIVE_L2_QUEUE_SIZE__SHIFT = common dso_local global i64 0, align 8
@VM_L2_CNTL__CONTEXT1_IDENTITY_ACCESS_MODE__SHIFT = common dso_local global i64 0, align 8
@mmVM_L2_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_CNTL2__INVALIDATE_ALL_L1_TLBS_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL2__INVALIDATE_L2_CACHE_MASK = common dso_local global i64 0, align 8
@mmVM_L2_CNTL3 = common dso_local global i32 0, align 4
@VM_L2_CNTL3__L2_CACHE_BIGK_ASSOCIATIVITY_MASK = common dso_local global i64 0, align 8
@VM_L2_CNTL3__BANK_SELECT__SHIFT = common dso_local global i64 0, align 8
@VM_L2_CNTL3__L2_CACHE_BIGK_FRAGMENT_SIZE__SHIFT = common dso_local global i64 0, align 8
@mmVM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_CNTL2 = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL__ENABLE_CONTEXT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL__PAGE_TABLE_DEPTH__SHIFT = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL__RANGE_PROTECTION_FAULT_ENABLE_DEFAULT_MASK = common dso_local global i64 0, align 8
@mmVM_CONTEXT1_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL__ENABLE_CONTEXT_MASK = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__PAGE_TABLE_DEPTH__SHIFT = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL__PAGE_TABLE_BLOCK_SIZE__SHIFT = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_ALWAYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v6_0_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v6_0_gart_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %211

20:                                               ; preds = %1
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = call i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %211

27:                                               ; preds = %20
  %28 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %29 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @amdgpu_bo_gpu_offset(i32* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %34 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL__ENABLE_L1_TLB_MASK, align 4
  %35 = or i32 1280, %34
  %36 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL__ENABLE_L1_FRAGMENT_PROCESSING_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL__SYSTEM_ACCESS_MODE_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL__ENABLE_ADVANCED_DRIVER_MODEL_MASK, align 4
  %41 = or i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @MC_VM_MX_L1_TLB_CNTL__SYSTEM_APERTURE_UNMAPPED_ACCESS__SHIFT, align 8
  %44 = shl i64 0, %43
  %45 = or i64 %42, %44
  %46 = call i32 @WREG32(i32 %33, i64 %45)
  %47 = load i32, i32* @mmVM_L2_CNTL, align 4
  %48 = load i64, i64* @VM_L2_CNTL__ENABLE_L2_CACHE_MASK, align 8
  %49 = load i64, i64* @VM_L2_CNTL__ENABLE_L2_FRAGMENT_PROCESSING_MASK, align 8
  %50 = or i64 %48, %49
  %51 = load i64, i64* @VM_L2_CNTL__ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE_MASK, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* @VM_L2_CNTL__ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE_MASK, align 8
  %54 = or i64 %52, %53
  %55 = load i64, i64* @VM_L2_CNTL__EFFECTIVE_L2_QUEUE_SIZE__SHIFT, align 8
  %56 = shl i64 7, %55
  %57 = or i64 %54, %56
  %58 = load i64, i64* @VM_L2_CNTL__CONTEXT1_IDENTITY_ACCESS_MODE__SHIFT, align 8
  %59 = shl i64 1, %58
  %60 = or i64 %57, %59
  %61 = call i32 @WREG32(i32 %47, i64 %60)
  %62 = load i32, i32* @mmVM_L2_CNTL2, align 4
  %63 = load i64, i64* @VM_L2_CNTL2__INVALIDATE_ALL_L1_TLBS_MASK, align 8
  %64 = load i64, i64* @VM_L2_CNTL2__INVALIDATE_L2_CACHE_MASK, align 8
  %65 = or i64 %63, %64
  %66 = call i32 @WREG32(i32 %62, i64 %65)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  %71 = load i32, i32* @mmVM_L2_CNTL3, align 4
  %72 = load i64, i64* @VM_L2_CNTL3__L2_CACHE_BIGK_ASSOCIATIVITY_MASK, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @VM_L2_CNTL3__BANK_SELECT__SHIFT, align 8
  %75 = shl i64 %73, %74
  %76 = or i64 %72, %75
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @VM_L2_CNTL3__L2_CACHE_BIGK_FRAGMENT_SIZE__SHIFT, align 8
  %79 = shl i64 %77, %78
  %80 = or i64 %76, %79
  %81 = call i32 @WREG32(i32 %71, i64 %80)
  %82 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 12
  %88 = sext i32 %87 to i64
  %89 = call i32 @WREG32(i32 %82, i64 %88)
  %90 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 12
  %96 = sext i32 %95 to i64
  %97 = call i32 @WREG32(i32 %90, i64 %96)
  %98 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %99 = load i32, i32* %4, align 4
  %100 = ashr i32 %99, 12
  %101 = sext i32 %100 to i64
  %102 = call i32 @WREG32(i32 %98, i64 %101)
  %103 = load i32, i32* @mmVM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = ashr i32 %106, 12
  %108 = sext i32 %107 to i64
  %109 = call i32 @WREG32(i32 %103, i64 %108)
  %110 = load i32, i32* @mmVM_CONTEXT0_CNTL2, align 4
  %111 = call i32 @WREG32(i32 %110, i64 0)
  %112 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %113 = load i64, i64* @VM_CONTEXT0_CNTL__ENABLE_CONTEXT_MASK, align 8
  %114 = load i64, i64* @VM_CONTEXT0_CNTL__PAGE_TABLE_DEPTH__SHIFT, align 8
  %115 = shl i64 0, %114
  %116 = or i64 %113, %115
  %117 = load i64, i64* @VM_CONTEXT0_CNTL__RANGE_PROTECTION_FAULT_ENABLE_DEFAULT_MASK, align 8
  %118 = or i64 %116, %117
  %119 = call i32 @WREG32(i32 %112, i64 %118)
  %120 = call i32 @WREG32(i32 1397, i64 0)
  %121 = call i32 @WREG32(i32 1398, i64 0)
  %122 = call i32 @WREG32(i32 1399, i64 0)
  %123 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_START_ADDR, align 4
  %124 = call i32 @WREG32(i32 %123, i64 0)
  %125 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_END_ADDR, align 4
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = call i32 @WREG32(i32 %125, i64 %131)
  store i32 1, i32* %6, align 4
  br label %133

133:                                              ; preds = %157, %27
  %134 = load i32, i32* %6, align 4
  %135 = icmp slt i32 %134, 16
  br i1 %135, label %136, label %160

136:                                              ; preds = %133
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 8
  br i1 %138, label %139, label %147

139:                                              ; preds = %136
  %140 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* %4, align 4
  %144 = ashr i32 %143, 12
  %145 = sext i32 %144 to i64
  %146 = call i32 @WREG32(i32 %142, i64 %145)
  br label %156

147:                                              ; preds = %136
  %148 = load i32, i32* @mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %148, %149
  %151 = sub nsw i32 %150, 8
  %152 = load i32, i32* %4, align 4
  %153 = ashr i32 %152, 12
  %154 = sext i32 %153 to i64
  %155 = call i32 @WREG32(i32 %151, i64 %154)
  br label %156

156:                                              ; preds = %147, %139
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %133

160:                                              ; preds = %133
  %161 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %163 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %164, 12
  %166 = sext i32 %165 to i64
  %167 = call i32 @WREG32(i32 %161, i64 %166)
  %168 = load i32, i32* @mmVM_CONTEXT1_CNTL2, align 4
  %169 = call i32 @WREG32(i32 %168, i64 4)
  %170 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %171 = load i64, i64* @VM_CONTEXT1_CNTL__ENABLE_CONTEXT_MASK, align 8
  %172 = load i64, i64* @VM_CONTEXT1_CNTL__PAGE_TABLE_DEPTH__SHIFT, align 8
  %173 = shl i64 1, %172
  %174 = or i64 %171, %173
  %175 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %176 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 9
  %180 = load i32, i32* @VM_CONTEXT1_CNTL__PAGE_TABLE_BLOCK_SIZE__SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = or i64 %174, %182
  %184 = call i32 @WREG32(i32 %170, i64 %183)
  %185 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %186 = load i64, i64* @AMDGPU_VM_FAULT_STOP_ALWAYS, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %160
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %190 = call i32 @gmc_v6_0_set_fault_enable_default(%struct.amdgpu_device* %189, i32 0)
  br label %194

191:                                              ; preds = %160
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %193 = call i32 @gmc_v6_0_set_fault_enable_default(%struct.amdgpu_device* %192, i32 1)
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %196 = call i32 @gmc_v6_0_flush_gpu_tlb(%struct.amdgpu_device* %195, i32 0, i32 0, i32 0)
  %197 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %198 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = ashr i32 %203, 20
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = call i32 @dev_info(i32 %199, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %204, i64 %206)
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %209 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  store i32 0, i32* %2, align 4
  br label %211

211:                                              ; preds = %194, %25, %13
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(i32*) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i32 @gmc_v6_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v6_0_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
