; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_pci_gart_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_pci_gart_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@RADEON_AIC_CNTL = common dso_local global i32 0, align 4
@RADEON_DIS_OUT_OF_PCI_GART_ACCESS = common dso_local global i32 0, align 4
@RADEON_AIC_LO_ADDR = common dso_local global i32 0, align 4
@RADEON_AIC_HI_ADDR = common dso_local global i32 0, align 4
@RADEON_AIC_PT_BASE = common dso_local global i32 0, align 4
@RADEON_PCIGART_TRANSLATE_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"PCI GART of %uM enabled (table at 0x%016llX).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_pci_gart_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %5 = call i32 @RREG32(i32 %4)
  %6 = load i32, i32* @RADEON_DIS_OUT_OF_PCI_GART_ACCESS, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @WREG32(i32 %8, i32 %9)
  %11 = load i32, i32* @RADEON_AIC_LO_ADDR, align 4
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @WREG32(i32 %11, i32 %15)
  %17 = load i32, i32* @RADEON_AIC_HI_ADDR, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @WREG32(i32 %17, i32 %21)
  %23 = load i32, i32* @RADEON_AIC_PT_BASE, align 4
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @WREG32(i32 %23, i32 %27)
  %29 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %30 = call i32 @RREG32(i32 %29)
  %31 = load i32, i32* @RADEON_PCIGART_TRANSLATE_EN, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @RADEON_AIC_CNTL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @WREG32(i32 %33, i32 %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %37 = call i32 @r100_pci_gart_tlb_flush(%struct.radeon_device* %36)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 20
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  ret i32 0
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @r100_pci_gart_tlb_flush(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
