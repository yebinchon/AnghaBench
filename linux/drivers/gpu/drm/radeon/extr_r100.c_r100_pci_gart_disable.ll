; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_pci_gart_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_pci_gart_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_AIC_CNTL = common dso_local global i32 0, align 4
@RADEON_DIS_OUT_OF_PCI_GART_ACCESS = common dso_local global i32 0, align 4
@RADEON_PCIGART_TRANSLATE_EN = common dso_local global i32 0, align 4
@RADEON_AIC_LO_ADDR = common dso_local global i32 0, align 4
@RADEON_AIC_HI_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_pci_gart_disable(%struct.radeon_device* %0) #0 {
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
  %10 = load i32, i32* @RADEON_PCIGART_TRANSLATE_EN, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = call i32 @WREG32(i32 %8, i32 %12)
  %14 = load i32, i32* @RADEON_AIC_LO_ADDR, align 4
  %15 = call i32 @WREG32(i32 %14, i32 0)
  %16 = load i32, i32* @RADEON_AIC_HI_ADDR, align 4
  %17 = call i32 @WREG32(i32 %16, i32 0)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
