; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_enable_pll_sleep_in_l1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_enable_pll_sleep_in_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@PCIE_LC_CNTL = common dso_local global i32 0, align 4
@LC_L1_INACTIVITY_MASK = common dso_local global i32 0, align 4
@PCIE_P_CNTL = common dso_local global i32 0, align 4
@P_PLL_PWRDN_IN_L1L23 = common dso_local global i32 0, align 4
@P_PLL_BUF_PDNB = common dso_local global i32 0, align 4
@P_PLL_PDNB = common dso_local global i32 0, align 4
@P_ALLOW_PRX_FRONTEND_SHUTOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_enable_pll_sleep_in_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_enable_pll_sleep_in_l1(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @PCIE_LC_CNTL, align 4
  %5 = call i32 @RREG32_PCIE_PORT(i32 %4)
  %6 = load i32, i32* @LC_L1_INACTIVITY_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = call i32 @LC_L1_INACTIVITY(i32 8)
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @PCIE_LC_CNTL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @WREG32_PCIE_PORT(i32 %12, i32 %13)
  %15 = load i32, i32* @PCIE_P_CNTL, align 4
  %16 = call i32 @RREG32_PCIE(i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @P_PLL_PWRDN_IN_L1L23, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @P_PLL_BUF_PDNB, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @P_PLL_PDNB, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @P_ALLOW_PRX_FRONTEND_SHUTOFF, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @PCIE_P_CNTL, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @WREG32_PCIE(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @LC_L1_INACTIVITY(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @WREG32_PCIE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
