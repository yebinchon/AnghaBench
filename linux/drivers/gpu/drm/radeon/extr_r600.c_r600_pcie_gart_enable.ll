; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i64 0, align 8
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i64 0, align 8
@VM_L2_CNTL3 = common dso_local global i64 0, align 8
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@ENABLE_WAIT_L2_QUERY = common dso_local global i32 0, align 4
@MC_VM_L1_TLB_MCB_RD_SYS_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_WR_SYS_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_HDP_CNTL = common dso_local global i64 0, align 8
@ENABLE_L1_STRICT_ORDERING = common dso_local global i32 0, align 4
@MC_VM_L1_TLB_MCB_WR_HDP_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_RD_A_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_WR_A_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_RD_B_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCD_WR_B_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_GFX_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_WR_GFX_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_PDMA_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_WR_PDMA_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_UVD_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_WR_UVD_CNTL = common dso_local global i64 0, align 8
@MC_VM_L1_TLB_MCB_RD_SEM_CNTL = common dso_local global i64 0, align 8
@ENABLE_SEMAPHORE_MODE = common dso_local global i32 0, align 4
@MC_VM_L1_TLB_MCB_WR_SEM_CNTL = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %173

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %173

26:                                               ; preds = %19
  %27 = load i64, i64* @VM_L2_CNTL, align 8
  %28 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %29 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %34 = or i32 %32, %33
  %35 = call i32 @WREG32(i64 %27, i32 %34)
  %36 = load i64, i64* @VM_L2_CNTL2, align 8
  %37 = call i32 @WREG32(i64 %36, i32 0)
  %38 = load i64, i64* @VM_L2_CNTL3, align 8
  %39 = call i32 @BANK_SELECT_0(i32 0)
  %40 = call i32 @BANK_SELECT_1(i32 1)
  %41 = or i32 %39, %40
  %42 = call i32 @WREG32(i64 %38, i32 %41)
  %43 = load i32, i32* @ENABLE_L1_TLB, align 4
  %44 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %49 = or i32 %47, %48
  %50 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ENABLE_WAIT_L2_QUERY, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_SYS_CNTL, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @WREG32(i64 %54, i32 %55)
  %57 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_SYS_CNTL, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @WREG32(i64 %57, i32 %58)
  %60 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_HDP_CNTL, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @ENABLE_L1_STRICT_ORDERING, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @WREG32(i64 %60, i32 %63)
  %65 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_HDP_CNTL, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @WREG32(i64 %65, i32 %66)
  %68 = load i64, i64* @MC_VM_L1_TLB_MCD_RD_A_CNTL, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @WREG32(i64 %68, i32 %69)
  %71 = load i64, i64* @MC_VM_L1_TLB_MCD_WR_A_CNTL, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @WREG32(i64 %71, i32 %72)
  %74 = load i64, i64* @MC_VM_L1_TLB_MCD_RD_B_CNTL, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @WREG32(i64 %74, i32 %75)
  %77 = load i64, i64* @MC_VM_L1_TLB_MCD_WR_B_CNTL, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @WREG32(i64 %77, i32 %78)
  %80 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_GFX_CNTL, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @WREG32(i64 %80, i32 %81)
  %83 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_GFX_CNTL, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @WREG32(i64 %83, i32 %84)
  %86 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_PDMA_CNTL, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @WREG32(i64 %86, i32 %87)
  %89 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_PDMA_CNTL, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @WREG32(i64 %89, i32 %90)
  %92 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_UVD_CNTL, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @WREG32(i64 %92, i32 %93)
  %95 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_UVD_CNTL, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @WREG32(i64 %95, i32 %96)
  %98 = load i64, i64* @MC_VM_L1_TLB_MCB_RD_SEM_CNTL, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @ENABLE_SEMAPHORE_MODE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @WREG32(i64 %98, i32 %101)
  %103 = load i64, i64* @MC_VM_L1_TLB_MCB_WR_SEM_CNTL, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @ENABLE_SEMAPHORE_MODE, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @WREG32(i64 %103, i32 %106)
  %108 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 8
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = ashr i32 %112, 12
  %114 = call i32 @WREG32(i64 %108, i32 %113)
  %115 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 8
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 12
  %121 = call i32 @WREG32(i64 %115, i32 %120)
  %122 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %126, 12
  %128 = call i32 @WREG32(i64 %122, i32 %127)
  %129 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %130 = load i32, i32* @ENABLE_CONTEXT, align 4
  %131 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %132 = or i32 %130, %131
  %133 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @WREG32(i64 %129, i32 %134)
  %136 = load i64, i64* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 12
  %142 = call i32 @WREG32(i64 %136, i32 %141)
  store i32 1, i32* %6, align 4
  br label %143

143:                                              ; preds = %153, %26
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 7
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %148 = load i32, i32* %6, align 4
  %149 = mul nsw i32 %148, 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %147, %150
  %152 = call i32 @WREG32(i64 %151, i32 0)
  br label %153

153:                                              ; preds = %146
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %143

156:                                              ; preds = %143
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = call i32 @r600_pcie_gart_tlb_flush(%struct.radeon_device* %157)
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = ashr i32 %162, 20
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %163, i64 %168)
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %156, %24, %12
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT_0(i32) #1

declare dso_local i32 @BANK_SELECT_1(i32) #1

declare dso_local i32 @EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @r600_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
