; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MC_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@ENABLE_ADVANCED_DRIVER_MODEL = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@INVALIDATE_ALL_L1_TLBS = common dso_local global i32 0, align 4
@INVALIDATE_L2_CACHE = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@L2_CACHE_BIGK_ASSOCIATIVITY = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL2 = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT1_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL2 = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@radeon_vm_block_size = common dso_local global i64 0, align 8
@RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@PDE0_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VALID_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@VALID_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@READ_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@READ_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT = common dso_local global i32 0, align 4
@WRITE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@CHIP_KAVERI = common dso_local global i64 0, align 8
@CHUB_CONTROL = common dso_local global i32 0, align 4
@BYPASS_VM = common dso_local global i32 0, align 4
@SH_MEM_CONFIG = common dso_local global i32 0, align 4
@SH_MEM_CONFIG_GFX_DEFAULT = common dso_local global i32 0, align 4
@SH_MEM_APE1_BASE = common dso_local global i32 0, align 4
@SH_MEM_APE1_LIMIT = common dso_local global i32 0, align 4
@SH_MEM_BASES = common dso_local global i32 0, align 4
@SDMA0_GFX_VIRTUAL_ADDR = common dso_local global i32 0, align 4
@SDMA0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@SDMA0_GFX_APE1_CNTL = common dso_local global i32 0, align 4
@SDMA1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %271

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %271

26:                                               ; preds = %19
  %27 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %28 = load i32, i32* @ENABLE_L1_TLB, align 4
  %29 = or i32 1280, %28
  %30 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @WREG32(i32 %27, i32 %37)
  %39 = load i32, i32* @VM_L2_CNTL, align 4
  %40 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %41 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %48 = or i32 %46, %47
  %49 = call i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32 1)
  %50 = or i32 %48, %49
  %51 = call i32 @WREG32(i32 %39, i32 %50)
  %52 = load i32, i32* @VM_L2_CNTL2, align 4
  %53 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %54 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @WREG32(i32 %52, i32 %55)
  %57 = load i32, i32* @VM_L2_CNTL3, align 4
  %58 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %59 = call i32 @BANK_SELECT(i32 4)
  %60 = or i32 %58, %59
  %61 = call i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32 4)
  %62 = or i32 %60, %61
  %63 = call i32 @WREG32(i32 %57, i32 %62)
  %64 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %65 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = ashr i32 %68, 12
  %70 = call i32 @WREG32(i32 %64, i32 %69)
  %71 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 12
  %77 = call i32 @WREG32(i32 %71, i32 %76)
  %78 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, 12
  %84 = call i32 @WREG32(i32 %78, i32 %83)
  %85 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 12
  %91 = call i32 @WREG32(i32 %85, i32 %90)
  %92 = load i32, i32* @VM_CONTEXT0_CNTL2, align 4
  %93 = call i32 @WREG32(i32 %92, i32 0)
  %94 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %95 = load i32, i32* @ENABLE_CONTEXT, align 4
  %96 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %97 = or i32 %95, %96
  %98 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @WREG32(i32 %94, i32 %99)
  %101 = call i32 @WREG32(i32 5588, i32 0)
  %102 = call i32 @WREG32(i32 5592, i32 0)
  %103 = call i32 @WREG32(i32 5596, i32 0)
  %104 = load i32, i32* @VM_CONTEXT1_PAGE_TABLE_START_ADDR, align 4
  %105 = call i32 @WREG32(i32 %104, i32 0)
  %106 = load i32, i32* @VM_CONTEXT1_PAGE_TABLE_END_ADDR, align 4
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @WREG32(i32 %106, i32 %111)
  store i32 1, i32* %5, align 4
  br label %113

113:                                              ; preds = %149, %26
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 16
  br i1 %115, label %116, label %152

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 8
  br i1 %118, label %119, label %133

119:                                              ; preds = %116
  %120 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %121 = load i32, i32* %5, align 4
  %122 = shl i32 %121, 2
  %123 = add nsw i32 %120, %122
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @WREG32(i32 %123, i32 %131)
  br label %148

133:                                              ; preds = %116
  %134 = load i32, i32* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %135 = load i32, i32* %5, align 4
  %136 = sub nsw i32 %135, 8
  %137 = shl i32 %136, 2
  %138 = add nsw i32 %134, %137
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @WREG32(i32 %138, i32 %146)
  br label %148

148:                                              ; preds = %133, %119
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %113

