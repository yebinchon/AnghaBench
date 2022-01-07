; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
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
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@CHIP_RV740 = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB3_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB0_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB1_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB2_CNTL = common dso_local global i64 0, align 8
@MC_VM_MB_L1_TLB3_CNTL = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i64 0, align 8
@VM_CONTEXT0_CNTL = common dso_local global i64 0, align 8
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @rv770_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %150

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
  br label %150

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
  %39 = call i32 @BANK_SELECT(i32 0)
  %40 = call i32 @CACHE_UPDATE_MODE(i32 2)
  %41 = or i32 %39, %40
  %42 = call i32 @WREG32(i64 %38, i32 %41)
  %43 = load i32, i32* @ENABLE_L1_TLB, align 4
  %44 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %51 = or i32 %49, %50
  %52 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @MC_VM_MD_L1_TLB0_CNTL, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @WREG32(i64 %54, i32 %55)
  %57 = load i64, i64* @MC_VM_MD_L1_TLB1_CNTL, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @WREG32(i64 %57, i32 %58)
  %60 = load i64, i64* @MC_VM_MD_L1_TLB2_CNTL, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @WREG32(i64 %60, i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHIP_RV740, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %26
  %69 = load i64, i64* @MC_VM_MD_L1_TLB3_CNTL, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @WREG32(i64 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %26
  %73 = load i64, i64* @MC_VM_MB_L1_TLB0_CNTL, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @WREG32(i64 %73, i32 %74)
  %76 = load i64, i64* @MC_VM_MB_L1_TLB1_CNTL, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @WREG32(i64 %76, i32 %77)
  %79 = load i64, i64* @MC_VM_MB_L1_TLB2_CNTL, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @WREG32(i64 %79, i32 %80)
  %82 = load i64, i64* @MC_VM_MB_L1_TLB3_CNTL, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @WREG32(i64 %82, i32 %83)
  %85 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 8
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 12
  %91 = call i32 @WREG32(i64 %85, i32 %90)
  %92 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 8
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 12
  %98 = call i32 @WREG32(i64 %92, i32 %97)
  %99 = load i64, i64* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = ashr i32 %103, 12
  %105 = call i32 @WREG32(i64 %99, i32 %104)
  %106 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %107 = load i32, i32* @ENABLE_CONTEXT, align 4
  %108 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %109 = or i32 %107, %108
  %110 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @WREG32(i64 %106, i32 %111)
  %113 = load i64, i64* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 8
  %114 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 12
  %119 = call i32 @WREG32(i64 %113, i32 %118)
  store i32 1, i32* %6, align 4
  br label %120

120:                                              ; preds = %130, %72
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 7
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i64, i64* @VM_CONTEXT0_CNTL, align 8
  %125 = load i32, i32* %6, align 4
  %126 = mul nsw i32 %125, 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %124, %127
  %129 = call i32 @WREG32(i64 %128, i32 0)
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %120

133:                                              ; preds = %120
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = call i32 @r600_pcie_gart_tlb_flush(%struct.radeon_device* %134)
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = ashr i32 %139, 20
  %141 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %142 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %140, i64 %145)
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  store i32 1, i32* %149, align 4
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %133, %24, %12
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT(i32) #1

declare dso_local i32 @CACHE_UPDATE_MODE(i32) #1

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
