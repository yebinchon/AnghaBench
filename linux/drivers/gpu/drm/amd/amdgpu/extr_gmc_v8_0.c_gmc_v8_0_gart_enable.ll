; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmMC_VM_MX_L1_TLB_CNTL = common dso_local global i64 0, align 8
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE = common dso_local global i32 0, align 4
@ENABLE_ADVANCED_DRIVER_MODEL = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS = common dso_local global i32 0, align 4
@mmVM_L2_CNTL = common dso_local global i64 0, align 8
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@EFFECTIVE_L2_QUEUE_SIZE = common dso_local global i32 0, align 4
@CONTEXT1_IDENTITY_ACCESS_MODE = common dso_local global i32 0, align 4
@ENABLE_DEFAULT_PAGE_OUT_TO_SYSTEM_MEMORY = common dso_local global i32 0, align 4
@mmVM_L2_CNTL2 = common dso_local global i64 0, align 8
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@INVALIDATE_ALL_L1_TLBS = common dso_local global i32 0, align 4
@INVALIDATE_L2_CACHE = common dso_local global i32 0, align 4
@mmVM_L2_CNTL3 = common dso_local global i64 0, align 8
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_ASSOCIATIVITY = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_FRAGMENT_SIZE = common dso_local global i32 0, align 4
@mmVM_L2_CNTL4 = common dso_local global i64 0, align 8
@VM_L2_CNTL4 = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT0_PDE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT0_PDE_REQUEST_SHARED = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT0_PDE_REQUEST_SNOOP = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT0_PTE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT0_PTE_REQUEST_SHARED = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT0_PTE_REQUEST_SNOOP = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT1_PDE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT1_PDE_REQUEST_SHARED = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT1_PDE_REQUEST_SNOOP = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT1_PTE_REQUEST_PHYSICAL = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT1_PTE_REQUEST_SHARED = common dso_local global i32 0, align 4
@VMC_TAP_CONTEXT1_PTE_REQUEST_SNOOP = common dso_local global i32 0, align 4
@mmVM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT0_CNTL2 = common dso_local global i64 0, align 8
@mmVM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@PAGE_TABLE_DEPTH = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@mmVM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR = common dso_local global i64 0, align 8
@mmVM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR = common dso_local global i64 0, align 8
@mmVM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET = common dso_local global i64 0, align 8
@mmVM_CONTEXT1_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT1_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i64 0, align 8
@mmVM_CONTEXT1_CNTL2 = common dso_local global i64 0, align 8
@mmVM_CONTEXT1_CNTL = common dso_local global i64 0, align 8
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PDE0_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VALID_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@READ_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@WRITE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PAGE_TABLE_BLOCK_SIZE = common dso_local global i32 0, align 4
@amdgpu_vm_fault_stop = common dso_local global i64 0, align 8
@AMDGPU_VM_FAULT_STOP_ALWAYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v8_0_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_gart_enable(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %348

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
  br label %348

28:                                               ; preds = %21
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @amdgpu_bo_gpu_offset(i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i64, i64* @mmMC_VM_MX_L1_TLB_CNTL, align 8
  %35 = call i32 @RREG32(i64 %34)
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
  %56 = load i64, i64* @mmMC_VM_MX_L1_TLB_CNTL, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @WREG32(i64 %56, i32 %57)
  %59 = load i64, i64* @mmVM_L2_CNTL, align 8
  %60 = call i32 @RREG32(i64 %59)
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
  %89 = load i64, i64* @mmVM_L2_CNTL, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @WREG32(i64 %89, i32 %90)
  %92 = load i64, i64* @mmVM_L2_CNTL2, align 8
  %93 = call i32 @RREG32(i64 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @VM_L2_CNTL2, align 4
  %96 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %97 = call i32 @REG_SET_FIELD(i32 %94, i32 %95, i32 %96, i32 1)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @VM_L2_CNTL2, align 4
  %100 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %101 = call i32 @REG_SET_FIELD(i32 %98, i32 %99, i32 %100, i32 1)
  store i32 %101, i32* %7, align 4
  %102 = load i64, i64* @mmVM_L2_CNTL2, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @WREG32(i64 %102, i32 %103)
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i64, i64* @mmVM_L2_CNTL3, align 8
  %110 = call i32 @RREG32(i64 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @VM_L2_CNTL3, align 4
  %113 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %114 = call i32 @REG_SET_FIELD(i32 %111, i32 %112, i32 %113, i32 1)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @VM_L2_CNTL3, align 4
  %117 = load i32, i32* @BANK_SELECT, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @REG_SET_FIELD(i32 %115, i32 %116, i32 %117, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @VM_L2_CNTL3, align 4
  %122 = load i32, i32* @L2_CACHE_BIGK_FRAGMENT_SIZE, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @REG_SET_FIELD(i32 %120, i32 %121, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i64, i64* @mmVM_L2_CNTL3, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @WREG32(i64 %125, i32 %126)
  %128 = load i64, i64* @mmVM_L2_CNTL4, align 8
  %129 = call i32 @RREG32(i64 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @VM_L2_CNTL4, align 4
  %132 = load i32, i32* @VMC_TAP_CONTEXT0_PDE_REQUEST_PHYSICAL, align 4
  %133 = call i32 @REG_SET_FIELD(i32 %130, i32 %131, i32 %132, i32 0)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @VM_L2_CNTL4, align 4
  %136 = load i32, i32* @VMC_TAP_CONTEXT0_PDE_REQUEST_SHARED, align 4
  %137 = call i32 @REG_SET_FIELD(i32 %134, i32 %135, i32 %136, i32 0)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @VM_L2_CNTL4, align 4
  %140 = load i32, i32* @VMC_TAP_CONTEXT0_PDE_REQUEST_SNOOP, align 4
  %141 = call i32 @REG_SET_FIELD(i32 %138, i32 %139, i32 %140, i32 0)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @VM_L2_CNTL4, align 4
  %144 = load i32, i32* @VMC_TAP_CONTEXT0_PTE_REQUEST_PHYSICAL, align 4
  %145 = call i32 @REG_SET_FIELD(i32 %142, i32 %143, i32 %144, i32 0)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @VM_L2_CNTL4, align 4
  %148 = load i32, i32* @VMC_TAP_CONTEXT0_PTE_REQUEST_SHARED, align 4
  %149 = call i32 @REG_SET_FIELD(i32 %146, i32 %147, i32 %148, i32 0)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @VM_L2_CNTL4, align 4
  %152 = load i32, i32* @VMC_TAP_CONTEXT0_PTE_REQUEST_SNOOP, align 4
  %153 = call i32 @REG_SET_FIELD(i32 %150, i32 %151, i32 %152, i32 0)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @VM_L2_CNTL4, align 4
  %156 = load i32, i32* @VMC_TAP_CONTEXT1_PDE_REQUEST_PHYSICAL, align 4
  %157 = call i32 @REG_SET_FIELD(i32 %154, i32 %155, i32 %156, i32 0)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @VM_L2_CNTL4, align 4
  %160 = load i32, i32* @VMC_TAP_CONTEXT1_PDE_REQUEST_SHARED, align 4
  %161 = call i32 @REG_SET_FIELD(i32 %158, i32 %159, i32 %160, i32 0)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @VM_L2_CNTL4, align 4
  %164 = load i32, i32* @VMC_TAP_CONTEXT1_PDE_REQUEST_SNOOP, align 4
  %165 = call i32 @REG_SET_FIELD(i32 %162, i32 %163, i32 %164, i32 0)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @VM_L2_CNTL4, align 4
  %168 = load i32, i32* @VMC_TAP_CONTEXT1_PTE_REQUEST_PHYSICAL, align 4
  %169 = call i32 @REG_SET_FIELD(i32 %166, i32 %167, i32 %168, i32 0)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @VM_L2_CNTL4, align 4
  %172 = load i32, i32* @VMC_TAP_CONTEXT1_PTE_REQUEST_SHARED, align 4
  %173 = call i32 @REG_SET_FIELD(i32 %170, i32 %171, i32 %172, i32 0)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @VM_L2_CNTL4, align 4
  %176 = load i32, i32* @VMC_TAP_CONTEXT1_PTE_REQUEST_SNOOP, align 4
  %177 = call i32 @REG_SET_FIELD(i32 %174, i32 %175, i32 %176, i32 0)
  store i32 %177, i32* %7, align 4
  %178 = load i64, i64* @mmVM_L2_CNTL4, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @WREG32(i64 %178, i32 %179)
  %181 = load i64, i64* @mmVM_CONTEXT0_PAGE_TABLE_START_ADDR, align 8
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = ashr i32 %185, 12
  %187 = call i32 @WREG32(i64 %181, i32 %186)
  %188 = load i64, i64* @mmVM_CONTEXT0_PAGE_TABLE_END_ADDR, align 8
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %192, 12
  %194 = call i32 @WREG32(i64 %188, i32 %193)
  %195 = load i64, i64* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %196 = load i32, i32* %4, align 4
  %197 = ashr i32 %196, 12
  %198 = call i32 @WREG32(i64 %195, i32 %197)
  %199 = load i64, i64* @mmVM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 8
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = ashr i32 %202, 12
  %204 = call i32 @WREG32(i64 %199, i32 %203)
  %205 = load i64, i64* @mmVM_CONTEXT0_CNTL2, align 8
  %206 = call i32 @WREG32(i64 %205, i32 0)
  %207 = load i64, i64* @mmVM_CONTEXT0_CNTL, align 8
  %208 = call i32 @RREG32(i64 %207)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %211 = load i32, i32* @ENABLE_CONTEXT, align 4
  %212 = call i32 @REG_SET_FIELD(i32 %209, i32 %210, i32 %211, i32 1)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %215 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %216 = call i32 @REG_SET_FIELD(i32 %213, i32 %214, i32 %215, i32 0)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %219 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %220 = call i32 @REG_SET_FIELD(i32 %217, i32 %218, i32 %219, i32 1)
  store i32 %220, i32* %7, align 4
  %221 = load i64, i64* @mmVM_CONTEXT0_CNTL, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @WREG32(i64 %221, i32 %222)
  %224 = load i64, i64* @mmVM_L2_CONTEXT1_IDENTITY_APERTURE_LOW_ADDR, align 8
  %225 = call i32 @WREG32(i64 %224, i32 0)
  %226 = load i64, i64* @mmVM_L2_CONTEXT1_IDENTITY_APERTURE_HIGH_ADDR, align 8
  %227 = call i32 @WREG32(i64 %226, i32 0)
  %228 = load i64, i64* @mmVM_L2_CONTEXT_IDENTITY_PHYSICAL_OFFSET, align 8
  %229 = call i32 @WREG32(i64 %228, i32 0)
  %230 = load i64, i64* @mmVM_CONTEXT1_PAGE_TABLE_START_ADDR, align 8
  %231 = call i32 @WREG32(i64 %230, i32 0)
  %232 = load i64, i64* @mmVM_CONTEXT1_PAGE_TABLE_END_ADDR, align 8
  %233 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %234 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = sub nsw i32 %236, 1
  %238 = call i32 @WREG32(i64 %232, i32 %237)
  store i32 1, i32* %6, align 4
  br label %239

239:                                              ; preds = %263, %28
  %240 = load i32, i32* %6, align 4
  %241 = icmp slt i32 %240, 16
  br i1 %241, label %242, label %266

242:                                              ; preds = %239
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %243, 8
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load i64, i64* @mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %246, %248
  %250 = load i32, i32* %4, align 4
  %251 = ashr i32 %250, 12
  %252 = call i32 @WREG32(i64 %249, i32 %251)
  br label %262

253:                                              ; preds = %242
  %254 = load i64, i64* @mmVM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %254, %256
  %258 = sub nsw i64 %257, 8
  %259 = load i32, i32* %4, align 4
  %260 = ashr i32 %259, 12
  %261 = call i32 @WREG32(i64 %258, i32 %260)
  br label %262

262:                                              ; preds = %253, %245
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %6, align 4
  br label %239

266:                                              ; preds = %239
  %267 = load i64, i64* @mmVM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR, align 8
  %268 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %269 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = ashr i32 %270, 12
  %272 = call i32 @WREG32(i64 %267, i32 %271)
  %273 = load i64, i64* @mmVM_CONTEXT1_CNTL2, align 8
  %274 = call i32 @WREG32(i64 %273, i32 4)
  %275 = load i64, i64* @mmVM_CONTEXT1_CNTL, align 8
  %276 = call i32 @RREG32(i64 %275)
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %279 = load i32, i32* @ENABLE_CONTEXT, align 4
  %280 = call i32 @REG_SET_FIELD(i32 %277, i32 %278, i32 %279, i32 1)
  store i32 %280, i32* %7, align 4
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %283 = load i32, i32* @PAGE_TABLE_DEPTH, align 4
  %284 = call i32 @REG_SET_FIELD(i32 %281, i32 %282, i32 %283, i32 1)
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %287 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %288 = call i32 @REG_SET_FIELD(i32 %285, i32 %286, i32 %287, i32 1)
  store i32 %288, i32* %7, align 4
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %291 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %292 = call i32 @REG_SET_FIELD(i32 %289, i32 %290, i32 %291, i32 1)
  store i32 %292, i32* %7, align 4
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %295 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %296 = call i32 @REG_SET_FIELD(i32 %293, i32 %294, i32 %295, i32 1)
  store i32 %296, i32* %7, align 4
  %297 = load i32, i32* %7, align 4
  %298 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %299 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %300 = call i32 @REG_SET_FIELD(i32 %297, i32 %298, i32 %299, i32 1)
  store i32 %300, i32* %7, align 4
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %303 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %304 = call i32 @REG_SET_FIELD(i32 %301, i32 %302, i32 %303, i32 1)
  store i32 %304, i32* %7, align 4
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %307 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %308 = call i32 @REG_SET_FIELD(i32 %305, i32 %306, i32 %307, i32 1)
  store i32 %308, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %311 = load i32, i32* @EXECUTE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %312 = call i32 @REG_SET_FIELD(i32 %309, i32 %310, i32 %311, i32 1)
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* %7, align 4
  %314 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %315 = load i32, i32* @PAGE_TABLE_BLOCK_SIZE, align 4
  %316 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %317 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = sub nsw i32 %319, 9
  %321 = call i32 @REG_SET_FIELD(i32 %313, i32 %314, i32 %315, i32 %320)
  store i32 %321, i32* %7, align 4
  %322 = load i64, i64* @mmVM_CONTEXT1_CNTL, align 8
  %323 = load i32, i32* %7, align 4
  %324 = call i32 @WREG32(i64 %322, i32 %323)
  %325 = load i64, i64* @amdgpu_vm_fault_stop, align 8
  %326 = load i64, i64* @AMDGPU_VM_FAULT_STOP_ALWAYS, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %331

328:                                              ; preds = %266
  %329 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %330 = call i32 @gmc_v8_0_set_fault_enable_default(%struct.amdgpu_device* %329, i32 0)
  br label %334

331:                                              ; preds = %266
  %332 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %333 = call i32 @gmc_v8_0_set_fault_enable_default(%struct.amdgpu_device* %332, i32 1)
  br label %334

334:                                              ; preds = %331, %328
  %335 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %336 = call i32 @gmc_v8_0_flush_gpu_tlb(%struct.amdgpu_device* %335, i32 0, i32 0, i32 0)
  %337 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %338 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = ashr i32 %340, 20
  %342 = load i32, i32* %4, align 4
  %343 = sext i32 %342 to i64
  %344 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %341, i64 %343)
  %345 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %346 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  store i32 1, i32* %347, align 8
  store i32 0, i32* %2, align 4
  br label %348

348:                                              ; preds = %334, %26, %14
  %349 = load i32, i32* %2, align 4
  ret i32 %349
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @amdgpu_gart_table_vram_pin(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(i32*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @gmc_v8_0_set_fault_enable_default(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gmc_v8_0_flush_gpu_tlb(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
