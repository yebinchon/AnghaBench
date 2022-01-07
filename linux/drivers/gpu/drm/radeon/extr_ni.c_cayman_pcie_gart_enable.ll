; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
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
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cayman_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cayman_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %197

18:                                               ; preds = %1
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %197

25:                                               ; preds = %18
  %26 = load i32, i32* @MC_VM_MX_L1_TLB_CNTL, align 4
  %27 = load i32, i32* @ENABLE_L1_TLB, align 4
  %28 = or i32 1280, %27
  %29 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ENABLE_ADVANCED_DRIVER_MODEL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @WREG32(i32 %26, i32 %36)
  %38 = load i32, i32* @VM_L2_CNTL, align 4
  %39 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %40 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %47 = or i32 %45, %46
  %48 = call i32 @CONTEXT1_IDENTITY_ACCESS_MODE(i32 1)
  %49 = or i32 %47, %48
  %50 = call i32 @WREG32(i32 %38, i32 %49)
  %51 = load i32, i32* @VM_L2_CNTL2, align 4
  %52 = load i32, i32* @INVALIDATE_ALL_L1_TLBS, align 4
  %53 = load i32, i32* @INVALIDATE_L2_CACHE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @WREG32(i32 %51, i32 %54)
  %56 = load i32, i32* @VM_L2_CNTL3, align 4
  %57 = load i32, i32* @L2_CACHE_BIGK_ASSOCIATIVITY, align 4
  %58 = call i32 @BANK_SELECT(i32 6)
  %59 = or i32 %57, %58
  %60 = call i32 @L2_CACHE_BIGK_FRAGMENT_SIZE(i32 6)
  %61 = or i32 %59, %60
  %62 = call i32 @WREG32(i32 %56, i32 %61)
  %63 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 12
  %69 = call i32 @WREG32(i32 %63, i32 %68)
  %70 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 12
  %76 = call i32 @WREG32(i32 %70, i32 %75)
  %77 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 12
  %83 = call i32 @WREG32(i32 %77, i32 %82)
  %84 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = ashr i32 %88, 12
  %90 = call i32 @WREG32(i32 %84, i32 %89)
  %91 = load i32, i32* @VM_CONTEXT0_CNTL2, align 4
  %92 = call i32 @WREG32(i32 %91, i32 0)
  %93 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %94 = load i32, i32* @ENABLE_CONTEXT, align 4
  %95 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @WREG32(i32 %93, i32 %98)
  %100 = call i32 @WREG32(i32 5588, i32 0)
  %101 = call i32 @WREG32(i32 5592, i32 0)
  %102 = call i32 @WREG32(i32 5596, i32 0)
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %135, %25
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 8
  br i1 %105, label %106, label %138

106:                                              ; preds = %103
  %107 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %108 = load i32, i32* %4, align 4
  %109 = shl i32 %108, 2
  %110 = add nsw i32 %107, %109
  %111 = call i32 @WREG32(i32 %110, i32 0)
  %112 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %113 = load i32, i32* %4, align 4
  %114 = shl i32 %113, 2
  %115 = add nsw i32 %112, %114
  %116 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %117 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @WREG32(i32 %115, i32 %120)
  %122 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %123 = load i32, i32* %4, align 4
  %124 = shl i32 %123, 2
  %125 = add nsw i32 %122, %124
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @WREG32(i32 %125, i32 %133)
  br label %135

135:                                              ; preds = %106
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %103

138:                                              ; preds = %103
  %139 = load i32, i32* @VM_CONTEXT1_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 12
  %145 = call i32 @WREG32(i32 %139, i32 %144)
  %146 = load i32, i32* @VM_CONTEXT1_CNTL2, align 4
  %147 = call i32 @WREG32(i32 %146, i32 4)
  %148 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %149 = load i32, i32* @ENABLE_CONTEXT, align 4
  %150 = call i32 @PAGE_TABLE_DEPTH(i32 1)
  %151 = or i32 %149, %150
  %152 = load i64, i64* @radeon_vm_block_size, align 8
  %153 = sub nsw i64 %152, 9
  %154 = call i32 @PAGE_TABLE_BLOCK_SIZE(i64 %153)
  %155 = or i32 %151, %154
  %156 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @DUMMY_PAGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @PDE0_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @VALID_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @READ_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @WRITE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @WREG32(i32 %148, i32 %179)
  %181 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %182 = call i32 @cayman_pcie_gart_tlb_flush(%struct.radeon_device* %181)
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = ashr i32 %186, 20
  %188 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %189 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %187, i64 %192)
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  store i32 1, i32* %196, align 4
  store i32 0, i32* %2, align 4
  br label %197

197:                                              ; preds = %138, %23, %11
  %198 = load i32, i32* %2, align 4
  ret i32 %198
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

declare dso_local i32 @cayman_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
