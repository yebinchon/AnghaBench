; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmMC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE = common dso_local global i32 0, align 4
@ENABLE_ADVANCED_DRIVER_MODEL = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS = common dso_local global i32 0, align 4
@mmVM_L2_CNTL = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@EFFECTIVE_L2_QUEUE_SIZE = common dso_local global i32 0, align 4
@CONTEXT1_IDENTITY_ACCESS_MODE = common dso_local global i32 0, align 4
@ENABLE_DEFAULT_PAGE_OUT_TO_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@INVALIDATE_ALL_L1_TLBS = common dso_local global i32 0, align 4
@INVALIDATE_L2_CACHE = common dso_local global i32 0, align 4
@mmVM_L2_CNTL2 = common dso_local global i32 0, align 4
@mmVM_L2_CNTL3 = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_ASSOCIATIVITY = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_CNTL2 = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@PAGE_TABLE_DEPTH = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@mmVM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@PAGE_TABLE_BLOCK_SIZE = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_ALWAYS = common dso_local global i64 0, align 8
@CHIP_KAVERI = common dso_local global i64 0, align 8
@mmCHUB_CONTROL = common dso_local global i32 0, align 4
@BYPASS_VM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v7_0_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v7_0_gart_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %275

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = call i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %275

28:                                               ; preds = %21
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @amdgpu_bo_gpu_offset(i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %38 = load i32, i32* @ENABLE_L1_TLB, align 4
  %39 = call i32 @REG_SET_FIELD(i32 %36, i32 %37, i32 %38, i32 1)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %42 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %43 = call i32 @REG_SET_FIELD(i32 %40, i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %46 = load i32, i32* @SYSTEM_ACCESS_MODE, align 4
  %47 = call i32 @REG_SET_FIELD(i32 %44, i32 %45, i32 %46, i32 3)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %50 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %51 = call i32 @REG_SET_FIELD(i32 %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %54 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS, align 4
  %55 = call i32 @REG_SET_FIELD(i32 %52, i32 %53, i32 %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @mmMC_VM_MX_L1_TLB_CNTL, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  %59 = load i32, i32* @mmVM_L2_CNTL, align 4
  %60 = call i32 @RREG32(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @VM_L2_CNTL, align 4
  %63 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %64 = call i32 @REG_SET_FIELD(i32 %61, i32 %62, i32 %63, i32 1)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @VM_L2_CNTL, align 4
  %67 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %68 = call i32 @REG_SET_FIELD(i32 %65, i32 %66, i32 %67, i32 1)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @VM_L2_CNTL, align 4
  %71 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %72 = call i32 @REG_SET_FIELD(i32 %69, i32 %70, i32 %71, i32 1)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @VM_L2_CNTL, align 4
  %75 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %76 = call i32 @REG_SET_FIELD(i32 %73, i32 %74, i32 %75, i32 1)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @VM_L2_CNTL, align 4
  %79 = load i32, i32* @EFFECTIVE_L2_QUEUE_SIZE, align 4
  %80 = call i32 @REG_SET_FIELD(i32 %77, i32 %78, i32 %79, i32 7)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @VM_L2_CNTL, align 4
  %83 = load i32, i32* @CONTEXT1_IDENTITY_ACCESS_MODE, align 4
  %84 = call i32 @REG_SET_FIELD(i32 %81, i32 %82, i32 %83, i32 1)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @VM_L2_CNTL, align 4
  %87 = load i32, i32* @ENABLE_DEFAULT_PAGE_OUT_TO_SYSTEM_MEMORY, align 4
  %88 = call i32 @REG_SET_FIELD(i32 %85, i32 %86, i32 %87, i32 1)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @mmVM_L2_CNTL, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  %92 = load i32, i32* @VM_L2_CNTL2, align 4
  %93 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %94 = call i32 @REG_SET_FIELD(i32 0, i32 %92, i32 %93, i32 1)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @VM_L2_CNTL2, align 4
  %97 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %98 = call i32 @REG_SET_FIELD(i32 %95, i32 %96, i32 %97, i32 1)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @mmVM_L2_CNTL2, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @WREG32(i32 %99, i32 %100)
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* @mmVM_L2_CNTL3, align 4
  %107 = call i32 @RREG32(i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @VM_L2_CNTL3, align 4
  %110 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %111 = call i32 @REG_SET_FIELD(i32 %108, i32 %109, i32 %110, i32 1)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @VM_L2_CNTL3, align 4
  %114 = load i32, i32* @BANK_SELECT, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @REG_SET_FIELD(i32 %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @VM_L2_CNTL3, align 4
  %119 = load i32, i32* @L2_CACHE_BIGK_FRAGMENT_SIZE, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @REG_SET_FIELD(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* @mmVM_L2_CNTL3, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @WREG32(i32 %122, i32 %123)
  %125 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = ashr i32 %129, 12
  %131 = call i32 @WREG32(i32 %125, i32 %130)
  %132 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 12
  %138 = call i32 @WREG32(i32 %132, i32 %137)
  %139 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %140 = load i32, i32* %4, align 4
  %141 = ashr i32 %140, 12
  %142 = call i32 @WREG32(i32 %139, i32 %141)
  %143 = load i32, i32* @mmVM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %146, 12
  %148 = call i32 @WREG32(i32 %143, i32 %147)
  %149 = load i32, i32* @mmVM_CONTEXT0_CNTL2, align 4
  %150 = call i32 @WREG32(i32 %149, i32 0)
  %151 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %152 = call i32 @RREG32(i32 %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %155 = load i32, i32* @ENABLE_CONTEXT, align 4
  %156 = call i32 @REG_SET_FIELD(i32 %153, i32 %154, i32 %155, i32 1)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %159 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %160 = call i32 @REG_SET_FIELD(i32 %157, i32 %158, i32 %159, i32 0)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %163 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %164 = call i32 @REG_SET_FIELD(i32 %161, i32 %162, i32 %163, i32 1)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* @mmVM_CONTEXT0_CNTL, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @WREG32(i32 %165, i32 %166)
  %168 = call i32 @WREG32(i32 1397, i32 0)
  %169 = call i32 @WREG32(i32 1398, i32 0)
  %170 = call i32 @WREG32(i32 1399, i32 0)
  %171 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_START_ADDR, align 4
  %172 = call i32 @WREG32(i32 %171, i32 0)
  %173 = load i32, i32* @mmVM_CONTEXT1_PAGE_TABLE_END_ADDR, align 4
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %175 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  %179 = call i32 @WREG32(i32 %173, i32 %178)
  store i32 1, i32* %6, align 4
  br label %180

180:                                              ; preds = %202, %28
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 16
  br i1 %182, label %183, label %205

183:                                              ; preds = %180
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 8
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load i32, i32* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %187, %188
  %190 = load i32, i32* %4, align 4
  %191 = ashr i32 %190, 12
  %192 = call i32 @WREG32(i32 %189, i32 %191)
  br label %201

193:                                              ; preds = %183
  %194 = load i32, i32* @mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %194, %195
  %197 = sub nsw i32 %196, 8
  %198 = load i32, i32* %4, align 4
  %199 = ashr i32 %198, 12
  %200 = call i32 @WREG32(i32 %197, i32 %199)
  br label %201

201:                                              ; preds = %193, %186
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %6, align 4
  br label %180

205:                                              ; preds = %180
  %206 = load i32, i32* @mmVM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = ashr i32 %209, 12
  %211 = call i32 @WREG32(i32 %206, i32 %210)
  %212 = load i32, i32* @mmVM_CONTEXT1_CNTL2, align 4
  %213 = call i32 @WREG32(i32 %212, i32 4)
  %214 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %215 = call i32 @RREG32(i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %218 = load i32, i32* @ENABLE_CONTEXT, align 4
  %219 = call i32 @REG_SET_FIELD(i32 %216, i32 %217, i32 %218, i32 1)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %222 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %223 = call i32 @REG_SET_FIELD(i32 %220, i32 %221, i32 %222, i32 1)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %226 = load i32, i32* @PAGE_TABLE_BLOCK_SIZE, align 4
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %228 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %230, 9
  %232 = call i32 @REG_SET_FIELD(i32 %224, i32 %225, i32 %226, i32 %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* @mmVM_CONTEXT1_CNTL, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i32 @WREG32(i32 %233, i32 %234)
  %236 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %237 = load i64, i64* @AMDGPU_VM_FAULT_STOP_ALWAYS, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %205
  %240 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %241 = call i32 @gmc_v7_0_set_fault_enable_default(%struct.amdgpu_device* %240, i32 0)
  br label %245

242:                                              ; preds = %205
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %244 = call i32 @gmc_v7_0_set_fault_enable_default(%struct.amdgpu_device* %243, i32 1)
  br label %245

245:                                              ; preds = %242, %239
  %246 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %247 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @CHIP_KAVERI, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %245
  %252 = load i32, i32* @mmCHUB_CONTROL, align 4
  %253 = call i32 @RREG32(i32 %252)
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* @BYPASS_VM, align 4
  %255 = xor i32 %254, -1
  %256 = load i32, i32* %7, align 4
  %257 = and i32 %256, %255
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* @mmCHUB_CONTROL, align 4
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @WREG32(i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %251, %245
  %262 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %263 = call i32 @gmc_v7_0_flush_gpu_tlb(%struct.amdgpu_device* %262, i32 0, i32 0, i32 0)
  %264 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %265 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = ashr i32 %267, 20
  %269 = load i32, i32* %4, align 4
  %270 = sext i32 %269 to i64
  %271 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %268, i64 %270)
  %272 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %273 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  store i32 1, i32* %274, align 8
  store i32 0, i32* %2, align 4
  br label %275

275:                                              ; preds = %261, %26, %14
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(i32*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gmc_v7_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v7_0_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