152:                                              ; preds = %113
  %153 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %154 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = ashr i32 %157, 12
  %159 = call i32 @WREG32(i32 %153, i32 %158)
  %160 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %161 = call i32 @WREG32(i32 %160, i32 4)
  %162 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %163 = load i32, i32* @ENABLE_CONTEXT, align 4
  %164 = call i32 @PAGE_TABLE_DEPTH(i32 1)
  %165 = or i32 %163, %164
  %166 = load i64, i64* @radeon_vm_block_size, align 8
  %167 = sub nsw i64 %166, 9
  %168 = call i32 @PAGE_TABLE_BLOCK_SIZE(i64 %167)
  %169 = or i32 %165, %168
  %170 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @WREG32(i32 %162, i32 %193)
  %195 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %196 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @CHIP_KAVERI, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %152
  %201 = load i32, i32* @CHUB_CONTROL, align 4
  %202 = call i32 @RREG32(i32 %201)
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* @BYPASS_VM, align 4
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %6, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %6, align 4
  %207 = load i32, i32* @CHUB_CONTROL, align 4
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @WREG32(i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %200, %152
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %211, i32 0, i32 3
  %213 = call i32 @mutex_lock(i32* %212)
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %246, %210
  %215 = load i32, i32* %5, align 4
  %216 = icmp slt i32 %215, 16
  br i1 %216, label %217, label %249

217:                                              ; preds = %214
  %218 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @cik_srbm_select(%struct.radeon_device* %218, i32 0, i32 0, i32 0, i32 %219)
  %221 = load i32, i32* @SH_MEM_CONFIG, align 4
  %222 = load i32, i32* @SH_MEM_CONFIG_GFX_DEFAULT, align 4
  %223 = call i32 @WREG32(i32 %221, i32 %222)
  %224 = load i32, i32* @SH_MEM_APE1_BASE, align 4
  %225 = call i32 @WREG32(i32 %224, i32 1)
  %226 = load i32, i32* @SH_MEM_APE1_LIMIT, align 4
  %227 = call i32 @WREG32(i32 %226, i32 0)
  %228 = load i32, i32* @SH_MEM_BASES, align 4
  %229 = call i32 @WREG32(i32 %228, i32 0)
  %230 = load i32, i32* @SDMA0_GFX_VIRTUAL_ADDR, align 4
  %231 = load i32, i32* @SDMA0_REGISTER_OFFSET, align 4
  %232 = add nsw i32 %230, %231
  %233 = call i32 @WREG32(i32 %232, i32 0)
  %234 = load i32, i32* @SDMA0_GFX_APE1_CNTL, align 4
  %235 = load i32, i32* @SDMA0_REGISTER_OFFSET, align 4
  %236 = add nsw i32 %234, %235
  %237 = call i32 @WREG32(i32 %236, i32 0)
  %238 = load i32, i32* @SDMA0_GFX_VIRTUAL_ADDR, align 4
  %239 = load i32, i32* @SDMA1_REGISTER_OFFSET, align 4
  %240 = add nsw i32 %238, %239
  %241 = call i32 @WREG32(i32 %240, i32 0)
  %242 = load i32, i32* @SDMA0_GFX_APE1_CNTL, align 4
  %243 = load i32, i32* @SDMA1_REGISTER_OFFSET, align 4
  %244 = add nsw i32 %242, %243
  %245 = call i32 @WREG32(i32 %244, i32 0)
  br label %246

246:                                              ; preds = %217
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %5, align 4
  br label %214

249:                                              ; preds = %214
  %250 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %251 = call i32 @cik_srbm_select(%struct.radeon_device* %250, i32 0, i32 0, i32 0, i32 0)
  %252 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %253 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %252, i32 0, i32 3
  %254 = call i32 @mutex_unlock(i32* %253)
  %255 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %256 = call i32 @cik_pcie_gart_tlb_flush(%struct.radeon_device* %255)
  %257 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %258 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = ashr i32 %260, 20
  %262 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %263 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %261, i64 %266)
  %268 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %269 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 1
  store i32 1, i32* %270, align 4
  store i32 0, i32* %2, align 4
  br label %271

271:                                              ; preds = %249, %24, %12
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32) #1

declare dso_local i32 @BANK_SELECT(i32) #1

declare dso_local i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32) #1

declare dso_local i32 @PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @PAGE_TABLE_BLOCK_SIZE(i64) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cik_srbm_select(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cik_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
