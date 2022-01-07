; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_pcie_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_rv370_pcie_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"No VRAM object for PCIE GART.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_CNTL = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_START_LO = common dso_local global i32 0, align 4
@RADEON_GPU_PAGE_MASK = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_END_LO = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_START_HI = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_END_HI = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_BASE = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_DISCARD_RD_ADDR_LO = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_DISCARD_RD_ADDR_HI = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_ERROR = common dso_local global i32 0, align 4
@RADEON_PCIE_TX_GART_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"PCIE GART of %uM enabled (table at 0x%016llX).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv370_pcie_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %92

19:                                               ; preds = %1
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @radeon_gart_table_vram_pin(%struct.radeon_device* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %92

26:                                               ; preds = %19
  %27 = load i32, i32* @RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @WREG32_PCIE(i32 %28, i32 %29)
  %31 = load i32, i32* @RADEON_PCIE_TX_GART_START_LO, align 4
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @WREG32_PCIE(i32 %31, i32 %35)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RADEON_GPU_PAGE_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @RADEON_PCIE_TX_GART_END_LO, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WREG32_PCIE(i32 %44, i32 %45)
  %47 = load i32, i32* @RADEON_PCIE_TX_GART_START_HI, align 4
  %48 = call i32 @WREG32_PCIE(i32 %47, i32 0)
  %49 = load i32, i32* @RADEON_PCIE_TX_GART_END_HI, align 4
  %50 = call i32 @WREG32_PCIE(i32 %49, i32 0)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @RADEON_PCIE_TX_GART_BASE, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @WREG32_PCIE(i32 %55, i32 %56)
  %58 = load i32, i32* @RADEON_PCIE_TX_DISCARD_RD_ADDR_LO, align 4
  %59 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %60 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @WREG32_PCIE(i32 %58, i32 %62)
  %64 = load i32, i32* @RADEON_PCIE_TX_DISCARD_RD_ADDR_HI, align 4
  %65 = call i32 @WREG32_PCIE(i32 %64, i32 0)
  %66 = load i32, i32* @RADEON_PCIE_TX_GART_ERROR, align 4
  %67 = call i32 @WREG32_PCIE(i32 %66, i32 0)
  %68 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %69 = call i32 @RREG32_PCIE(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @RADEON_PCIE_TX_GART_EN, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @RADEON_PCIE_TX_GART_UNMAPPED_ACCESS_DISCARD, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @RADEON_PCIE_TX_GART_CNTL, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @WREG32_PCIE(i32 %76, i32 %77)
  %79 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %80 = call i32 @rv370_pcie_gart_tlb_flush(%struct.radeon_device* %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 20
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = call i32 @DRM_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %85, i64 %87)
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %26, %24, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @radeon_gart_table_vram_pin(%struct.radeon_device*) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @rv370_pcie_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
