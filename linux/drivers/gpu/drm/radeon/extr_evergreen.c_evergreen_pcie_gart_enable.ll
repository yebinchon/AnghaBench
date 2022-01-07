; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VM_L2_CNTL = common dso_local global i32 0, align 4
@ENABLE_L2_CACHE = common dso_local global i32 0, align 4
@ENABLE_L2_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE = common dso_local global i32 0, align 4
@VM_L2_CNTL2 = common dso_local global i32 0, align 4
@VM_L2_CNTL3 = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@ENABLE_L1_FRAGMENT_PROCESSING = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE_NOT_IN_SYS = common dso_local global i32 0, align 4
@SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@FUS_MC_VM_MD_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@FUS_MC_VM_MD_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@FUS_MC_VM_MD_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MD_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@CHIP_JUNIPER = common dso_local global i64 0, align 8
@CHIP_CYPRESS = common dso_local global i64 0, align 8
@CHIP_HEMLOCK = common dso_local global i64 0, align 8
@CHIP_BARTS = common dso_local global i64 0, align 8
@MC_VM_MD_L1_TLB3_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB0_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB1_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB2_CNTL = common dso_local global i32 0, align 4
@MC_VM_MB_L1_TLB3_CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT0_CNTL = common dso_local global i32 0, align 4
@ENABLE_CONTEXT = common dso_local global i32 0, align 4
@RANGE_PROTECTION_FAULT_ENABLE_DEFAULT = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT1_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @evergreen_pcie_gart_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evergreen_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %173

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
  br label %173

25:                                               ; preds = %18
  %26 = load i32, i32* @VM_L2_CNTL, align 4
  %27 = load i32, i32* @ENABLE_L2_CACHE, align 4
  %28 = load i32, i32* @ENABLE_L2_FRAGMENT_PROCESSING, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @EFFECTIVE_L2_QUEUE_SIZE(i32 7)
  %33 = or i32 %31, %32
  %34 = call i32 @WREG32(i32 %26, i32 %33)
  %35 = load i32, i32* @VM_L2_CNTL2, align 4
  %36 = call i32 @WREG32(i32 %35, i32 0)
  %37 = load i32, i32* @VM_L2_CNTL3, align 4
  %38 = call i32 @BANK_SELECT(i32 0)
  %39 = call i32 @CACHE_UPDATE_MODE(i32 2)
  %40 = or i32 %38, %39
  %41 = call i32 @WREG32(i32 %37, i32 %40)
  %42 = load i32, i32* @ENABLE_L1_TLB, align 4
  %43 = load i32, i32* @ENABLE_L1_FRAGMENT_PROCESSING, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SYSTEM_ACCESS_MODE_NOT_IN_SYS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @EFFECTIVE_L1_TLB_SIZE(i32 5)
  %50 = or i32 %48, %49
  %51 = call i32 @EFFECTIVE_L1_QUEUE_SIZE(i32 5)
  %52 = or i32 %50, %51
  store i32 %52, i32* %4, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @RADEON_IS_IGP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %25
  %60 = load i32, i32* @FUS_MC_VM_MD_L1_TLB0_CNTL, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  %63 = load i32, i32* @FUS_MC_VM_MD_L1_TLB1_CNTL, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  %66 = load i32, i32* @FUS_MC_VM_MD_L1_TLB2_CNTL, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  br label %107

69:                                               ; preds = %25
  %70 = load i32, i32* @MC_VM_MD_L1_TLB0_CNTL, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @WREG32(i32 %70, i32 %71)
  %73 = load i32, i32* @MC_VM_MD_L1_TLB1_CNTL, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @WREG32(i32 %73, i32 %74)
  %76 = load i32, i32* @MC_VM_MD_L1_TLB2_CNTL, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @WREG32(i32 %76, i32 %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHIP_JUNIPER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %102, label %84

84:                                               ; preds = %69
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHIP_CYPRESS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %84
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CHIP_HEMLOCK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CHIP_BARTS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %96, %90, %84, %69
  %103 = load i32, i32* @MC_VM_MD_L1_TLB3_CNTL, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @WREG32(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  br label %107

107:                                              ; preds = %106, %59
  %108 = load i32, i32* @MC_VM_MB_L1_TLB0_CNTL, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @WREG32(i32 %108, i32 %109)
  %111 = load i32, i32* @MC_VM_MB_L1_TLB1_CNTL, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @WREG32(i32 %111, i32 %112)
  %114 = load i32, i32* @MC_VM_MB_L1_TLB2_CNTL, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @WREG32(i32 %114, i32 %115)
  %117 = load i32, i32* @MC_VM_MB_L1_TLB3_CNTL, align 4
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @WREG32(i32 %117, i32 %118)
  %120 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR, align 4
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 12
  %126 = call i32 @WREG32(i32 %120, i32 %125)
  %127 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR, align 4
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 12
  %133 = call i32 @WREG32(i32 %127, i32 %132)
  %134 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %135 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %136 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = ashr i32 %138, 12
  %140 = call i32 @WREG32(i32 %134, i32 %139)
  %141 = load i32, i32* @VM_CONTEXT0_CNTL, align 4
  %142 = load i32, i32* @ENABLE_CONTEXT, align 4
  %143 = call i32 @PAGE_TABLE_DEPTH(i32 0)
  %144 = or i32 %142, %143
  %145 = load i32, i32* @RANGE_PROTECTION_FAULT_ENABLE_DEFAULT, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @WREG32(i32 %141, i32 %146)
  %148 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR, align 4
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 12
  %154 = call i32 @WREG32(i32 %148, i32 %153)
  %155 = load i32, i32* @VM_CONTEXT1_CNTL, align 4
  %156 = call i32 @WREG32(i32 %155, i32 0)
  %157 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %158 = call i32 @evergreen_pcie_gart_tlb_flush(%struct.radeon_device* %157)
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = ashr i32 %162, 20
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %163, i64 %168)
  %170 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %171 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %107, %23, %11
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @EFFECTIVE_L2_QUEUE_SIZE(i32) #1

declare dso_local i32 @BANK_SELECT(i32) #1

declare dso_local i32 @CACHE_UPDATE_MODE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_TLB_SIZE(i32) #1

declare dso_local i32 @EFFECTIVE_L1_QUEUE_SIZE(i32) #1

declare dso_local i32 @PAGE_TABLE_DEPTH(i32) #1

declare dso_local i32 @evergreen_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
